import std/os

const
  cfgPath = currentSourcePath.parentDir
  cacheSubdirHead = joinPath(cfgPath, "nimcache")
  cacheSubdir = joinPath(cacheSubdirHead,
    (if defined(release): "release" else: "debug"), projectName())

switch("nimcache", cacheSubdir)

--mm:arc
--outdir:build
--tlsEmulation:off # default on|off varies by platform
--warning:"Effect:off" # suppress noisy compiler warnings re: malebolgia

when defined(profileGen):
  --hints:off
  --passC:"-fprofile-generate"
  --passL:"-fprofile-generate"

when defined(profileUse):
  --passC:"-fprofile-use"
  --passL:"-fprofile-use"

when defined(release):
  --passC:"-flto=auto"
  --passL:"-flto=auto"
  when not defined(profileGen):
    --passL:"-s"
else:
  --debugger:native
  --define:debug
  --linetrace:on
  --stacktrace:on
