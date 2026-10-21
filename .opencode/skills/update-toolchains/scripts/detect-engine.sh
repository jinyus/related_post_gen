#!/usr/bin/env bash
# Print which local container engine is available.
# Output: docker | podman | both | none (and exit 1 for none).
set -euo pipefail

have_docker=0
have_podman=0
command -v docker >/dev/null 2>&1 && have_docker=1
command -v podman >/dev/null 2>&1 && have_podman=1

if ((have_docker && have_podman)); then
  echo both
elif ((have_docker)); then
  echo docker
elif ((have_podman)); then
  echo podman
else
  echo none
  exit 1
fi
