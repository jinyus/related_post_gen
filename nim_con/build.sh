#!/usr/bin/env bash

set -eo pipefail

echo
echo "origin: $(git remote get-url origin)"
echo "branch: $(git rev-parse --abbrev-ref HEAD)"
echo "commit: $(git rev-parse HEAD | cut -c1-7)"

if [[ ${DANGER} = true ]]; then
    build_kind=danger
else
    build_kind=release
fi

compiler="${1}"
if [[ -z "${compiler}" ]]; then
    if [[ $(uname) = Darwin ]]; then
        compiler=clang
    else
        compiler=gcc
    fi
fi
## hardwired
# compiler=clang

echo
echo "\$compiler=${compiler}"
echo "${compiler}" --version
"${compiler}" --version

rm -rf nimcache

echo
nim c -d:${build_kind} \
      --cc:"${compiler}" \
      related_con.nim
