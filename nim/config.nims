switch("opt", "speed")
switch("cc", "clang")
switch("panics", "off")
switch("passC", "-flto")
switch("passL", "-flto")

when defined(profileGen):
  echo "Build with profileGen"
  switch("passC", "-fprofile-instr-generate")
  switch("passL", "-fprofile-instr-generate")

when defined(profileUse):
  echo "Build with profileUse"
  switch("passC", "-fprofile-instr-use")
  switch("passL", "-fprofile-instr-use")

