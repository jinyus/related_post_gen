switch("opt", "speed")
switch("cc", "gcc")
switch("panics", "off")
switch("passC", "-s -flto")
switch("passL", "-s -flto")

when defined(profileGen):
  echo "Build with profileGen"
  switch("cc", "clang")
  switch("passC", "-fprofile-instr-generate")
  switch("passL", "-fprofile-instr-generate")

when defined(profileUse):
  echo "Build with profileUse"
  switch("cc", "clang")
  switch("passC", "-fprofile-instr-use")
  switch("passL", "-fprofile-instr-use")

