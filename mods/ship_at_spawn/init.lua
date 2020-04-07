minetest.register_node(":water:chest_air", {
	description = "Hacker",
    drawtype = "airlike",
    paramtype = "light",
    sunlight_propagates = true,

    walkable     = false, -- Would make the player collide with the air node
    pointable    = false, -- You can't select the node
    diggable     = false, -- You can't dig the node
    buildable_to = true,  -- Nodes can be replace this node.
                          -- (you can place a node and remove the air node
                          -- that used to be there)
    drop = "",
    groups = {not_in_creative_inventory=1}
})
minetest.register_node(":water:charger_air", {
	description = "Hacker",
    drawtype = "airlike",
    paramtype = "light",
    sunlight_propagates = true,

    walkable     = false, -- Would make the player collide with the air node
    pointable    = false, -- You can't select the node
    diggable     = false, -- You can't dig the node
    buildable_to = true,  -- Nodes can be replace this node.
                          -- (you can place a node and remove the air node
                          -- that used to be there)
    drop = "",
    groups = {not_in_creative_inventory=1}
})

math.randomseed(os.time())
minetest.register_abm({
	nodenames = {"water:chest_air"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name="default:chest", param2 = minetest.dir_to_facedir({x=0,y=0,z=-1})})
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:add_item("main", "phaser:battery "..math.random(1, 3))
		inv:add_item("main", "water:stove")
		--inv:add_item("main", "3d_armor:helmet_scuba")
	end,
})

minetest.register_abm({
	nodenames = {"water:charger_air"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name="water:charger", param2 = minetest.dir_to_facedir({x=0,y=0,z=1})})
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:add_item("src", "gunslinger:phaser")
	end,
})

local input = {}
input = io.open(minetest.get_worldpath().."/hasPlayerJoined","r")

minetest.register_on_joinplayer(function(player)
	if not input then
	--	minetest.chat_send_all("Player joined for first time, placing base ")
		local output = io.open(minetest.get_worldpath().."/hasPlayerJoined","w")
		output:write("true")
		io.close(output)
		input = io.open(minetest.get_worldpath().."/hasPlayerJoined","r")
		local pos_below = {x=player:get_pos().x-2, y=player:get_pos().y-2, z=player:get_pos().z-4}
		minetest.place_schematic(pos_below, minetest.get_modpath("ship_at_spawn") .. "/schematics/pod_1.mts", 360, {["water:charger"] = "water:charger_air",["default:chest"] = "water:chest_air"}, true)
		--minetest.add_entity(vector.new(player:get_pos().x, player:get_pos().y, player:get_pos().z), "water:shark_repellant")
		io.close(input)
	else
		--minetest.chat_send_all("Player has already joined for first time ")
	end
end)
--[[
minetest.register_entity(":water:shark_repellant",{
	-- common props
physical = false,
stepheight = 0,				
collide_with_objects = false,
collisionbox = {-0.02, -0.02, -0.02, 0.02, 0.02, 0.02},
visual = "sprite",
--mesh = "water_life_buoy.b3d",
textures = {"trans.png"},
--visual_size = {x = 5, y = 5},
static_save = true,
makes_footstep_sound = false,
on_step = mobkit.stepfunc,	-- required
on_activate = mobkit.actfunc,		-- required
get_staticdata = mobkit.statfunc,
springiness=0,
--buoyancy = 0.93,					-- portion of hitbox submerged
max_speed = 0,    
jump_height = 0,
view_range = 16,
--	lung_capacity = 0, 		-- seconds
max_hp = 65535,
timeout = 0,
brainfunc = function(self) return end,
on_punch=function(self, puncher, time_from_last_punch, tool_capabilities, dir)
return
end,
	
on_rightclick = function(self, clicker)
return
end,
	
})
]]