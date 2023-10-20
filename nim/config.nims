switch("opt", "speed")
switch("panics", "off")
switch("passC", "-s -flto")
switch("passL", "-s -flto")

when defined(profileGen):
  echo "Build with profileGen"
  switch("passC", "-fprofile-generate")
  switch("passL", "-fprofile-generate")

when defined(profileUse):
  echo "Build with profileUse"
  switch("passC", "-fprofile-use")
  switch("passL", "-fprofile-use")
