#!/usr/bin/env bash
# Run one image build + its tests in a fresh Vercel Sandbox.
#
# Usage:
#   vercel-run.sh --worktree <path> \
#     --dockerfile <path relative to worktree> \
#     --tag <image-tag> \
#     [--name <sandbox-name>] [--timeout 45m] [--persistent] [--keep] \
#     <test> [test...]
#
# The sandbox is created non-persistent by default (free-tier friendly) and
# removed on exit. --persistent keeps the disk between 45-minute sessions;
# --keep leaves the sandbox behind for debugging.
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
name=""
worktree=""
dockerfile=""
tag=""
timeout="45m"
persistent=0
keep=0
tests=()

usage() {
  awk 'NR > 1 && /^#/ { sub(/^# ?/, ""); print; next } NR > 1 { exit }' "$0"
}

while (($#)); do
  case "$1" in
    --name) name="${2:?--name needs a value}"; shift 2 ;;
    --worktree) worktree="${2:?--worktree needs a value}"; shift 2 ;;
    --dockerfile) dockerfile="${2:?--dockerfile needs a value}"; shift 2 ;;
    --tag) tag="${2:?--tag needs a value}"; shift 2 ;;
    --timeout) timeout="${2:?--timeout needs a value}"; shift 2 ;;
    --persistent) persistent=1; shift ;;
    --keep) keep=1; shift ;;
    --help|-h) usage; exit 0 ;;
    --*) echo "unknown option: $1" >&2; usage >&2; exit 2 ;;
    *) tests+=("$1"); shift ;;
  esac
done

[[ -n "$worktree" && -d "$worktree" ]] || { echo "--worktree is required and must exist" >&2; exit 2; }
[[ -n "$dockerfile" ]] || { echo "--dockerfile is required" >&2; exit 2; }
[[ "$dockerfile" != /* ]] || { echo "--dockerfile must be relative to the worktree" >&2; exit 2; }
[[ -f "$worktree/$dockerfile" ]] || { echo "Dockerfile not found: $worktree/$dockerfile" >&2; exit 2; }
[[ -n "$tag" ]] || { echo "--tag is required" >&2; exit 2; }
((${#tests[@]})) || { echo "at least one test name is required" >&2; exit 2; }

if ! cli="$("$script_dir/check-sandbox.sh" --print-cli)"; then
  echo "Vercel Sandbox is not usable. Refusing to fall back to local builds." >&2
  exit 1
fi

worktree="$(cd "$worktree" && pwd)"
if [[ -z "$name" ]]; then
  slug="$(basename "$worktree" | tr '[:upper:]_' '[:lower:]-' | tr -cd 'a-z0-9-')"
  name="rpg-${slug:-image}-$(date +%s)"
fi

tar_file="$(mktemp /tmp/update-toolchains-work.XXXXXX.tgz)"
cleanup() {
  if ((keep)); then
    echo "keeping sandbox: $name" >&2
  else
    "$cli" remove "$name" >/dev/null 2>&1 || true
  fi
  rm -f "$tar_file"
}
trap cleanup EXIT

create_args=(--name "$name" --timeout "$timeout" --vcpus 4)
if ((!persistent)); then
  create_args+=(--non-persistent)
fi

echo "creating sandbox $name" >&2
"$cli" create "${create_args[@]}"

echo "installing Docker in $name" >&2
"$cli" exec --sudo "$name" -- bash -lc \
  'apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get install -y -qq docker.io'

echo "starting Docker daemon in $name" >&2
"$cli" exec --sudo "$name" -- bash -lc \
  'setsid dockerd >/tmp/dockerd.log 2>&1 < /dev/null & for i in $(seq 1 40); do docker info >/dev/null 2>&1 && break; sleep 1; done; docker info >/dev/null'

echo "copying worktree to $name" >&2
tar -C "$worktree" --exclude=.git -czf "$tar_file" .
"$cli" copy "$tar_file" "$name:/tmp/work.tgz" >/dev/null
"$cli" exec "$name" -- bash -lc \
  'rm -rf /work && mkdir -p /work && tar -xzf /tmp/work.tgz -C /work' >/dev/null
"$cli" copy "$script_dir/run-tests.sh" "$name:/tmp/run-tests.sh" >/dev/null

quoted_tests="$(printf '%q ' "${tests[@]}")"
if ! "$cli" exec --sudo "$name" -- bash -lc \
  "bash /tmp/run-tests.sh --engine docker --worktree /work --dockerfile /work/$dockerfile --tag '$tag' $quoted_tests"; then
  echo "" >&2
  echo "Test run failed. If the 45-minute session cap was hit, rerun with --persistent." >&2
  exit 1
fi
