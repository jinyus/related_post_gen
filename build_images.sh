#!/usr/bin/env bash
#
# build_images.sh - build the benchmark images on a disposable Scaleway instance,
# and optionally push them to the GitHub container registry.
#
#   ./build_images.sh                  # create a builder, build every image, KEEP it
#   ./build_images.sh --images go,rust,zig
#   ./build_images.sh --wait           # ... and follow the build until it ends
#   ./build_images.sh --push           # reuse that builder: push to GHCR, then DESTROY it
#   ./build_images.sh --status|--logs|--destroy
#
# Two phases on purpose: building is the part that breaks after a Dockerfile
# edit, so you can iterate (build, read logs, fix, rebuild) with the instance
# alive, and only then spend the upload bandwidth with --push.
#
# Why not Cloudflare: Workers Containers run your image inside a Worker, they are
# not a machine you can log into, and they cannot start a docker/buildkit daemon
# (no nested containers, no privileged mode, ephemeral filesystem), so they
# cannot build images. Any provider that gives you a root shell works.
#
# Options:
#   --type <name>        builder instance type (default BASIC3-X8C-32G, 8c/32GB, ~EUR 0.23/h)
#   --zone <zone>        default: the configured zone if the type is available there
#   --jobs <n>           parallel docker builds (default 4; keep <= vCPUs/2)
#   --images "a,b,c"     images to build (default: every dockerfile)
#   --push               push the built images with ghcr_images.sh, then destroy
#   --keep               do not destroy the instance after --push
#   --wait               follow the build/push until it finishes
#   --timeout <minutes>  wait for delivery/ssh (default 20)
#   --dry-run            print the plan without creating anything
#   --status / --logs / --destroy
#
# Requirements: scw (authenticated), ssh, an SSH key, and for --push a token with
# write:packages in GHCR_TOKEN (or GITHUB_TOKEN): the instance uploads with it.
#
#   gh auth refresh -h github.com -s write:packages,read:packages
#   GHCR_TOKEN=$(gh auth token) ./build_images.sh --push

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STATE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/related-post-gen"
STATE_FILE="$STATE_DIR/builder.env"
REMOTE_BASE="/opt/image-build"
REMOTE_REPO="$REMOTE_BASE/repo"
REMOTE_LOG="$REMOTE_BASE/build.log"
REMOTE_DONE="$REMOTE_BASE/builder.done"
REMOTE_SCRIPT="$REMOTE_BASE/build.sh"
REMOTE_PUSH="$REMOTE_BASE/push.sh"
SSH_KEY="${SSH_KEY:-$HOME/.ssh/id_rsa}"

TYPE="BASIC3-X8C-32G"
ZONE=""
JOBS=4
IMAGES=""
PUSH=0
KEEP=0
WAIT=0
TIMEOUT_MIN=20
DRY_RUN=0
CMD="build"
SCRIPT_NAME="$(basename "$0")"

die() {
    printf 'Error: %s\n' "$*" >&2
    exit 1
}
warn() { printf 'Warning: %s\n' "$*" >&2; }
info() { printf '%s\n' "$*"; }
step() { printf '\n=== %s ===\n' "$*"; }

usage() { awk 'NR > 2 && /^#/ { sub(/^# ?/, ""); print; next } NR > 2 { exit }' "$0"; }

# ---------------------------------------------------------------------------
# scw helpers (same patterns as scaleway_bench.sh)
# ---------------------------------------------------------------------------
SC_ERR="$(mktemp)"
trap 'rm -f "$SC_ERR"' EXIT

sc() {
    local err out
    err="$(mktemp)"
    if ! out="$(scw "$@" -o json 2>"$err")"; then
        printf 'Error: scw %s failed: %s\n' "$*" "$(tr '\n' ' ' <"$err")" >&2
        rm -f "$err"
        return 1
    fi
    rm -f "$err"
    printf '%s\n' "$out"
}

as_list() { jq -r 'if type == "array" then . else ([.[] | select(type == "array")] | first) end'; }

load_state() {
    [ -f "$STATE_FILE" ] && . "$STATE_FILE"
    return 0
}

