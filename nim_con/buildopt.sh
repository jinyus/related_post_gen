#!/usr/bin/env bash

set -eo pipefail

if [[ ${DANGER} = true ]]; then
    build_kind=danger
else
    build_kind=release
fi

rm -rf default*.prof* nimcache

echo "Compiling profiled executable"
nim c -d:${build_kind} \
      -d:profileGen \
      related_con.nim

echo "Generating profile"
cd ..
cp posts.json posts_orig.json
python gen_fake_posts.py 60000
cd nim_con
./build/related_con >/dev/null
cd ..
mv posts_orig.json posts.json
cd nim_con
if [[ "$(cc --version 2>/dev/null | head -1)" = *"clang"* ]]; then
    if [[ -n "$(which xcrun 2>/dev/null)" ]]; then
        xcrun llvm-profdata merge default*.profraw --output default.profdata
    else
        llvm-profdata merge default*.profraw --output default.profdata
    fi
fi

echo "Compiling optimized executable"
nim c -d:${build_kind} \
      -d:profileUse \
      related_con.nim
