switch("passC", "-s -flto=auto")
switch("passL", "-s -flto=auto")
switch("threads", "off")

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
