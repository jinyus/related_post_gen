# Package

version       = "0.1.0"
author        = "jinyus"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin           = @["related"]


# Dependencies

requires "nim >= 2.0.0"
requires "jsony"
requires "xxhash"

const STAT_STEPS = 10

task buildopt, "build optimized":
  exec "rm -f default.profdata default.profraw.*"
  exec "nimble -d:profileGen -d:release build"
  for i in 1..STAT_STEPS:
    echo "Gen stat ", i, "/", STAT_STEPS
    exec "./related > /dev/null"
    mvFile "default.profraw", "default.profraw." & $i
  when defined(macosx):
    exec "xcrun llvm-profdata merge default.profraw.* --output default.profdata"
  else:
    exec "llvm-profdata merge default.profraw.* --output default.profdata"
  exec "nimble -d:profileUse -d:release build"
