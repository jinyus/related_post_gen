#!/usr/bin/env bash
#
# vultr_bench.sh - provision a Vultr instance, set it up and run the benchmark
# on it inside tmux, so the run survives disconnects.
#
# Commands (default: run):
#   run           create the instance (if needed), set it up, start the benchmark
#   attach        ssh in and attach to the tmux session ("bench")
#   status        one-shot: tmux state, bench.done, last log lines
#   logs          tail -f the benchmark log
#   wait          block until the run finishes and print the pull request
#   list          list the servers in the account (to spot leftovers)
#   destroy       delete the instance and forget it locally
#
# Options:
#   --plan <id>           default vbm-4c-32gb (bare metal, 4c/32GB)
#   --region <id>         default: first location the plan offers
#   --os-id <id>          default: newest Ubuntu LTS from "os list"
#   --repo <url>          default: the origin of this checkout
#   --branch <name>       default main
#   --device <label>      machine label for the PR + readme (derived by default)
#   --label <name>        Vultr label (default related-post-gen-bench)
#   --ssh-key <path>      private key, default ~/.ssh/id_rsa; its .pub is uploaded
#   --update-args "<a b>" extra arguments for update_results.sh, eg.
#                         "--tests go,go_ho" or "--skip-existing"
#   --no-label-sync       do not touch the readme's "VM Specs" line
#   --timeout <minutes>   provisioning + ssh wait timeout (default 45)
#   --wait                stay until the benchmark finishes
#   --destroy-when-done   with --wait: delete the instance afterwards
#   --force               recreate/restart even if one is already tracked/running
#   --dry-run             print the create command and stop
#
# Requirements: vultr-cli, jq and ssh locally, an SSH key, and Vultr
# credentials - either VULTR_API_KEY in the environment (eg. after
# "source ~/.env") or a vultr-cli config file (~/.vultr-cli.yaml).
#
# Examples:
#   source ~/.env && export PATH="$PATH:$HOME/programs/bin"
#   ./vultr_bench.sh                                   # all tests
#   ./vultr_bench.sh --update-args "--tests go,go_ho"  # quick subset
#   ./vultr_bench.sh status                            # how is it going?
#   ./vultr_bench.sh --wait --destroy-when-done        # wait for the PR, clean up
#
# The instance is billed while it exists (~$0.164/h for vbm-4c-32gb), so run
# "destroy" (or use --destroy-when-done) once the PR is open.

set -euo pipefail

PLAN="vbm-4c-32gb"
REGION=""
OS_ID=""
REPO_URL=""
BRANCH="main"
DEVICE_LABEL=""
DEVICE_LABEL_ARG=""
LABEL="related-post-gen-bench"
SSH_KEY="$HOME/.ssh/id_rsa"
UPDATE_ARGS=""
LABEL_SYNC=1
WAIT=0
DESTROY_WHEN_DONE=0
TIMEOUT_MIN=45
FORCE=0
DRY_RUN=0
CMD="run"

STATE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/related-post-gen"
STATE_FILE="$STATE_DIR/vultr-bench.env"
VC_ERR_FILE="$(mktemp)"
trap 'rm -f "$VC_ERR_FILE"' EXIT

# where the benchmark lives on the instance (absolute, so it does not depend on
# which user we end up logging in as)
REMOTE_BASE="/opt/related-post-gen-bench"
REMOTE_REPO="$REMOTE_BASE/repo"
REMOTE_SCRIPT="$REMOTE_BASE/run-bench.sh"
REMOTE_LOG="$REMOTE_BASE/bench.log"
REMOTE_DONE="$REMOTE_BASE/bench.done"

# ---------------------------------------------------------------------------
# helpers
# ---------------------------------------------------------------------------
die() {
    printf 'Error: %s\n' "$*" >&2
    exit 1
}
warn() { printf 'Warning: %s\n' "$*" >&2; }
info() { printf '%s\n' "$*"; }
step() { printf '\n=== %s ===\n' "$*"; }
need() { command -v "$1" >/dev/null 2>&1 || die "$1 is required but not installed"; }

