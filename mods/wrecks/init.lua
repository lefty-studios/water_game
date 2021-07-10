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
	fill_ratio = 0.000002,
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

minetest.register_node(":water:corpse_air", {
	description = "Hacker",
    drawtype = "airlike",
    paramtype = "light",
    sunlight_propagates = true,

    walkable     = false, -- Would make the player collide with the air node
    pointable    = false, -- You can't select the node
    diggable     = false, -- You can't dig the node
    buildable_to = false,  -- Nodes can be replace this node.
                          -- (you can place a node and remove the air node
                          -- that used to be there)
    drop = "",
    groups = {not_in_creative_inventory=1}
})



math.randomseed(os.time())
minetest.register_abm({
	nodenames = {"water:corpse_air"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name="wrecks:corpse"})
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:add_item("main", "phaser:battery "..math.random(1, 3))
		inv:add_item("main", "phaser:phaser")
		--inv:add_item("main", "3d_armor:helmet_scuba")
	end,
})

minetest.register_node("wrecks:corpse", {
    drawtype = "mesh",

    -- Holds the texture for each "material"
    tiles = {
        "character.png"
    },
	description = "Corpse",
    -- Path to the mesh
    mesh = "death_character.obj",
	drop = "bones:bones",
	paramtype2 = "facedir",
	groups = {dig_immediate = 2},
	on_construct = function(pos, placer)
        local meta = minetest.get_meta(pos)
        meta:set_string("formspec",
		"size[8,9]" ..
		"list[current_name;main;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[current_name;main]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85))
		local inv = meta:get_inventory()
		inv:set_size("main", 8 * 4)
	end,
	can_dig = function(pos, player)
		local inv = minetest.get_meta(pos):get_inventory()
		return inv:is_empty("main")
	end,

	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		return count
	end,

	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		return 0
	end,

	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		return stack:get_count()
	end,

})
--[[
minetest.register_decoration({
	name = "water:corpse",
	deco_type = "simple",
		place_on = {"default:sand","group:biome_sand"},
	sidelen = 16,
		fill_ratio =1,
	y_max = 3100,
	y_min = -3100,
	decoration = "wrecks:corpse",
})]]