save_state() {
    mkdir -p "$STATE_DIR"
    cat >"$STATE_FILE" <<EOF
SERVER_ID=$SERVER_ID
SERVER_IP=$SERVER_IP
SERVER_ZONE=$ZONE
SERVER_TYPE=$TYPE
SSH_USER=$SSH_USER
REMOTE_SUDO=$REMOTE_SUDO
JOBS=$JOBS
IMAGES=$(printf '%q' "$IMAGES")
EOF
}

ssh_run() {
    local user="$1" ip="$2" cmd="$3"
    if [ "$REMOTE_SUDO" = "1" ]; then
        ssh -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 -o BatchMode=yes \
            -i "$SSH_KEY" "$user@$ip" "sudo -n bash -c $(printf '%q' "$cmd")"
    else
        ssh -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 -o BatchMode=yes \
            -i "$SSH_KEY" "$user@$ip" "$cmd"
    fi
}

ssh_script() { # ssh_script <user> <ip> < script
    local user="$1" ip="$2"
    if [ "$REMOTE_SUDO" = "1" ]; then
        ssh -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 -o BatchMode=yes \
            -i "$SSH_KEY" "$user@$ip" 'sudo -n bash -s'
    else
        ssh -o StrictHostKeyChecking=accept-new -o ConnectTimeout=10 -o BatchMode=yes \
            -i "$SSH_KEY" "$user@$ip" 'bash -s'
    fi
}

ssh_probe() {
    timeout 20 ssh -o StrictHostKeyChecking=accept-new -o ConnectTimeout=8 -o BatchMode=yes \
        -i "$SSH_KEY" "$1@$2" true >/dev/null 2>&1
}

