do

function run(msg, matches)
  return "I'm hosted on github at: https://github.com/chuckbutler/telegram-bot \n Fork me and propose a merge to the 'Deploy' branch"
end

return {
  description = "Want to patch me?",
  usage = "!patch",
  patterns = {"^!patch"},
  run = run
}

end
