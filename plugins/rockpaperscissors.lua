do

local function run(msg, matches)
  if matches[1] == "!chart" then
    local chart_url = "http://a.tgcdn.net/images/products/additional/large/db01_lizard_spock.jpg"
    send_photo_from_url(receiver, chart_url)
  else
    local answers = {'Rock', 'Paper', 'Scissors', 'Lizard', 'Spock'}
    return answers[math.random(#answers)]
  end
end

return {
  description = "Settle Arguments",
  usage = {
           "!rps: Play rock paper scissors lizard spock",
           "!chart: Forgot the rules? look at the chart"
           },
  patterns = {
              "^!rps",
              "^!chart"
             },
  run = run
}

end