all_images() {
    local f
    for f in "$REPO_DIR"/dockerfiles/*.Dockerfile; do basename "$f" .Dockerfile; done
}

# ---------------------------------------------------------------------------
# create + provision
# ---------------------------------------------------------------------------
create_builder() {
    step "Creating a builder ($TYPE)"

    local plan zones=() z meta chosen="" cpu ram
    plan="$(sc instance server-type list | as_list)"
    meta="$(jq -c --arg t "$TYPE" '[ .[] | select(.name == $t) ][0] // empty' <<<"$plan")"
    [ -n "$meta" ] && [ "$meta" != "null" ] || die "unknown instance type '$TYPE'"
    cpu="$(jq -r '.cpu' <<<"$meta")"
    ram="$(jq -r '(.ram / 1073741824) | floor' <<<"$meta")"
    jq -e '.availability == "available"' <<<"$meta" >/dev/null ||
        warn "$TYPE is '$(jq -r '.availability' <<<"$meta")' in the default zone"

    if [ -n "$ZONE" ]; then
        zones=("$ZONE")
    else
        local configured
        configured="$(scw config get default-zone 2>/dev/null || true)"
        [ -n "$configured" ] && zones+=("$configured")
        for z in fr-par-1 fr-par-2 nl-ams-1 nl-ams-2 pl-waw-2 pl-waw-3; do
            [ "$z" = "${configured:-}" ] || zones+=("$z")
        done
    fi
    for z in "${zones[@]}"; do
        if sc instance server-type list zone="$z" | as_list |
            jq -e --arg t "$TYPE" '.[] | select(.name == $t and .availability == "available")' >/dev/null 2>&1; then
            chosen="$z"
            break
        fi
    done
    [ -n "$chosen" ] || die "$TYPE is not available in: ${zones[*]} (try --type/--zone)"
    ZONE="$chosen"

    info "type:  $TYPE (${cpu}c / ${ram}GB)"
    info "zone:  $ZONE"
    info "jobs:  $JOBS"
    info "images: ${IMAGES:-all}"

    if [ "$DRY_RUN" = 1 ]; then
        info "[dry-run] scw instance server create image=ubuntu_noble type=$TYPE zone=$ZONE name=image-builder"
        return 1
    fi

    SERVER_ID="$(sc instance server create image=ubuntu_noble type="$TYPE" zone="$ZONE" \
        name="image-builder" ip=new | jq -r '(.server // .) | .id // empty')"
    [ -n "$SERVER_ID" ] || die "could not create the instance"
    SSH_USER="ubuntu"
    REMOTE_SUDO=1
    save_state
    info "instance $SERVER_ID created"
}

wait_for_builder() {
    step "Waiting for the instance (a minute or two)"
    local deadline=$((SECONDS + TIMEOUT_MIN * 60)) raw state ip
    while :; do
        raw="$(sc instance server get "$SERVER_ID" zone="$ZONE" 2>/dev/null || true)"
        state="$(jq -r '(.server // .) | .status // "unknown"' <<<"${raw:-null}" 2>/dev/null || echo unknown)"
        ip="$(jq -r '([ (.server // .).public_ips[]? | select(.version == "IPv4") | .address ] | .[0]) // ""' \
            <<<"${raw:-null}" 2>/dev/null || echo "")"
        if [ "$state" = "running" ] && [ -n "$ip" ]; then
            SERVER_IP="$ip"
            break
        fi
        [ "$SECONDS" -lt "$deadline" ] || die "timed out waiting for $SERVER_ID (status: $state)"
        printf '  %s status=%s ip=%s\n' "$(date +%H:%M:%S)" "$state" "${ip:-none}"
        sleep 10
    done
    save_state
    step "Waiting for ssh"
    deadline=$((SECONDS + TIMEOUT_MIN * 60))
    while :; do
        ssh_probe "$SSH_USER" "$SERVER_IP" && break
        [ "$SECONDS" -lt "$deadline" ] || die "timed out waiting for ssh on $SERVER_IP"
        sleep 10
    done
    info "ready: $SERVER_IP"
}

provision_builder() {
    step "Installing docker and cloning the repository"

    ssh_script "$SSH_USER" "$SERVER_IP" <<SETUP
set -euo pipefail
export DEBIAN_FRONTEND=noninteractive
echo "--- packages ---"
apt-get update -y
apt-get install -y --no-install-recommends ca-certificates curl git tmux jq
if ! command -v docker >/dev/null 2>&1; then
    echo "--- docker ---"
    curl -fsSL https://get.docker.com | sh
fi
systemctl enable --now docker
docker info >/dev/null

echo "--- repository ---"
mkdir -p $REMOTE_BASE
if [ ! -d "$REMOTE_REPO/.git" ]; then
    git clone --branch main https://github.com/zupat/related_post_gen.git "$REMOTE_REPO"
fi
cd "$REMOTE_REPO" && git pull --ff-only
SETUP
    info "provisioned"
}

# ---------------------------------------------------------------------------
# build phase
# ---------------------------------------------------------------------------
write_build_script() {
    local list
    list="$(printf '%s\n' $IMAGES)"
    ssh_script "$SSH_USER" "$SERVER_IP" <<BUILD
set -euo pipefail
cat >$REMOTE_SCRIPT <<'SCRIPT'
#!/usr/bin/env bash
# generated by build_images.sh
cd $REMOTE_REPO
mkdir -p $REMOTE_BASE/logs
: > $REMOTE_LOG
names=(
$(printf '%s\n' $list | sed 's/.*/  &/')
)
echo "building \${#names[@]} image(s), $JOBS at a time, on \$(nproc) cpus"
printf '%s\\n' "\${names[@]}" | xargs -P $JOBS -I{} bash -c '
    name="{}"
    log="$REMOTE_BASE/logs/\$name.log"
    if ./gen_dockerfile.sh -b "\$name" >"\$log" 2>&1; then
        echo "OK   \$name"
    else
        echo "FAIL \$name  (tail of logs/\$name.log)"
    fi
' | tee -a $REMOTE_LOG
ok=\$(grep -c '^OK ' $REMOTE_LOG || true)
bad=\$(grep -c '^FAIL ' $REMOTE_LOG || true)
{
    echo "built:  \$ok"
    echo "failed: \$bad"
    echo "finished: \$(date -u)"
} > $REMOTE_DONE
docker images --format '{{.Repository}} {{.Size}}' --filter 'reference=*_databench' \\
    | sort > $REMOTE_BASE/sizes.txt
echo "done: \$ok built, \$bad failed"
SCRIPT
chmod +x $REMOTE_SCRIPT
BUILD
}

start_build() {
    step "Starting the build in tmux"
    ssh_run "$SSH_USER" "$SERVER_IP" "
        tmux kill-session -t build 2>/dev/null || true
        rm -f $REMOTE_DONE
        tmux new-session -d -s build \"bash -lc '$REMOTE_SCRIPT; exec bash'\"
        tmux set-option -t build remain-on-exit on
        tmux list-sessions
    "
}

