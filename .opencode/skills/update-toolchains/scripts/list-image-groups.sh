#!/usr/bin/env bash
# List benchmark groups as: image<TAB>dockerfile<TAB>tests
# Groups are built from docker_run.sh's NameToImage map, so every test that
# shares one Docker image stays in one work unit.
set -euo pipefail

root="$(git rev-parse --show-toplevel)"
map="$root/docker_run.sh"
[[ -f "$map" ]] || { echo "docker_run.sh not found at $map" >&2; exit 1; }

tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT

grep -oE '\["[^"]+"\]="[^"]+"' "$map" |
  sed -E 's/\["([^"]+)"\]="([^"]+)"/\1\t\2/' |
  sort -t $'\t' -k2,2 -k1,1 >"$tmp"

awk -F'\t' '
  {
    image = $2
    if (image != previous) {
      if (previous != "") print previous "\t" tests
      previous = image
      tests = $1
    } else {
      tests = tests " " $1
    }
  }
  END { if (previous != "") print previous "\t" tests }
' "$tmp" |
  while IFS=$'\t' read -r image tests; do
    dockerfile="$root/dockerfiles/$image.Dockerfile"
    [[ -f "$dockerfile" ]] || continue
    printf '%s\tdockerfiles/%s.Dockerfile\t%s\n' "$image" "$image" "$tests"
  done
