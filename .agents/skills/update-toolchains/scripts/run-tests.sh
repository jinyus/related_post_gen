#!/usr/bin/env bash
# Build one benchmark image and run its tests, either locally or inside a
# sandbox that already has Docker.
#
# Usage:
#   run-tests.sh --engine docker|podman \
#     --worktree <path> \
#     --dockerfile <path relative to worktree> \
#     --tag <image-tag> \
#     <test> [test...]
#
# The committed Dockerfile keeps its #precompile clone/run block. The
# verification copy removes that block (it clones main and would test old
# sources).
set -euo pipefail

engine=""
worktree=""
dockerfile=""
tag=""
tests=()

usage() {
  awk 'NR > 1 && /^#/ { sub(/^# ?/, ""); print; next } NR > 1 { exit }' "$0"
}

while (($#)); do
  case "$1" in
    --engine) engine="${2:?--engine needs a value}"; shift 2 ;;
    --worktree) worktree="${2:?--worktree needs a value}"; shift 2 ;;
    --dockerfile) dockerfile="${2:?--dockerfile needs a value}"; shift 2 ;;
    --tag) tag="${2:?--tag needs a value}"; shift 2 ;;
    --help|-h) usage; exit 0 ;;
    --*) echo "unknown option: $1" >&2; usage >&2; exit 2 ;;
    *) tests+=("$1"); shift ;;
  esac
done

[[ "$engine" == docker || "$engine" == podman ]] || { echo "--engine must be docker or podman" >&2; exit 2; }
[[ -n "$worktree" && -d "$worktree" ]] || { echo "--worktree is required and must exist" >&2; exit 2; }
[[ -n "$dockerfile" ]] || { echo "--dockerfile is required" >&2; exit 2; }
[[ -n "$tag" ]] || { echo "--tag is required" >&2; exit 2; }
((${#tests[@]})) || { echo "at least one test name is required" >&2; exit 2; }

worktree="$(cd "$worktree" && pwd)"
if [[ "$dockerfile" != /* ]]; then
  dockerfile="$worktree/$dockerfile"
fi
[[ -f "$dockerfile" ]] || { echo "Dockerfile not found: $dockerfile" >&2; exit 2; }

verify="$(mktemp /tmp/update-toolchains-Dockerfile.XXXXXX)"
awk '
  /^#precompile/ { skip = 1; next }
  skip && /^[[:space:]]*$/ { skip = 0; next }
  skip { next }
  { print }
' "$dockerfile" >"$verify"

grep -q '^FROM' "$verify" || {
  echo "verification Dockerfile has no FROM line: $verify" >&2
  exit 3
}

echo "verification Dockerfile: $verify"
echo "building $tag from $worktree"
"$engine" build -f "$verify" -t "$tag" "$worktree"

mount="$worktree:/app"
if [[ "$engine" == podman ]]; then
  mount="$mount:z"
fi

failed=()
for test in "${tests[@]}"; do
  echo "===== $test ====="
  # bash -c (not -lc): login shells reset PATH and drop toolchain dirs.
  if ! "$engine" run --rm -v "$mount" -w /app "$tag" bash -c "./run.sh $test"; then
    failed+=("$test")
  fi
done

if ((${#failed[@]})); then
  echo "FAILED tests: ${failed[*]}" >&2
  exit 1
fi

echo "PASSED: ${tests[*]}"
