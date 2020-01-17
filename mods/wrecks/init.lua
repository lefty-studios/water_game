minetest.register_decoration({
	name = "water:wreckage_wing",
	deco_type = "schematic",
	place_on = {"group:biome_sand","default:sand"},
	place_offset_y = 0,
	sidelen = 1,
	noise_params = {
		offset = 0.00001,
		scale = 0.00001,
		spread = {x = 100000, y = 100000, z = 100000},
		seed = 89462,
		octaves = 20,
		persist = 0.7
	},
	y_max = 8,
	y_min = 8,
	flags = "force_placement",
	schematic = minetest.get_modpath(minetest.get_current_modname()) .. "/schematics/wing_one.mts",
	param2 = 48,
	param2_max = 96,
})

minetest.register_decoration({
	name = "water:buried_pod",
	deco_type = "schematic",
	place_on = {"group:biome_sand","default:sand"},
	place_offset_y = -4,
	sidelen = 800,
	fill_ratio = 0.0002,
	y_max = 8,
	y_min = 8,
	flags = "force_placement",
	schematic = minetest.get_modpath(minetest.get_current_modname()) .. "/schematics/buried_pod.mts",
	param2 = 48,
	param2_max = 96,
})
--[[
minetest.register_decoration({
	name = "water:pod_on_water",
	deco_type = "schematic",
	place_on = {"default:water_source"},
	place_offset_y = 0,
	sidelen = 800,
	fill_ratio = 0.0002,
	y_max = 26,
	y_min = 25,
	schematic = minetest.get_modpath(minetest.get_current_modname()) .. "/schematics/pod.mts",
	--schematic = minetest.get_modpath("ship_at_spawn") .. "/schematics/pod.mts", {["default:chest"] = "water:chest_air"}, true,
	--flags = "liquid_surface",
})
]]--

minetest.register_node(":water:wreck_chest_air", {
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
	nodenames = {"water:wreck_chest_air"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name="default:chest", param2 = minetest.dir_to_facedir({x=0,y=0,z=-1})})
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:add_item("main", "phaser:battery "..math.random(3, 5))
		inv:add_item("main", "gunslinger:phaser")
		inv:add_item("main", "3d_armor:helmet_scuba")
	end,
})