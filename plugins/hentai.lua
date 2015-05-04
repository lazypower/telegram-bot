do
local URL = "http://danbooru.donmai.us"
local URL_POP = "/explore/posts/popular.json"

local function get_post(url)
  local b, c, h = http.request(url)
  local posts = json:decode(b)

  -- bad random - bad magic...
  math.randomseed( os.time() )
  math.random(#posts)
  math.random(#posts)

  return posts[math.random(#posts)]
end

local function run(msg, matches)

  local url = URL

  url = url .. URL_POP
  local post = get_post(url)

  local receiver = get_receiver(msg)
  local img = URL .. post.large_file_url
  send_photo_from_url(receiver, img)
end

return {
  description = "Hentai so kawaii",
  usage = {
    "!hentai - Tentacles? 🔞",
      },
  patterns = {
      "^!hentai",
      },
  run = run
}

end