usage() {
    # print the header comment block (everything after the shebang)
    awk 'NR > 2 && /^#/ { sub(/^# ?/, ""); print; next } NR > 2 { exit }' "$0"
}

# ---------------------------------------------------------------------------
# vultr-cli
#
# Everything goes through "vultr-cli <command> -o json". The CLI prints
# whatever the API returned, so some responses are wrapped ({"plans_metal": []},
# {"Meta": .., "ssh_keys": []}) and others are bare arrays/objects - the two
# jq helpers below normalise both.
# ---------------------------------------------------------------------------
JQ_LIST='def list: if type == "object" then ([.[] | select(type == "array")] | first) else . end;'

# the entity object: the wrapper value that actually has an id, or the object
JQ_ITEM='def item: if type == "object" and (has("id") | not)
          then ([.[] | select(type == "object" and has("id"))] | first) else . end;'

vc() { # vc <args...> -> JSON on stdout; the CLI's error goes to stderr
    local err out
    err="$(mktemp)"
    if ! out="$(vultr-cli "$@" -o json 2>"$err")"; then
        printf 'Error: vultr-cli %s failed: %s\n' "$*" "$(tr '\n' ' ' <"$err")" >&2
        rm -f "$err"
        return 1
    fi
    rm -f "$err"
    printf '%s\n' "$out"
}

# Same as vc, but usable when the caller has to inspect the error (creates):
# runs in this shell, so $LAST_OUT and $VC_ERROR survive.
vc_try() {
    if LAST_OUT="$(vultr-cli "$@" -o json 2>"$VC_ERR_FILE")"; then
        VC_ERROR=""
        return 0
    fi
    VC_ERROR="$(tr '\n' ' ' <"$VC_ERR_FILE" 2>/dev/null)"
    LAST_OUT=""
    return 1
}

server_cmd() { # server_cmd -> the subcommand prefix for the plan kind
    if [ "${KIND:-metal}" = "instance" ]; then echo "instance"; else echo "bare-metal"; fi
}

detect_kind() { # -> "metal" | "instance"
    if vc plans metal | jq -e --arg p "$PLAN" "$JQ_LIST"' list | any(.id == $p)' >/dev/null 2>&1; then
        echo metal
    else
        echo instance
    fi
}

plan_json() { # -> the plan object
    if [ "$KIND" = "metal" ]; then
        vc plans metal | jq --arg p "$PLAN" "$JQ_LIST"' [list | .[] | select(.id == $p)] | .[0]'
    else
        vc plans list | jq --arg p "$PLAN" "$JQ_LIST"' [list | .[] | select(.id == $p)] | .[0]'
    fi
}

ubuntu_lts_images() { # -> "<os id>\t<name>" for every Ubuntu LTS x64, newest first
    vc os list | jq -r "$JQ_LIST"'
        list
        | map(select(.family == "ubuntu" and .arch == "x64"))
        | map(select(.name | test("^Ubuntu [0-9]+\\.[0-9]+ LTS x64$")))
        | map(. + {ver: (.name | capture("Ubuntu (?<v>[0-9]+\\.[0-9]+) LTS").v)})
        | sort_by(.ver | split(".") | map(tonumber))
        | reverse
        | .[]
        | "\(.id)\t\(.name)"'
}

ensure_ssh_key() { # -> the ssh key id, creating it if needed
    local pub="$SSH_KEY.pub" name body id
    [ -f "$pub" ] || die "$pub not found - create one with: ssh-keygen -t ed25519"
    body="$(awk '{print $2}' "$pub")"
    name="related-post-gen-$(basename "$SSH_KEY")"

    id="$(vc ssh-key list | jq -r --arg b "$body" "$JQ_LIST"'
        list | map(select(.ssh_key? and ((.ssh_key | split(" ")[1]) == $b))) | .[0].id // empty')"
    if [ -z "$id" ]; then
        info "registering $pub with Vultr as '$name'" >&2
        id="$(vc ssh-key create --name "$name" --key "$(cat "$pub")" |
            jq -r "$JQ_ITEM"' item | .id // empty')"
    fi
    [ -n "$id" ] || die "could not register $pub with Vultr"
    echo "$id"
}

