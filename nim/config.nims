import std/os

const
  cfgPath = currentSourcePath.parentDir
  cacheSubdirHead = joinPath(cfgPath, "nimcache")
  cacheSubdir = joinPath(cacheSubdirHead,
    (if defined(release): "release" else: "debug"), projectName())

switch("cc", "clang")
switch("nimcache", cacheSubdir)
switch("passC", "-flto")
switch("passL", "-flto")
when not defined(profileGen):
  switch("passL", "-s")
switch("threads", "off")

when defined(profileGen):
  echo "Build with profileGen"
  switch("passC", "-fprofile-instr-generate")
  switch("passL", "-fprofile-instr-generate")

when defined(profileUse):
  echo "Build with profileUse"
  switch("passC", "-fprofile-instr-use")
  switch("passL", "-fprofile-instr-use")
