import std/os

const
  cfgPath = currentSourcePath.parentDir
  cacheSubdirHead = joinPath(cfgPath, "nimcache")
  cacheSubdirTail = joinPath(relativePath(projectDir(), cfgPath), projectName())
  cacheSubdir = joinPath(cacheSubdirHead,
    (if defined(release): "release" else: "debug"), cacheSubdirTail)

switch("nimcache", cacheSubdir)

--cc:clang
--outdir:build
--threads:off

when defined(profileGen):
  echo "Compiling profiled executable"
  --hints:off
  --passC:"-fprofile-instr-generate"
  --passL:"-fprofile-instr-generate"

when defined(profileUse):
  echo "Compiling optimized executable"
  when defined(macosx):
    exec "xcrun llvm-profdata merge -output=default.profdata default.profraw"
  else:
    # hardwired for llvm-profdata in $PATH on Ubuntu 22.04
    exec "llvm-profdata-14 merge -output=default.profdata default.profraw"
  --passC:"-fprofile-instr-use"
  --passL:"-fprofile-instr-use"

when defined(release):
  --passC:"-flto"
  --passL:"-flto"
  when not defined(profileGen):
    --passL:"-s"
else:
  --debugger:native
  --define:debug
  --linetrace:on
  --stacktrace:on
