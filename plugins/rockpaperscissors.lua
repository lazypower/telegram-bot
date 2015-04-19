do

local function run(msg, matches)
  if matches[1] == "!rpshelp" then
    local chart_url = "http://a.tgcdn.net/images/products/additional/large/db01_lizard_spock.jpg"
    send_document_from_url(receiver, chart_url)
  else
    local answers = {'Rock', 'Paper', 'Scissors', 'Lizard', 'Spock'}
    return answers[math.random(#answers)]
  end
end

return {
  description = "Settle Arguments",
  usage = {
           "!rps: Play rock paper scissors lizard spock",
           "!rpschart: Forgot the rules? look at the chart"
           },
  patterns = {
              "^!rps",
              "^!rpshelp"
             },
  run = run
}

end
