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

if [[ ${DANGER} = true ]]; then
    build_kind=danger
else
    build_kind=release
fi

echo "Compiling profiled executable"
rm -rf default*.prof* nimcache
nim c -d:FixedChanSize=${chansize} \
      -d:ThreadPoolSize=${threads} \
      -d:profileGen \
      -d:${build_kind} \
      related_con.nim

echo "Generating profile"
./build/related_con >/dev/null
if [[ "$(cc --version 2>/dev/null | head -1)" = *"clang"* ]]; then
    if [[ -n "$(which xcrun 2>/dev/null)" ]]; then
        xcrun llvm-profdata merge default*.profraw --output default.profdata
    else
        llvm-profdata merge default*.profraw --output default.profdata
    fi
fi

echo "Compiling optimized executable"
nim c -d:FixedChanSize=${chansize} \
      -d:ThreadPoolSize=${threads} \
      -d:profileUse \
      -d:${build_kind} \
      related_con.nim