wait_for_done() {
    step "Following the build (Ctrl-C is safe: it keeps running in tmux)"
    local last=""
    while :; do
        last="$(ssh_run "$SSH_USER" "$SERVER_IP" "tail -1 $REMOTE_LOG 2>/dev/null || true")"
        [ -n "$last" ] && printf '  %s %s\n' "$(date +%H:%M:%S)" "$last"
        if ssh_run "$SSH_USER" "$SERVER_IP" "test -f $REMOTE_DONE"; then
            info ""
            ssh_run "$SSH_USER" "$SERVER_IP" "cat $REMOTE_DONE"
            return 0
        fi
        sleep 30
    done
}

report_sizes() {
    step "Images on the builder"
    ssh_run "$SSH_USER" "$SERVER_IP" "cat $REMOTE_BASE/sizes.txt 2>/dev/null || docker images --format '{{.Repository}} {{.Size}}'" ||
        true
}

# ---------------------------------------------------------------------------
# push phase
# ---------------------------------------------------------------------------
write_push_script() {
    local list token user
    token="${GHCR_TOKEN:-${GITHUB_TOKEN:-}}"
    if [ -z "$token" ]; then
        token="$(gh auth token 2>/dev/null || true)"
    fi
    [ -n "$token" ] || die "pushing needs a token with write:packages (export GHCR_TOKEN=...)"
    user="${GHCR_USER:-$(gh api user -q .login 2>/dev/null || true)}"
    [ -n "$user" ] || die "could not determine the GitHub user (set GHCR_USER=...)"

    list="$(printf '%s\n' $IMAGES)"
    ssh_script "$SSH_USER" "$SERVER_IP" <<PUSH
set -euo pipefail
cat >$REMOTE_PUSH <<'SCRIPT'
#!/usr/bin/env bash
# generated by build_images.sh
set -uo pipefail
cd $REMOTE_REPO
: > $REMOTE_BASE/push.log
names=(
$(printf '%s\n' $list | sed 's/.*/  &/')
)
ok=0; bad=0
for name in "\${names[@]}"; do
    if ./ghcr_images.sh push --no-build "\$name" >>$REMOTE_BASE/push.log 2>&1; then
        echo "PUSHED \$name" | tee -a $REMOTE_BASE/push.log
        ok=\$((ok+1))
    else
        echo "PUSH-FAILED \$name" | tee -a $REMOTE_BASE/push.log
        bad=\$((bad+1))
    fi
done
{
    echo "pushed: \$ok"
    echo "failed: \$bad"
    echo "finished: \$(date -u)"
} > $REMOTE_DONE
echo "push done: \$ok pushed, \$bad failed"
SCRIPT
chmod +x $REMOTE_PUSH
printf '%s' $token | docker login ghcr.io -u '$user' --password-stdin >/dev/null
PUSH
}

start_push() {
    step "Pushing to the registry in tmux"
    ssh_run "$SSH_USER" "$SERVER_IP" "
        tmux kill-session -t build 2>/dev/null || true
        rm -f $REMOTE_DONE
        tmux new-session -d -s build \"bash -lc '$REMOTE_PUSH; exec bash'\"
        tmux set-option -t build remain-on-exit on
        tmux list-sessions
    "
    step "Following the push"
    while :; do
        if ssh_run "$SSH_USER" "$SERVER_IP" "test -f $REMOTE_DONE"; then
            ssh_run "$SSH_USER" "$SERVER_IP" "cat $REMOTE_DONE"
            return 0
        fi
        printf '  %s %s\n' "$(date +%H:%M:%S)" \
            "$(ssh_run "$SSH_USER" "$SERVER_IP" "tail -1 $REMOTE_BASE/push.log 2>/dev/null || echo waiting")"
        sleep 20
    done
}

destroy_builder() {
    step "Destroying $SERVER_ID"
    sc instance server delete "$SERVER_ID" zone="$ZONE" with-volumes=all with-ip >/dev/null || {
        warn "delete failed - check the console"
        return 1
    }
    rm -f "$STATE_FILE"
    info "destroyed"
}