list_by_label() { # list_by_label <label> -> JSON array of matching servers
    if [ "$KIND" = "metal" ]; then
        vc bare-metal list | jq --arg l "$1" "$JQ_LIST"' [list | .[] | select(.label == $l)]'
    else
        vc instance list | jq --arg l "$1" "$JQ_LIST"' [list | .[] | select(.label == $l)]'
    fi
}

server_json() { # server_json <id> -> the server object
    if [ "$KIND" = "metal" ]; then
        vc bare-metal get "$1" | jq "$JQ_ITEM"' item'
    else
        vc instance get "$1" | jq "$JQ_ITEM"' item'
    fi
}

# ---------------------------------------------------------------------------
# ssh
# ---------------------------------------------------------------------------
SSH_OPTS=(-o StrictHostKeyChecking=accept-new -o UserKnownHostsFile="$HOME/.ssh/known_hosts"
    -o ConnectTimeout=10 -o ServerAliveInterval=30 -o BatchMode=yes)

ssh_run() { # ssh_run <user> <ip> <command>
    local user="$1" ip="$2" cmd="$3"
    if [ "$REMOTE_SUDO" = "1" ]; then
        ssh "${SSH_OPTS[@]}" -i "$SSH_KEY" "$user@$ip" "sudo -n bash -c $(printf '%q' "$cmd")"
    else
        ssh "${SSH_OPTS[@]}" -i "$SSH_KEY" "$user@$ip" "$cmd"
    fi
}

ssh_script() { # ssh_script <user> <ip> < script
    local user="$1" ip="$2"
    if [ "$REMOTE_SUDO" = "1" ]; then
        ssh "${SSH_OPTS[@]}" -i "$SSH_KEY" "$user@$ip" 'sudo -n bash -s'
    else
        ssh "${SSH_OPTS[@]}" -i "$SSH_KEY" "$user@$ip" 'bash -s'
    fi
}

ssh_probe() { # ssh_probe <user> <ip> -> true when we can log in
    local user="$1" ip="$2"
    timeout 20 ssh "${SSH_OPTS[@]}" -o ConnectTimeout=8 -i "$SSH_KEY" "$user@$ip" true >/dev/null 2>&1
}

# ---------------------------------------------------------------------------
# local state (so status/attach/destroy know what we started)
# ---------------------------------------------------------------------------
load_state() {
    [ -f "$STATE_FILE" ] && . "$STATE_FILE"
    return 0
}

save_state() {
    mkdir -p "$STATE_DIR"
    cat >"$STATE_FILE" <<EOF
INSTANCE_ID=$INSTANCE_ID
INSTANCE_IP=$INSTANCE_IP
INSTANCE_KIND=$KIND
SSH_USER=$SSH_USER
REMOTE_SUDO=$REMOTE_SUDO
DEVICE_LABEL=$(printf '%q' "$DEVICE_LABEL")
LABEL=$(printf '%q' "$LABEL")
EOF
}

