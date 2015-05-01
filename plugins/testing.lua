local function run(msg, matches)
  return matches[1]
end

return {
  description = "This description is a shitpost until further notice xD :P :^)",
  usage = "!echo_test [whatever]: echoes the msg",
  patterns = {
    "^!echo_test (.*)$"
  }, 
  run = run 
}
