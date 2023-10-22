#!/usr/bin/env bash

set -eo pipefail

if [[ ${DANGER} = true ]]; then
    build_kind=danger
else
    build_kind=release
fi

rm -rf nimcache

nim c -d:${build_kind} \
      related_con.nim
