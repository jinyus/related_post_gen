#!/usr/bin/env bash
#
# scaleway_bench.sh - provision a Scaleway Elastic Metal server, set it up and
# run the benchmark on it inside tmux, so the run survives disconnects.
#
# Commands (default: run):
#   run           create the server (if needed), set it up, start the benchmark
#   attach        ssh in and attach to the tmux session ("bench")
#   status        one-shot: tmux state, bench.done, last log lines
#   logs          tail -f the benchmark log
#   wait          block until the run finishes and print the pull request
#   list          list the servers in the zone
#   destroy       delete the server and forget it locally
#
# Options:
#   --type <name>         default EM-A215R-HDD (hourly Elastic Metal: 6c/12t, 16GB, 2x1TB HDD)
#   --zone <zone>         default: the first zone where the offer is in stock
#   --os-id <id>          default: newest Ubuntu LTS the offer supports
#   --name <name>         server name (default related-post-gen-bench)
#   --repo <url>          default: the origin of this checkout
#   --branch <name>       default main
#   --device <label>      machine label for the PR + readme (derived by default)
#   --ssh-key <path>      private key, default ~/.ssh/id_rsa; its .pub is uploaded
#   --update-args "<a b>" extra arguments for update_results.sh, eg.
#                         "--tests go,go_ho" or "--skip-existing"
#   --no-label-sync       do not touch the readme's "VM Specs" line
#   --timeout <minutes>   delivery + install + ssh wait timeout (default 60)
#   --wait                stay until the benchmark finishes
#   --destroy-when-done   with --wait: delete the server afterwards
#   --force               recreate/restart even if one is already tracked/running
#   --dry-run             print the create command and stop
#
# Requirements: scw (authenticated: ~/.config/scw/config.yaml or SCW_* env),
# jq and ssh locally, and an SSH key.
#
# Examples:
#   ./scaleway_bench.sh                                   # all tests
#   ./scaleway_bench.sh --update-args "--tests go,go_ho"  # quick subset
#   ./scaleway_bench.sh status                            # how is it going?
#   ./scaleway_bench.sh --wait --destroy-when-done        # wait for the PR, clean up
#
# Elastic Metal is billed hourly (EM-A215R-HDD is ~EUR 0.101/h, no setup fee)
# while the server exists, so run "destroy" (or use --destroy-when-done) once
# the PR is open. The script only ever uses hourly offers.

set -euo pipefail

TYPE="EM-A215R-HDD"
ZONE=""
OS_ID=""
NAME="related-post-gen-bench"
REPO_URL=""
BRANCH="main"
DEVICE_LABEL=""
DEVICE_LABEL_ARG=""
SSH_KEY="$HOME/.ssh/id_rsa"
UPDATE_ARGS=""
LABEL_SYNC=1
WAIT=0
DESTROY_WHEN_DONE=0
TIMEOUT_MIN=60
FORCE=0
DRY_RUN=0
CMD="run"

STATE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/related-post-gen"
STATE_FILE="$STATE_DIR/scaleway-bench.env"
ERR_FILE="$(mktemp)"
trap 'rm -f "$ERR_FILE"' EXIT

# the zones Elastic Metal is sold in, most likely first
ZONES=(fr-par-1 fr-par-2 nl-ams-1 nl-ams-2 pl-waw-2 pl-waw-3)

