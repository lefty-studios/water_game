local update_interval = 0.5
local sprint_length = 8
local timer = 0

minetest.register_globalstep(function(dtime)
	timer = timer + dtime
	if timer >= update_interval then
		for _,player in ipairs(minetest.get_connected_players()) do
			local name = player:get_player_name()
			local breath = player:get_breath()
			local privs = minetest.get_player_privs(name)
			local old_breath  = player:get_attribute("old_breath") or 11
			local sprint_time = player:get_attribute("sprint_time") or 0
			local controls = player:get_player_control()
			
			if controls["aux1"] and 
					( controls["up"] or controls["down"] or controls["left"] or controls["right"] ) and privs.fast then
				sprint_time = sprint_time + timer

				breath = old_breath - ( sprint_time * (11 / sprint_length) )
			else
				player:set_attribute("old_breath", breath)
				sprint_time = 0
			end

			if breath == 11 then
				privs.fast = true
			elseif breath < 1 then
				privs.fast = nil
			end
			minetest.set_player_privs(name, privs)
			player:set_attribute("sprint_time", sprint_time)
			player:set_breath(breath)
		end
		timer = 0
	end
end)
