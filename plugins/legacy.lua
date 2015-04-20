do

local function run(msg, matches)

  local image_map = {}
  image_map["awyee"] = "http://i.imgur.com/Fpyzmcg.png"
  image_map["(bender)"] = "http://i.imgur.com/VwiWAIX.png"
  image_map["(br)"] = "http://i.imgur.com/UeQPhSV.png"
  image_map["(crabnicholson)"] = "http://i.imgur.com/FITON1H.png"
  image_map["(crabs)"] = "http://i.imgur.com/LyoOMj7.gif"
  image_map["(creeper)"] = "http://i.imgur.com/d1i3vhX.jpg"
  image_map["(dayumshame)"] = "http://i.imgur.com/mYLpsH5.png"
  image_map["(dickception)"] = "http://i.imgur.com/7diN3BA.png"
  image_map["(dolan)"] = "http://i.imgur.com/YgimOD4.png"
  image_map["(drew)"] = "http://i.imgur.com/VcajMez.png"
  image_map["(fail)"] = "http://i.imgur.com/Xj1epMq.png"
  image_map["(fuckie)"] = "http://i.imgur.com/jjMX80X.png"
  image_map["(gersberms)"] = "http://i.imgur.com/aT28nd0.png"
  image_map["(gooby)"] = "http://i.imgur.com/8SxqpzA.png"
  image_map["(gragg)"] = "http://i.imgur.com/b7jhkNa.png"
  image_map["(ifeelsyah)"] = "http://i.imgur.com/MnoK03N.png"
  image_map["(impossibru)"] = "http://i.imgur.com/lqzlkj5.png"
  image_map["(isee)"] = "http://i.imgur.com/0Xy4W42.png"
  image_map["(isnomz)"] = "http://i.imgur.com/yNQzv5T.png"
  image_map["(kodiak)"] = "http://i.imgur.com/CTu7SSK.png"
  image_map["(mahnigga)"] = "http://i.imgur.com/U5spNGB.png"
  image_map["(mucho)"] = "http://i.imgur.com/Acic9k6.png"
  image_map["(muffins)"] = "http://i.imgur.com/ndV3fjY.png"
  image_map["(no)"] = "http://i.imgur.com/81OreVD.png"
  image_map["(noob)"] = "http://i.imgur.com/23A41gK.png"
  image_map["(pedo)"] = "http://i.imgur.com/QCf5Twh.png"
  image_map["(repost)"] = "http://i.imgur.com/eBvRcIN.png"
  image_map["(rustled)"] = "http://i.imgur.com/iwUuX6Z.png"
  image_map["fuck this"] = "http://i.imgur.com/tYYIvcH.gif"
  print("Matched ".. matches[1])
  local reciever = get_receiver(msg)
  print("Receiver"..receiver)
  local image_url = image_map[matches[1]]
  send_photo_from_url(reciever, image_url)
 end

return {
  description = "Super secret emoticons",
  usage = "Its a secret",
  patterns = {
              "^awyee",
              "^%(bender%)",
              "^%(br%)",
              "^%(crabnicholson%)",
              "^%(crabs%)",
              "^%(creeper%)",
              "^%(dayumshame%)",
              "^%(dickception%)",
              "^%(dolan%)",
              "^%(drew%)",
              "^%(fail%)",
              "^%(fuckie%)",
              "^%(gersberms%)",
              "^%(gooby%)",
              "^%(gragg%)",
              "^%(ifeelsyah%)",
              "^%(impossibru%)",
              "^%(isee%)",
              "^%(isnomz%)",
              "^%(kodiak%)",
              "^%(mahnigga%)",
              "^%(mucho%)",
              "^%(muffins%)",
              "^%(no%)",
              "^%(noob%)",
              "^%(pedo%)",
              "^%(repost%)",
              "^%(rustled%)",
              "^fuck this",
             },
  run = run
}

end