# ---------------------------------------------------------------------------
# main
# ---------------------------------------------------------------------------
while [ $# -gt 0 ]; do
    case "$1" in
    --type) TYPE="$2"; shift 2 ;;
    --zone) ZONE="$2"; shift 2 ;;
    --jobs) JOBS="$2"; shift 2 ;;
    --images) IMAGES="${2//,/ }"; shift 2 ;;
    --push) PUSH=1; shift ;;
    --keep) KEEP=1; shift ;;
    --wait) WAIT=1; shift ;;
    --timeout) TIMEOUT_MIN="$2"; shift 2 ;;
    --dry-run) DRY_RUN=1; shift ;;
    --status) CMD=status; shift ;;
    --logs) CMD=logs; shift ;;
    --destroy) CMD=destroy; shift ;;
    -h | --help) usage; exit 0 ;;
    *) die "unknown argument '$1' (try --help)" ;;
    esac
done

command -v scw >/dev/null 2>&1 || die "scw is required"
command -v jq >/dev/null 2>&1 || die "jq is required"
command -v ssh >/dev/null 2>&1 || die "ssh is required"

if [ -z "$IMAGES" ]; then
    IMAGES="$(all_images | tr '\n' ' ')"
fi
for n in $IMAGES; do
    [ -f "$REPO_DIR/dockerfiles/$n.Dockerfile" ] ||
        die "unknown image '$n' (available: $(all_images | tr '\n' ' '))"
done

SERVER_ID=""
SERVER_IP=""
SSH_USER="ubuntu"
REMOTE_SUDO=1
load_state

case "$CMD" in
status)
    [ -n "${SERVER_ID:-}" ] || die "no builder in $STATE_FILE"
    info "builder: $SERVER_ID ($SERVER_IP, $ZONE, $TYPE, jobs=$JOBS)"
    ssh_run "$SSH_USER" "$SERVER_IP" "
        echo '--- tmux ---'; tmux list-sessions 2>/dev/null || echo 'no session'
        echo '--- done ---'; cat $REMOTE_DONE 2>/dev/null || echo 'still running'
        echo '--- last log ---'; tail -5 $REMOTE_LOG 2>/dev/null || true
        echo '--- sizes ---'; cat $REMOTE_BASE/sizes.txt 2>/dev/null || true
    "
    exit 0
    ;;
logs)
    [ -n "${SERVER_ID:-}" ] || die "no builder in $STATE_FILE"
    exec ssh -t -o StrictHostKeyChecking=accept-new -i "$SSH_KEY" "$SSH_USER@$SERVER_IP" \
        "sudo -n tail -f $REMOTE_LOG"
    ;;
destroy)
    [ -n "${SERVER_ID:-}" ] || die "no builder in $STATE_FILE"
    destroy_builder
    exit 0
    ;;
build)
    if [ -n "${SERVER_ID:-}" ]; then
        step "Reusing builder $SERVER_ID ($SERVER_IP)"
        ssh_run "$SSH_USER" "$SERVER_IP" "cd $REMOTE_REPO && git pull --ff-only" >/dev/null || true
    else
        create_builder || exit 0 # --dry-run returns here
        wait_for_builder
        provision_builder
    fi
    write_build_script
    start_build
    if [ "$WAIT" = 1 ]; then wait_for_done; fi
    report_sizes
    step "Built on $SERVER_IP (kept)"
    cat <<EOF

Check the results:   ./$SCRIPT_NAME --status
Follow the build:    ./$SCRIPT_NAME --logs
Retry failures:      ./$SCRIPT_NAME --images <name>,<name>
Push + destroy:      ./$SCRIPT_NAME --push
Throw it away:       ./$SCRIPT_NAME --destroy
EOF
    exit 0
    ;;
esac

# --push: reuse the tracked builder (or create + build first), then destroy
if [ -z "${SERVER_ID:-}" ]; then
    warn "no builder tracked - creating one and building first"
    create_builder || exit 0
    wait_for_builder
    provision_builder
    write_build_script
    start_build
    wait_for_done
fi

write_push_script
start_push
if [ "$KEEP" = 1 ]; then
    step "Keeping $SERVER_ID ($SERVER_IP)"
    info "destroy it later with: ./$SCRIPT_NAME --destroy"
else
    destroy_builder
fi