# ---------------------------------------------------------------------------
# steps
# ---------------------------------------------------------------------------
create_instance() {
    step "Creating $PLAN ($KIND)"

    local plan_meta cpu ram sshkey_id out os_id os_name cand attempt create_cmd
    local -a candidates=()
    plan_meta="$(plan_json)"
    [ -n "$plan_meta" ] && [ "$plan_meta" != "null" ] || die "plan '$PLAN' not found"
    cpu="$(jq -r '.cpu_count' <<<"$plan_meta")"
    ram="$(jq -r '(.ram / 1024) | floor' <<<"$plan_meta")"

    if [ -z "$REGION" ]; then
        REGION="$(jq -r '(.locations // .regions // ["ewr"]) | .[0]' <<<"$plan_meta")"
        info "no --region given, using '$REGION' ($(jq -r '(.locations // .regions // []) | join(", ")' <<<"$plan_meta"))"
    fi
    info "spec:  ${cpu}vCPU / ${ram}GB RAM"

    # "os list" is account wide and not every image works with every plan, so
    # walk down the Ubuntu LTS releases until the API accepts one (unless an
    # explicit --os-id was given).
    if [ -n "$OS_ID" ]; then
        os_name="$(vc os list | jq -r --arg id "$OS_ID" "$JQ_LIST"'
            list | map(select(.id == ($id | tonumber))) | .[0].name // empty')"
        candidates+=("$OS_ID"$'\t'"${os_name:-Ubuntu (os id $OS_ID)}")
    else
        while IFS=$'\t' read -r os_id os_name; do
            [ -n "$os_id" ] && candidates+=("$os_id"$'\t'"$os_name")
        done < <(ubuntu_lts_images)
        [ ${#candidates[@]} -gt 0 ] || die "no Ubuntu LTS image found in 'vultr-cli os list'"
    fi

    sshkey_id="$(ensure_ssh_key)"

    attempt=0
    for cand in "${candidates[@]}"; do
        attempt=$((attempt + 1))
        os_id="${cand%%$'\t'*}"
        os_name="${cand#*$'\t'}"
        if [ "$attempt" = 1 ]; then
            info "os:    $os_name (id $os_id)"
        else
            info "os:    $os_name (id $os_id)  [fallback]"
        fi

        # the machine label follows the image that is actually usable
        if [ -n "$DEVICE_LABEL_ARG" ]; then
            DEVICE_LABEL="$DEVICE_LABEL_ARG"
        else
            DEVICE_LABEL="Vultr $PLAN-${cpu}vCPU-${ram}GB-RAM-$(sed -e 's/ LTS//' -e 's/ x64$//' <<<"$os_name")"
        fi
        info "label: $DEVICE_LABEL"

        if [ "$KIND" = "metal" ]; then
            create_cmd=(bare-metal create --plan "$PLAN" --region "$REGION" --os "$os_id"
                --label "$LABEL" --hostname "$LABEL" --ssh "$sshkey_id" --ipv6 yes)
        else
            create_cmd=(instance create --plan "$PLAN" --region "$REGION" --os "$os_id"
                --label "$LABEL" --host "$LABEL" --ssh-keys "$sshkey_id")
        fi

        if [ "$DRY_RUN" = 1 ]; then
            info "[dry-run] vultr-cli ${create_cmd[*]}"
            if [ ${#candidates[@]} -gt 1 ]; then
                info "[dry-run] if the API rejects that image for this plan, it retries with:"
                for cand in "${candidates[@]:1}"; do info "[dry-run]   ${cand%%$'\t'*}  ${cand#*$'\t'}"; done
            fi
            exit 0
        fi

        if vc_try "${create_cmd[@]}"; then
            out="$LAST_OUT"
            break
        fi

        case "$VC_ERROR" in
        *"cannot be used with the selected plan"* | *"is not supported"* | *"not available"*)
            if [ "$attempt" -lt "${#candidates[@]}" ]; then
                warn "$os_name is not usable with $PLAN in $REGION: trying the next Ubuntu LTS"
                continue
            fi
            die "no Ubuntu LTS image can be used with $PLAN in $REGION (last error: $VC_ERROR)
  try another --region or --plan, or pick an image explicitly with --os-id (vultr-cli os list)"
            ;;
        *)
            die "creating the server failed: $VC_ERROR"
            ;;
        esac
    done
    [ -n "${out:-}" ] || die "creating the server failed"

    INSTANCE_ID="$(jq -r "$JQ_ITEM"' item | .id // empty' <<<"$out")"
    if [ -z "$INSTANCE_ID" ]; then
        # created but unparseable: find it by label so we never lose track of it
        warn "could not read the new id from the create output, looking it up by label"
        INSTANCE_ID="$(list_by_label "$LABEL" | jq -r '.[0].id // empty')"
    fi
    [ -n "$INSTANCE_ID" ] ||
        die "the server was created but could not be found - check the Vultr console (label: $LABEL)"

    SSH_USER="root"
    REMOTE_SUDO=0
    save_state
    info "instance $INSTANCE_ID created"
}

wait_for_instance() {
    step "Waiting for the instance to be ready (bare metal takes 10-20 min)"
    local deadline=$((SECONDS + TIMEOUT_MIN * 60)) raw status ip

    while :; do
        raw="$(server_json "$INSTANCE_ID" 2>/dev/null || true)"
        status="$(jq -r '.status // .server_status // .state // "unknown"' <<<"${raw:-null}" 2>/dev/null || echo unknown)"
        ip="$(jq -r '.main_ip // .main_ipv4 // ""' <<<"${raw:-null}" 2>/dev/null || echo "")"

        case "$status" in
        active | running)
            if [ -n "$ip" ] && [ "$ip" != "0.0.0.0" ] && [ "$ip" != "null" ]; then
                INSTANCE_IP="$ip"
                break
            fi
            ;;
        esac
        [ "$SECONDS" -lt "$deadline" ] ||
            die "timed out after ${TIMEOUT_MIN}min waiting for $INSTANCE_ID (status: $status)"
        printf '  %s status=%s ip=%s\n' "$(date +%H:%M:%S)" "$status" "${ip:-none}"
        sleep 15
    done
    save_state
    info "instance is up at $INSTANCE_IP"
}

wait_for_ssh() {
    step "Waiting for ssh"
    local deadline=$((SECONDS + TIMEOUT_MIN * 60)) user
    while :; do
        for user in root linuxuser ubuntu; do
            if ssh_probe "$user" "$INSTANCE_IP"; then
                SSH_USER="$user"
                [ "$user" = "root" ] && REMOTE_SUDO=0 || REMOTE_SUDO=1
                save_state
                info "ssh works as $user"
                return 0
            fi
        done
        [ "$SECONDS" -lt "$deadline" ] ||
            die "timed out after ${TIMEOUT_MIN}min waiting for ssh on $INSTANCE_IP"
        printf '  %s waiting for ssh...\n' "$(date +%H:%M:%S)"
        sleep 15
    done
}

run_setup() {
    step "Installing docker + gh and cloning the repository"

    local token update_cmd branch_q repo_q
    if [ -z "${GH_TOKEN:-}" ]; then
        GH_TOKEN="$(gh auth token 2>/dev/null)" ||
            die "no GitHub token: set GH_TOKEN or run 'gh auth login' first"
    fi
    token="$(printf '%q' "$GH_TOKEN")"
    branch_q="$(printf '%q' "$BRANCH")"
    repo_q="$(printf '%q' "$REPO_URL")"

    update_cmd="./update_results.sh --device $(printf '%q' "$DEVICE_LABEL")"
    if [ -n "$UPDATE_ARGS" ]; then
        local extra a
        # shellcheck disable=SC2206
        extra=($UPDATE_ARGS)
        for a in "${extra[@]}"; do
            update_cmd+=" $(printf '%q' "$a")"
        done
    fi

    ssh_script "$SSH_USER" "$INSTANCE_IP" <<SETUP
set -euo pipefail
echo "=== benchmark setup: \$(date -u) ==="
export DEBIAN_FRONTEND=noninteractive

echo "--- packages ---"
apt-get update -y
apt-get install -y --no-install-recommends ca-certificates curl gnupg git tmux jq unzip sudo

if ! command -v docker >/dev/null 2>&1; then
    echo "--- docker ---"
    curl -fsSL https://get.docker.com | sh
fi
systemctl enable --now docker
docker info >/dev/null

if ! command -v gh >/dev/null 2>&1; then
    echo "--- gh ---"
    mkdir -p -m 755 /etc/apt/keyrings
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg \\
        -o /etc/apt/keyrings/githubcli-archive-keyring.gpg
    chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg
    echo "deb [arch=\$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" \\
        >/etc/apt/sources.list.d/github-cli.list
    apt-get update -y
    apt-get install -y gh
fi

echo "--- gh auth ---"
printf '%s\\n' $token | gh auth login --with-token
gh auth setup-git
gh auth status >/dev/null && echo "gh authenticated"

echo "--- repository ---"
mkdir -p $REMOTE_BASE
if [ ! -d "$REMOTE_REPO/.git" ]; then
    git clone --branch $branch_q $repo_q "$REMOTE_REPO"
fi
cd "$REMOTE_REPO"
git checkout $branch_q
if ! git pull --ff-only --quiet; then
    # untracked leftovers in the clone (eg. a script that has since been added to
    # the repo) block a fast-forward; only drop the ones the new revision brings
    echo "--- pull blocked, clearing untracked files added by the new revision ---"
    git fetch --quiet origin $branch_q
    for f in \$(git diff --name-only --diff-filter=A HEAD "origin/$branch_q"); do
        if [ -e "\$f" ] && ! git ls-files --error-unmatch "\$f" >/dev/null 2>&1; then
            echo "  removing untracked \$f"
            rm -f "\$f"
        fi
    done
    git pull --ff-only --quiet
fi

if [ "$LABEL_SYNC" = 1 ] && grep -q '^##### VM Specs' readme.md; then
    sed -i "s|^##### VM Specs.*|##### VM Specs ( $DEVICE_LABEL )|" readme.md
    echo "readme machine label: $DEVICE_LABEL"
fi

cat >$REMOTE_SCRIPT <<'RUNBENCH'
#!/usr/bin/env bash
# started by vultr_bench.sh in the tmux session "bench"
cd $REMOTE_REPO || exit 1
rm -f $REMOTE_DONE
$update_cmd 2>&1 | tee -a $REMOTE_LOG
status=\${PIPESTATUS[0]}
pr="\$(grep -oE 'https://github\\.com/[^ ]+/pull/[0-9]+' $REMOTE_LOG | tail -1 || true)"
{
    echo "status: \$status"
    echo "pull request: \${pr:-none}"
    echo "finished: \$(date -u)"
} >$REMOTE_DONE
echo "benchmark finished with status \$status"
RUNBENCH
chmod +x "$REMOTE_SCRIPT"
bash -n "$REMOTE_SCRIPT" && echo "run-bench.sh ready"
SETUP

    info "setup done"
}

start_tmux() {
    step "Starting the benchmark in tmux"

    # a run is in progress when the session exists but has not written bench.done
    if [ "$FORCE" != "1" ] &&
        ssh_run "$SSH_USER" "$INSTANCE_IP" "tmux has-session -t bench 2>/dev/null && [ ! -f $REMOTE_DONE ]"; then
        warn "a benchmark is already running in tmux session 'bench'"
        warn "watch it with './$SCRIPT_NAME attach', or restart it with --force"
        return 1
    fi

    # the pane runs the benchmark inside a shell and stays interactive afterwards,
    # so attaching when it is finished gives you a prompt instead of a dead pane
    ssh_run "$SSH_USER" "$INSTANCE_IP" "
        tmux kill-session -t bench 2>/dev/null || true
        tmux new-session -d -s bench \"bash -lc '$REMOTE_SCRIPT; exec bash'\"
        tmux set-option -t bench remain-on-exit on
        tmux list-sessions
    "
}

wait_for_run() {
    step "Waiting for the benchmark to finish (this can take hours)"
    local deadline=$((SECONDS + 24 * 3600)) done_file last
    while :; do
        done_file="$(ssh_run "$SSH_USER" "$INSTANCE_IP" "cat $REMOTE_DONE 2>/dev/null || true")"
        if [ -n "$done_file" ]; then
            info ""
            info "$done_file"
            return 0
        fi
        [ "$SECONDS" -lt "$deadline" ] || die "still running after 24h, giving up (the tmux session keeps going)"
        last="$(ssh_run "$SSH_USER" "$INSTANCE_IP" "tail -1 $REMOTE_LOG 2>/dev/null || true")"
        printf '  %s %s\n' "$(date +%H:%M:%S)" "${last:-waiting for output...}"
        sleep 60
    done
}

destroy_instance() {
    local id="${INSTANCE_ID:-}"
    load_state
    id="${INSTANCE_ID:-$id}"
    [ -n "$id" ] || die "no instance in $STATE_FILE (delete it in the Vultr console)"
    step "Deleting $id"
    if [ "$KIND" = "metal" ]; then
        vc bare-metal delete "$id" >/dev/null
    else
        vc instance delete "$id" >/dev/null
    fi
    rm -f "$STATE_FILE"
    info "deleted $id"
}

# ---------------------------------------------------------------------------
# main
# ---------------------------------------------------------------------------
while [ $# -gt 0 ]; do
    case "$1" in
    run | create | setup | attach | status | logs | wait | destroy | list)
        CMD="$1"
        shift
        ;;
    --plan)
        PLAN="$2"
        shift 2
        ;;
    --region)
        REGION="$2"
        shift 2
        ;;
    --os-id)
        OS_ID="$2"
        shift 2
        ;;
    --repo)
        REPO_URL="$2"
        shift 2
        ;;
    --branch)
        BRANCH="$2"
        shift 2
        ;;
    --device)
        DEVICE_LABEL_ARG="$2"
        shift 2
        ;;
    --label)
        LABEL="$2"
        shift 2
        ;;
    --ssh-key)
        SSH_KEY="$2"
        shift 2
        ;;
    --update-args)
        UPDATE_ARGS="$2"
        shift 2
        ;;
    --no-label-sync)
        LABEL_SYNC=0
        shift
        ;;
    --timeout)
        TIMEOUT_MIN="$2"
        shift 2
        ;;
    --wait)
        WAIT=1
        shift
        ;;
    --destroy-when-done)
        WAIT=1
        DESTROY_WHEN_DONE=1
        shift
        ;;
    --force)
        FORCE=1
        shift
        ;;
    --dry-run)
        DRY_RUN=1
        shift
        ;;
    -h | --help)
        usage
        exit 0
        ;;
    *) die "unknown argument '$1' (try --help)" ;;
    esac
