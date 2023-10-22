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

rm -rf default*.prof* nimcache

echo "Compiling profiled executable"
nim c -d:${build_kind} \
      --cc:"${compiler}" \
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
if [[ "${compiler}" = *"clang"* ]]; then
    if [[ -n "$(which xcrun 2>/dev/null)" ]]; then
        xcrun llvm-profdata merge default*.profraw --output default.profdata
    else
        llvm-profdata merge default*.profraw --output default.profdata
    fi
fi

echo "Compiling optimized executable"
nim c -d:${build_kind} \
      --cc:"${compiler}" \
      -d:profileUse \
      related_con.nim
