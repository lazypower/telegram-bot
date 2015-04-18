do

function run(msg, matches)
  return "^.^ - nahm"
end

return {
  description = "Give octobot a treat",
  usage = "!botsnack",
  patterns = {"^!botsnack"},
  run = run
}

end