done

need vultr-cli
need jq
need ssh

SCRIPT_NAME="$(basename "$0")"

# the repo defaults to the origin of this checkout so the instance benchmarks
# the same project you are in
if [ -z "$REPO_URL" ]; then
    REPO_URL="$(git -C "$(dirname "$0")" config --get remote.origin.url 2>/dev/null || true)"
    [ -n "$REPO_URL" ] || die "no --repo given and no origin remote in this checkout"
    # the instance has no ssh agent, so benchmark over https
    case "$REPO_URL" in
    git@*:*) REPO_URL="https://$(sed -e 's/^git@//' -e 's/:/\//' <<<"$REPO_URL")" ;;
    ssh://git@*) REPO_URL="https://$(sed -e 's|^ssh://git@||' <<<"$REPO_URL")" ;;
    esac
fi

# commands that talk to Vultr need credentials
case "$CMD" in
run | create | setup | destroy | list)
    if [ -z "${VULTR_API_KEY:-}" ] && [ ! -f "$HOME/.vultr-cli.yaml" ]; then
        die "no Vultr credentials: export VULTR_API_KEY (eg. 'source ~/.env'), or create ~/.vultr-cli.yaml"
    fi
    ;;
esac

INSTANCE_ID=""
INSTANCE_IP=""
SSH_USER="root"
REMOTE_SUDO=0
KIND="metal"
load_state
KIND="${INSTANCE_KIND:-}"
[ -n "$DEVICE_LABEL_ARG" ] && DEVICE_LABEL="$DEVICE_LABEL_ARG"

