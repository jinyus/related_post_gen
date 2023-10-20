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
  exec "gcc --version 2>/dev/null | head -1"
  exec "clang --version 2>/dev/null | head -1"
  exec "rm -rf default*.prof* nimcache"
  exec "nimble --silent build -d:profileGen -d:release"
  echo "Gen stats"
  exec "./related > /dev/null"
  when defined(clang):
    when defined(macosx):
      exec "xcrun llvm-profdata merge default*.profraw --output default.profdata"
    else:
      exec "llvm-profdata merge default*.profraw --output default.profdata"
  exec "nimble --verbose build -d:profileUse -d:release"
