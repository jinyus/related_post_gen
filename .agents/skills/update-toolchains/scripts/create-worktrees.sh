#!/usr/bin/env bash
# Create one git worktree + branch per Docker image.
# Usage: create-worktrees.sh <image> [image...]
# Env: BASE (default main), WTROOT (default /tmp/opencode/rpg-worktrees),
#      DATE (default YYYYMMDD-HHMM).
set -euo pipefail

if (($# == 0)); then
  echo "usage: $0 <image> [image...]" >&2
  exit 2
fi

root="$(git rev-parse --show-toplevel)"
base="${BASE:-main}"
wtroot="${WTROOT:-/tmp/opencode/rpg-worktrees}"
date_suffix="${DATE:-$(date +%Y%m%d-%H%M)}"

mkdir -p "$wtroot"

for image in "$@"; do
  [[ "$image" =~ ^[a-zA-Z0-9._-]+$ ]] || { echo "invalid image name: $image" >&2; exit 2; }
  dockerfile="$root/dockerfiles/$image.Dockerfile"
  [[ -f "$dockerfile" ]] || { echo "no Dockerfile for image: $image" >&2; exit 2; }

  branch="chore/toolchains-${image}-${date_suffix}"
  dest="$wtroot/$image"

  if [[ -e "$dest" ]]; then
    echo "worktree path already exists: $dest" >&2
    exit 3
  fi
  if git show-ref --verify --quiet "refs/heads/$branch"; then
    echo "branch already exists: $branch" >&2
    exit 3
  fi

  git -C "$root" worktree add -b "$branch" "$dest" "$base"
  printf '%s\t%s\t%s\n' "$image" "$branch" "$dest"
done
