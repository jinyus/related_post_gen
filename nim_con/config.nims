import std/os

const
  cfgPath = currentSourcePath.parentDir
  cacheSubdirHead = joinPath(cfgPath, "nimcache")
  cacheSubdir = joinPath(cacheSubdirHead,
    (if defined(release): "release" else: "debug"), projectName())

switch("nimcache", cacheSubdir)

--cc:clang
--outdir:build
--threads:on
--tlsEmulation:off
--warning:"Effect:off"

when defined(profileGen):
  --hints:off
  --passC:"-fprofile-instr-generate"
  --passL:"-fprofile-instr-generate"

when defined(profileUse):
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
