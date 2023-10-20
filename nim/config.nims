import std/os

const
  cfgPath = currentSourcePath.parentDir
  cacheSubdirHead = joinPath(cfgPath, "nimcache")
  cacheSubdir = joinPath(cacheSubdirHead,
    (if defined(release): "release" else: "debug"), projectName())

switch("nimcache", cacheSubdir)
switch("opt", "speed")
switch("panics", "off")
switch("passC", "-flto=auto")
switch("passL", "-flto=auto")

when defined(profileGen):
  echo "Build with profileGen"
  switch("passC", "-fprofile-generate")
  switch("passL", "-fprofile-generate")

when defined(profileUse):
  echo "Build with profileUse"
  switch("passC", "-fprofile-use")
  switch("passL", "-fprofile-use")
  switch("passL", "-s")