case "$CMD" in
attach)
    [ -n "${INSTANCE_IP:-}" ] || die "no instance in $STATE_FILE"
    if [ "$REMOTE_SUDO" = "1" ]; then
        exec ssh "${SSH_OPTS[@]}" -t -i "$SSH_KEY" "$SSH_USER@$INSTANCE_IP" 'sudo -n tmux attach -t bench'
    else
        exec ssh "${SSH_OPTS[@]}" -t -i "$SSH_KEY" "$SSH_USER@$INSTANCE_IP" 'tmux attach -t bench'
    fi
    ;;
status)
    [ -n "${INSTANCE_IP:-}" ] || die "no instance in $STATE_FILE"
    info "instance $INSTANCE_ID ($INSTANCE_IP, $SSH_USER, $INSTANCE_KIND)  $DEVICE_LABEL"
    out="$(ssh_run "$SSH_USER" "$INSTANCE_IP" "
        echo '--- tmux ---'
        tmux list-sessions 2>/dev/null || echo 'no tmux session'
        echo '--- bench.done ---'
        cat $REMOTE_DONE 2>/dev/null || echo 'still running'
        echo '--- last log lines ---'
        tail -15 $REMOTE_LOG 2>/dev/null || echo 'no log yet'
    " 2>&1)" || {
        warn "cannot reach $INSTANCE_IP over ssh - is the instance still there?"
        info "$out"
        info "check with: ./$SCRIPT_NAME list   (delete leftovers with: ./$SCRIPT_NAME destroy)"
        exit 1
    }
    printf '%s\n' "$out"
    ;;
