#!/usr/bin/env bash

set -eo pipefail

nproc=${1}
if [[ -z "${nproc}" ]]; then
    nproc=4
fi
## hardwired
# nproc=4

threads=$((1 * ${nproc}))

chansize=${2}
if [[ -z "${chansize}" ]]; then
    chansize=$((2 * ${threads}))
fi
## hardwired
# chansize=16

profdata="default.profdata"
profraw="default.profraw"

if [[ ${DANGER} = true ]]; then
    build_kind=danger
else
    build_kind=release
fi

nim c -d:FixedChanSize=${chansize} \
      -d:ThreadPoolSize=${threads} \
      -d:${build_kind} \
      related_con.nim