# where the benchmark lives on the server (absolute, so it does not depend on
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
# scw
# ---------------------------------------------------------------------------
sc() { # sc <args...> -> JSON on stdout; the CLI's error goes to stderr
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

# same, but usable when the caller has to inspect the error
sc_try() {
    if LAST_OUT="$(scw "$@" -o json 2>"$ERR_FILE")"; then
        SC_ERROR=""
        return 0
    fi
    SC_ERROR="$(tr '\n' ' ' <"$ERR_FILE" 2>/dev/null)"
    LAST_OUT=""
    return 1
}

as_list() { # scw returns bare arrays/objects; tolerate both
    jq -r 'if type == "array" then . else ([.[] | select(type == "array")] | first) end'
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

ssh_probe() { # ssh_probe <user> <ip>
    local user="$1" ip="$2"
    timeout 20 ssh "${SSH_OPTS[@]}" -o ConnectTimeout=8 -i "$SSH_KEY" "$user@$ip" true >/dev/null 2>&1
}

# ---------------------------------------------------------------------------
# local state
# ---------------------------------------------------------------------------
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
DEVICE_LABEL=$(printf '%q' "$DEVICE_LABEL")
NAME=$(printf '%q' "$NAME")
EOF
}

ensure_address() { # make sure we know how to reach the tracked server
    [ -n "${SERVER_ID:-}" ] || die "no server in $STATE_FILE"
    [ -n "${SERVER_IP:-}" ] || refresh_server_ip
}

# ---------------------------------------------------------------------------
# catalog lookups
# ---------------------------------------------------------------------------
offers_in_zone() { # offers_in_zone <zone> -> offers array
    sc baremetal offer list zone="$1" | as_list
}

# offer_json <zone> -> the hourly offer object for $TYPE, or empty
offer_json() {
    offers_in_zone "$1" | jq -c --arg t "$TYPE" '
        [ .[] | select(.name == $t) | select(.subscription_period == "hourly")
          | select(.stock != "empty") ] | .[0] // empty'
}

resolve_zone_and_offer() {
    step "Looking up $TYPE"

    local candidates=() z meta
    if [ -n "$ZONE" ]; then
        candidates=("$ZONE")
    else
        # prefer the zone configured in scw, then the rest
        local configured
        configured="$(scw config get default-zone 2>/dev/null || true)"
        [ -n "$configured" ] && candidates+=("$configured")
        for z in "${ZONES[@]}"; do
            [ "$z" = "${configured:-}" ] || candidates+=("$z")
        done
    fi

    local chosen=""
    for z in "${candidates[@]}"; do
        meta="$(offer_json "$z")"
        if [ -n "$meta" ]; then
            chosen="$z"
            break
        fi
    done
    [ -n "$chosen" ] ||
        die "no usable hourly offer for $TYPE in: ${candidates[*]}

  zones whose stock is empty are skipped. See what is available with:
    scw baremetal offer list zone=<zone>
  then pass --type / --zone."

    ZONE="$chosen"
    OFFER="$meta"
    OFFER_ID="$(jq -r '.id' <<<"$meta")"
    CPU_CORES="$(jq -r '.cpus[0].core_count' <<<"$meta")"
    CPU_THREADS="$(jq -r '.cpus[0].thread_count' <<<"$meta")"
    RAM_GB="$(jq -r '(.memories[0].capacity / 1000000000) | floor' <<<"$meta")"
    STOCK="$(jq -r '.stock' <<<"$meta")"
    PRICE_H="$(jq -r '.price_per_hour | "\(.units).\((.nanos / 1000000) | floor)"' <<<"$meta")"
    FEE="$(jq -r '.fee | "\(.units).\((.nanos / 1000000) | floor)"' <<<"$meta")"

    info "type:   $TYPE (${CPU_CORES}c/${CPU_THREADS}t, ${RAM_GB}GB RAM, $(jq -r '.cpus[0].name' <<<"$meta"))"
    info "zone:   $ZONE  (stock: $STOCK)"
    info "billing: hourly, EUR $PRICE_H/h, setup fee EUR $FEE"
}

ubuntu_os_images() { # -> "<os id>\t<version>" for Ubuntu LTS, newest first
    sc baremetal os list zone="$ZONE" offer-id="$OFFER_ID" | as_list | jq -r '
        [ .[]
          | select(.name == "Ubuntu")
          | select(.enabled == true and .allowed == true)
          | select((.version // "") | test("^[0-9]+\\.[0-9]+ LTS"))
          | . + {ver: (.version | capture("^(?<v>[0-9]+\\.[0-9]+)").v)} ]
        | sort_by(.ver | split(".") | map(tonumber))
        | reverse
        | .[]
        | "\(.id)\tUbuntu \(.version)"'
}

ensure_ssh_key() { # -> the account ssh key id, creating it if absent
    local pub="$SSH_KEY.pub" key_name body id
    [ -f "$pub" ] || die "$pub not found - create one with: ssh-keygen -t ed25519"
    key_name="related-post-gen-$(basename "$SSH_KEY")"
    body="$(awk '{print $2}' "$pub")"

    id="$(sc iam ssh-key list | as_list |
        jq -r --arg b "$body" '[ .[] | select((.public_key | split(" ")[1]) == $b) ] | .[0].id // empty')"
    if [ -z "$id" ]; then
        info "registering $pub with Scaleway as '$key_name'" >&2
        id="$(sc iam ssh-key create name="$key_name" "public-key=@$pub" | jq -r '.id // empty')"
    fi
    [ -n "$id" ] || die "could not register $pub with Scaleway"
    echo "$id"
}

server_json() { # server_json <id>
    sc baremetal server get "$1" zone="$ZONE" | jq -c '(.server // .)'
}

server_address() { # server_address <server json> -> public IPv4, or the domain, or empty
    jq -r '
        ([ .ips[]? | select((.version // "" | ascii_downcase) | test("4$")) | .address ] | .[0])
        // .ip // .domain // ""' <<<"$1" 2>/dev/null || echo ""
}

refresh_server_ip() { # (re)read the address of the tracked server and store it
    local raw addr
    raw="$(server_json "$SERVER_ID" 2>/dev/null || true)"
    [ -n "$raw" ] || die "cannot read server $SERVER_ID in zone $ZONE"

    addr="$(jq -r '.status // "unknown"' <<<"$raw")"
    [ "$addr" != "error" ] || die "server $SERVER_ID is in state 'error' - check the Scaleway console"

    addr="$(server_address "$raw")"
    [ -n "$addr" ] || die "server $SERVER_ID ($ZONE) has no public address yet - check the Scaleway console"

    if [ "$addr" != "$SERVER_IP" ]; then
        SERVER_IP="$addr"
        save_state
        info "server address: $SERVER_IP"
    fi
}

# ---------------------------------------------------------------------------
# steps
# ---------------------------------------------------------------------------
create_server() {
    step "Creating $TYPE in $ZONE"

    local images=() cand os_id os_version ssh_key_id out attempt
    local -a create_cmd=()

    while IFS=$'\t' read -r id version; do
        [ -n "$id" ] && images+=("$id"$'\t'"$version")
    done < <(ubuntu_os_images)

    if [ -n "$OS_ID" ]; then
        images=("$OS_ID"$'\t'"Ubuntu (os id $OS_ID)")
    fi
    [ ${#images[@]} -gt 0 ] ||
        die "no Ubuntu LTS image available for $TYPE in $ZONE

  list them with: scw baremetal os list zone=$ZONE offer-id=$OFFER_ID"

    ssh_key_id="$(ensure_ssh_key)"

    attempt=0
    for cand in "${images[@]}"; do
        attempt=$((attempt + 1))
        os_id="${cand%%$'\t'*}"
        os_version="${cand#*$'\t'}"
        if [ "$attempt" = 1 ]; then
            info "os:     $os_version (id $os_id)"
        else
            info "os:     $os_version (id $os_id)  [fallback]"
        fi

        if [ -n "$DEVICE_LABEL_ARG" ]; then
            DEVICE_LABEL="$DEVICE_LABEL_ARG"
        else
            DEVICE_LABEL="Scaleway $TYPE-${CPU_CORES}c${CPU_THREADS}t-${RAM_GB}GB-RAM-$os_version"
            DEVICE_LABEL="$(sed -e 's/ LTS.*$//' <<<"$DEVICE_LABEL")"
        fi
        info "label:  $DEVICE_LABEL"

        create_cmd=(baremetal server create
            name="$NAME" type="$TYPE" zone="$ZONE"
            install.os-id="$os_id" install.hostname="$NAME"
            install.ssh-key-ids.0="$ssh_key_id")

        if [ "$DRY_RUN" = 1 ]; then
            info "[dry-run] scw ${create_cmd[*]}"
            if [ ${#images[@]} -gt 1 ]; then
                info "[dry-run] if the API rejects that image it retries with:"
                for cand in "${images[@]:1}"; do info "[dry-run]   ${cand%%$'\t'*}"
                done
            fi
            exit 0
        fi

        if sc_try "${create_cmd[@]}"; then
            out="$LAST_OUT"
            break
        fi

        case "$SC_ERROR" in
        *"stock"* | *"empty"* | *"no available"*)
            die "$TYPE is out of stock in $ZONE (${SC_ERROR})
  try another --zone (scw baremetal offer list zone=<zone>)"
            ;;
        *os* | *"install"* | *"image"*)
            if [ "$attempt" -lt "${#images[@]}" ]; then
                warn "$os_version cannot be installed on $TYPE: trying the next Ubuntu LTS"
                continue
            fi
            die "no Ubuntu LTS image could be installed on $TYPE in $ZONE (last error: $SC_ERROR)"
            ;;
        *)
            die "creating the server failed: $SC_ERROR"
            ;;
        esac
    done
    [ -n "${out:-}" ] || die "creating the server failed"

    SERVER_ID="$(jq -r '(.server // .) | .id // empty' <<<"$out")"
    [ -n "$SERVER_ID" ] || die "the server was created but no id came back - check: scw baremetal server list zone=$ZONE"
    SSH_USER="$(scw baremetal os list zone="$ZONE" offer-id="$OFFER_ID" -o json |
        as_list | jq -r --arg id "$os_id" '[.[] | select(.id == $id)] | .[0].user.default_value // "ubuntu"')"
    [ "$SSH_USER" = "root" ] && REMOTE_SUDO=0 || REMOTE_SUDO=1
    save_state
    info "server $SERVER_ID created (ssh user: $SSH_USER)"
}

wait_for_server() {
    step "Waiting for delivery and OS installation (this takes a few minutes)"
    local deadline=$((SECONDS + TIMEOUT_MIN * 60)) raw state install addr naddr=0

    while :; do
        raw="$(server_json "$SERVER_ID" 2>/dev/null || true)"
        state="$(jq -r '.status // "unknown"' <<<"${raw:-null}" 2>/dev/null || echo unknown)"
        install="$(jq -r '.install.status // "-"' <<<"${raw:-null}" 2>/dev/null || echo -)"
        addr="$(server_address "${raw:-null}")"

        if [ "$state" = "error" ]; then
            die "the server went into state 'error' during delivery (install: $install)
  check the console, then delete it with: scw baremetal server delete $SERVER_ID zone=$ZONE"
        fi

        # Elastic Metal reports install "completed"; other products say "installed"
        if [ "$state" = "ready" ] &&
            { [ "$install" = "completed" ] || [ "$install" = "installed" ] || [ "$install" = "-" ]; }; then
            if [ -n "$addr" ]; then
                SERVER_IP="$addr"
                break
            fi
            # ready but no address: do not spin for the whole timeout
            naddr=$((naddr + 1))
            [ "$naddr" -lt 5 ] ||
                die "server $SERVER_ID is ready but the API reports no public address
  (an IPv6-only server cannot be reached over IPv4 here) - check the Scaleway console"
        fi

        [ "$SECONDS" -lt "$deadline" ] ||
            die "timed out after ${TIMEOUT_MIN}min waiting for $SERVER_ID (status: $state, install: $install)"
        printf '  %s status=%s install=%s ip=%s\n' "$(date +%H:%M:%S)" "$state" "$install" "${addr:-none}"
        sleep 20
    done
    save_state
    info "server is up at $SERVER_IP"
}

wait_for_ssh() {
    step "Waiting for ssh"
    local deadline=$((SECONDS + TIMEOUT_MIN * 60)) user
    while :; do
        for user in "${SSH_USER}" root ubuntu; do
            if ssh_probe "$user" "$SERVER_IP"; then
                SSH_USER="$user"
                [ "$user" = "root" ] && REMOTE_SUDO=0 || REMOTE_SUDO=1
                save_state
                info "ssh works as $user"
                return 0
            fi
        done
        [ "$SECONDS" -lt "$deadline" ] ||
            die "timed out after ${TIMEOUT_MIN}min waiting for ssh on $SERVER_IP"
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

    ssh_script "$SSH_USER" "$SERVER_IP" <<SETUP
set -euo pipefail
echo "=== benchmark setup: \$(date -u) ==="
export DEBIAN_FRONTEND=noninteractive

if [ "\$(id -u)" != 0 ] && ! sudo -n true 2>/dev/null; then
    echo "!!! user \$(id -un) has no passwordless sudo - cannot install anything" >&2
    exit 1
fi

echo "--- packages ---"
sudo apt-get update -y
sudo apt-get install -y --no-install-recommends ca-certificates curl gnupg git tmux jq unzip

if ! command -v docker >/dev/null 2>&1; then
    echo "--- docker ---"
    curl -fsSL https://get.docker.com | sudo sh
fi
sudo systemctl enable --now docker
sudo docker info >/dev/null

if ! command -v gh >/dev/null 2>&1; then
    echo "--- gh ---"
    sudo mkdir -p -m 755 /etc/apt/keyrings
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg \\
        | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg >/dev/null
    sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg
    echo "deb [arch=\$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" \\
        | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null
    sudo apt-get update -y
    sudo apt-get install -y gh
fi

echo "--- gh auth ---"
printf '%s\\n' $token | gh auth login --with-token
gh auth setup-git
gh auth status >/dev/null && echo "gh authenticated"

echo "--- repository ---"
sudo mkdir -p $REMOTE_BASE
sudo chown "\$(id -u):\$(id -g)" $REMOTE_BASE
if [ ! -d "$REMOTE_REPO/.git" ]; then
    git clone --branch $branch_q $repo_q "$REMOTE_REPO"
fi
cd "$REMOTE_REPO"
git checkout $branch_q
git pull --ff-only

if [ "$LABEL_SYNC" = 1 ] && grep -q '^##### VM Specs' readme.md; then
    sed -i "s|^##### VM Specs.*|##### VM Specs ( $DEVICE_LABEL )|" readme.md
    echo "readme machine label: $DEVICE_LABEL"
fi

cat >$REMOTE_SCRIPT <<'RUNBENCH'
#!/usr/bin/env bash
# started by scaleway_bench.sh in the tmux session "bench"
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

    # don't clobber a benchmark that is still running on a reused server
    local pane_dead
    pane_dead="$(ssh_run "$SSH_USER" "$SERVER_IP" \
        "tmux list-panes -t bench -F '#{pane_dead}' 2>/dev/null | head -1")"
    if [ "$pane_dead" = "0" ] && [ "$FORCE" != "1" ]; then
        warn "a benchmark is already running in tmux session 'bench'"
        warn "watch it with './$SCRIPT_NAME attach', or restart it with --force"
        return 1
    fi

    ssh_run "$SSH_USER" "$SERVER_IP" "
        tmux kill-session -t bench 2>/dev/null || true
        tmux new-session -d -s bench '$REMOTE_SCRIPT'
        tmux set-option -t bench remain-on-exit on
        tmux list-sessions
    "
}

wait_for_run() {
    step "Waiting for the benchmark to finish (this can take hours)"
    local deadline=$((SECONDS + 24 * 3600)) done_file last
    while :; do
        done_file="$(ssh_run "$SSH_USER" "$SERVER_IP" "cat $REMOTE_DONE 2>/dev/null || true")"
        if [ -n "$done_file" ]; then
            info ""
            info "$done_file"
            return 0
        fi
        [ "$SECONDS" -lt "$deadline" ] || die "still running after 24h, giving up (the tmux session keeps going)"
        last="$(ssh_run "$SSH_USER" "$SERVER_IP" "tail -1 $REMOTE_LOG 2>/dev/null || true")"
        printf '  %s %s\n' "$(date +%H:%M:%S)" "${last:-waiting for output...}"
        sleep 60
    done
}

destroy_server() {
    local id="${SERVER_ID:-}"
    load_state
    id="${SERVER_ID:-$id}"
    [ -n "$id" ] || die "no server in $STATE_FILE (delete it in the console)"
    step "Deleting $id in $ZONE"
    sc baremetal server delete "$id" zone="$ZONE" >/dev/null
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
    --type)
        TYPE="$2"
        shift 2
        ;;
    --zone)
        ZONE="$2"
        shift 2
        ;;
    --os-id)
        OS_ID="$2"
        shift 2
        ;;
    --name)
        NAME="$2"
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

need scw
need jq
need ssh

SCRIPT_NAME="$(basename "$0")"

# the repo defaults to the origin of this checkout so the server benchmarks the
# same project you are in
if [ -z "$REPO_URL" ]; then
    REPO_URL="$(git -C "$(dirname "$0")" config --get remote.origin.url 2>/dev/null || true)"
    [ -n "$REPO_URL" ] || die "no --repo given and no origin remote in this checkout"
    case "$REPO_URL" in
    git@*:*) REPO_URL="https://$(sed -e 's/^git@//' -e 's/:/\//' <<<"$REPO_URL")" ;;
    ssh://git@*) REPO_URL="https://$(sed -e 's|^ssh://git@||' <<<"$REPO_URL")" ;;
    esac
fi

SERVER_ID=""
SERVER_IP=""
SSH_USER="ubuntu"
REMOTE_SUDO=1
load_state
ZONE="${SERVER_ZONE:-$ZONE}"
TYPE="${SERVER_TYPE:-$TYPE}"
[ -n "$DEVICE_LABEL_ARG" ] && DEVICE_LABEL="$DEVICE_LABEL_ARG"

case "$CMD" in
attach)
    ensure_address
    if [ "$REMOTE_SUDO" = "1" ]; then
        exec ssh "${SSH_OPTS[@]}" -t -i "$SSH_KEY" "$SSH_USER@$SERVER_IP" 'sudo -n tmux attach -t bench'
    else
        exec ssh "${SSH_OPTS[@]}" -t -i "$SSH_KEY" "$SSH_USER@$SERVER_IP" 'tmux attach -t bench'
    fi
    ;;
status)
    ensure_address
    info "server $SERVER_ID ($SERVER_IP, $SSH_USER, $ZONE)  $DEVICE_LABEL"
    out="$(ssh_run "$SSH_USER" "$SERVER_IP" "
        echo '--- tmux ---'
        tmux list-sessions 2>/dev/null || echo 'no tmux session'
        echo '--- bench.done ---'
        cat $REMOTE_DONE 2>/dev/null || echo 'still running'
        echo '--- last log lines ---'
        tail -15 $REMOTE_LOG 2>/dev/null || echo 'no log yet'
    " 2>&1)" || {
        warn "cannot reach $SERVER_IP over ssh - is the server still there?"
        info "$out"
        info "check with: ./$SCRIPT_NAME list   (delete leftovers with: ./$SCRIPT_NAME destroy)"
        exit 1
    }
    printf '%s\n' "$out"
    ;;
