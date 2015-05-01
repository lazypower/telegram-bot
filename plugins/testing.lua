do
	api_root = "http://pokeapi.co/"
	api_pokedex = "api/pokedex/1/"

	local function run(msg, matches)
		local pokemon = matches[1];

		if full_pokedex == nil then
	  		local pokedex_request = httpRequest(api_root..api_pokedex)
	  		full_pokedex = pokedex_request.pokemon
		end

		return full_pokedex[1].name

		-- for dex = 1, #full_pokedex do
		-- 	if pokemon == full_pokedex[dex].name then
		-- 		return full_pokedex[dex].resource_uri
		-- 	end
		-- end

		return "pokemon not found :["
	end

	return {
	  description = "This description is a shitpost until further notice xD :P :^)",
	  usage = "!echo_test [whatever]: echoes the msg",
	  patterns = {
	    "^!ichooseyou (.*)$"
	  }, 
	  run = run 
	}

end
