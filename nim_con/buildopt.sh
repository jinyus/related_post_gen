#!/usr/bin/env bash

set -eo pipefail

nproc=${1}
if [[ -z "${nproc}" ]]; then
    nproc=4
fi
## hardwired
# nproc=4

threads=$((2 * ${nproc}))

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

echo "Compiling profiled executable"
nim c -d:FixedChanSize=${chansize} \
      -d:ThreadPoolSize=${threads} \
      -d:profileGen \
      -d:${build_kind} \
      related_con.nim

echo "Generating profile"
./build/related_con >/dev/null
if [[ "$(uname)" = "Darwin" ]]; then
    xcrun llvm-profdata merge -output="${profdata}" "${profraw}"
else
    llvm-profdata merge -output="${profdata}" "${profraw}"
fi

echo "Compiling optimized executable"
nim c -d:FixedChanSize=${chansize} \
      -d:ThreadPoolSize=${threads} \
      -d:profileUse \
      -d:${build_kind} \
      related_con.nim