logs)
    [ -n "${INSTANCE_IP:-}" ] || die "no instance in $STATE_FILE"
    if [ "$REMOTE_SUDO" = "1" ]; then
        exec ssh "${SSH_OPTS[@]}" -t -i "$SSH_KEY" "$SSH_USER@$INSTANCE_IP" "sudo -n tail -f $REMOTE_LOG"
    else
        exec ssh "${SSH_OPTS[@]}" -t -i "$SSH_KEY" "$SSH_USER@$INSTANCE_IP" "tail -f $REMOTE_LOG"
    fi
    ;;
destroy)
    KIND="${INSTANCE_KIND:-metal}"
    destroy_instance
    ;;
list)
    step "Bare metal"
    vc bare-metal list | jq -r "$JQ_LIST"' list | .[] | "  \(.id)  \(.label)  \(.plan)  \(.status)  \(.main_ip)"'
    step "Cloud compute"
    vc instance list | jq -r "$JQ_LIST"' list | .[] | "  \(.id)  \(.label)  \(.plan)  \(.status)  \(.main_ip)"'
    ;;
wait)
    [ -n "${INSTANCE_IP:-}" ] || die "no instance in $STATE_FILE"
    wait_for_run
    ;;
run) ;;
esac

case "$CMD" in
attach | logs | status | wait | destroy | list) exit 0 ;;
esac

if [ -n "${INSTANCE_ID:-}" ] && [ "$FORCE" != "1" ]; then
    step "Reusing instance $INSTANCE_ID ($INSTANCE_IP)"
else
    KIND="$(detect_kind)"
    info "plan '$PLAN' is a $KIND plan"
    create_instance
    wait_for_instance
    wait_for_ssh
fi

run_setup
start_tmux

step "Benchmark running in tmux"
cat <<EOF

Instance:   $INSTANCE_ID ($INSTANCE_IP)
Device:     $DEVICE_LABEL
Watch it:   ./$SCRIPT_NAME attach          (tmux attach)
            ./$SCRIPT_NAME status          (one shot)
            ./$SCRIPT_NAME logs            (tail -f)
Wait for it: ./$SCRIPT_NAME --wait
Clean up:   ./$SCRIPT_NAME destroy         (billed until then)
EOF

if [ "$WAIT" = 1 ]; then
    wait_for_run
    if [ "$DESTROY_WHEN_DONE" = 1 ]; then
        destroy_instance
    fi
fi
