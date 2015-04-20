do

local function add_to_playlist(video)

end

local function run(msg, matches)
  local out = os.execute('python scripts/youtube_playlist.py '.. matches[1])
end

return {
  description = "Add videos to a youtube playlist",
  usage = "!playlist",
  patterns = {"^!playlist (.*)"},
  run = run
}

end
