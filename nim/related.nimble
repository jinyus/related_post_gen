# Package

version       = "0.1.0"
author        = "jinyus"
description   = "Nim implementation for related_post_gen"
license       = "MIT"
srcDir        = "src"
bin           = @["related"]


# Dependencies

requires "nim >= 2.0.0"
requires "jsony#head"
requires "xxhash"

task buildopt, "build optimized":
  exec "rm -f default.prof*"
  exec "nimble -d:profileGen -d:release build"
  echo "Gen stat"
  exec "./related > /dev/null"
  when defined(macosx):
    exec "xcrun llvm-profdata merge default.profraw --output default.profdata"
  else:
    exec "llvm-profdata merge default.profraw --output default.profdata"
  exec "nimble --verbose -d:profileUse -d:release build"
