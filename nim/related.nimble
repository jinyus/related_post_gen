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

task buildopt, "build optimized":
  exec "nimble -d:profileGen -d:release build"
  echo "Gen stat"
  exec "./related > /dev/null"
  exec "llvm-profdata merge default.profraw --output default.profdata"
  exec "nimble -d:profileUse -d:release build"

