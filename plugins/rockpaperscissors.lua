do

local function prep_chart(cb_extra, success, result)
    local receiver = cb_extra.receiver
    local chart_url = cb_extra.gif_url
    send_document_from_url(receiver, chart_url)
end

local function run(msg, matches)
  if matches[1] == "!chart" then
    local text = "Have a chart, everybody love charts"
    local chart_url = "http://a.tgcdn.net/images/products/additional/large/db01_lizard_spock.jpg"
    local cb_extra = {
        chart_url = chart_url,
        receiver = receiver
    }
    send_msg(receiver, text, prep_chart, cb_extra)
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
