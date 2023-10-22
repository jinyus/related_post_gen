#!/usr/bin/env bash

set -eo pipefail

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
echo "\${compiler} = ${compiler}"
echo "${compiler}" --version
"${compiler}" --version
echo

rm -rf nimcache

nim c -d:${build_kind} \
      --cc:"${compiler}" \
      related_con.nim
