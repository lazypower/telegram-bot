do

function run(msg, matches)
  return 'Fork me! Im on Github '.. [[ 
  Checkout http://git.io/vvNg4
  ]]
end

return {
  description = "Shows bot developer info", 
  usage = "!patch: Shows how to patch the bot",
  patterns = {
    "^!patch$"
  }, 
  run = run 
}

end