logs)
    ensure_address
    if [ "$REMOTE_SUDO" = "1" ]; then
        exec ssh "${SSH_OPTS[@]}" -t -i "$SSH_KEY" "$SSH_USER@$SERVER_IP" "sudo -n tail -f $REMOTE_LOG"
    else
        exec ssh "${SSH_OPTS[@]}" -t -i "$SSH_KEY" "$SSH_USER@$SERVER_IP" "tail -f $REMOTE_LOG"
    fi
    ;;
destroy)
    destroy_server
    ;;
list)
    # no tracked server (or --zone given): look in one zone, otherwise all of them
    local_list_zones=()
    if [ -n "$ZONE" ]; then
        local_list_zones=("$ZONE")
    else
        local_list_zones=("${ZONES[@]}")
    fi
    for z in "${local_list_zones[@]}"; do
        step "Elastic Metal servers in $z"
        sc baremetal server list zone="$z" | as_list |
            jq -r '.[] | "  \(.id)  \(.name)  \(.offer_name // .type // "-")  \(.status)  \([.ips[]? | select(.version == "v4") | .address] | .[0] // "-")"'
    done
    ;;
wait)
    ensure_address
    wait_for_run    ;;
run) ;;
esac

case "$CMD" in
attach | logs | status | wait | destroy | list) exit 0 ;;
esac

if [ -n "${SERVER_ID:-}" ] && [ "$FORCE" != "1" ]; then
    step "Reusing server $SERVER_ID"
    refresh_server_ip
    wait_for_ssh
else
    resolve_zone_and_offer
    create_server
    wait_for_server
    wait_for_ssh
fi

run_setup
start_tmux

step "Benchmark running in tmux"
cat <<EOF

Server:     $SERVER_ID ($SERVER_IP, $ZONE)
Device:     $DEVICE_LABEL
Watch it:   ./$SCRIPT_NAME attach          (tmux attach)
            ./$SCRIPT_NAME status          (one shot)
            ./$SCRIPT_NAME logs            (tail -f)
Wait for it: ./$SCRIPT_NAME --wait
Clean up:   ./$SCRIPT_NAME destroy         (billed hourly until then)
EOF

if [ "$WAIT" = 1 ]; then
    wait_for_run
    if [ "$DESTROY_WHEN_DONE" = 1 ]; then
        destroy_server
    fi
fi
