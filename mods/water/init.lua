local path = minetest.get_modpath(minetest.get_current_modname())
dofile(path .. "/mapgen.lua")
dofile(path .. "/tools.lua")
dofile(path .. "/ores.lua")

minetest.register_node(":default:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "default_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	--light_propagates = true,
	--sunlight_propagates = true,
	drop = "",
	drowning = 0,
	liquidtype = "source",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = 4.5,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	--post_effect_color = {a = 50, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node(":default:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	tiles = {"default_water.png"},
	special_tiles = {
		{
			name = "default_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "default_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	--light_propagates = true,
	--sunlight_propagates = true,
	drop = "",
	drowning = 0,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = 4.5,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})



minetest.register_node(":default:hot_water_source", {
	description = "Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "default_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	--light_propagates = true,
	sunlight_propagates = true,
	drop = "",
	drowning = 0,
	liquidtype = "source",
	liquid_alternative_flowing = "default:hot_water_flowing",
	liquid_alternative_source = "default:hot_water_source",
	liquid_viscosity = 1,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 103, r = 100, g = 100, b = 100},
	groups = {water = 3, liquid = 3, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node(":default:hot_water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	tiles = {"default_water.png"},
	special_tiles = {
		{
			name = "default_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "default_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	--light_propagates = true,
	sunlight_propagates = true,
	drop = "",
	drowning = 0,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:hot_water_flowing",
	liquid_alternative_source = "default:hot_water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 100, g = 100, b = 100},
	--post_effect_color = {a = 50, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	damage_per_second = 4 * 2,
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("water:lava_source", {
	description = "Lava Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_lava_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
		{
			name = "default_lava_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "water:lava_flowing",
	liquid_alternative_source = "water:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {liquid = 2},
})

minetest.register_node("water:lava_flowing", {
	description = "Flowing Lava",
	drawtype = "flowingliquid",
	tiles = {"default_lava.png"},
	special_tiles = {
		{
			name = "default_lava_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "default_lava_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "water:lava_flowing",
	liquid_alternative_source = "water:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {liquid = 2,
		not_in_creative_inventory = 1},
})


minetest.register_node("water:coral_glow", {
	description = "Glow Coral",
	tiles = {"default_coral_yellow.png"},
	paramtype = "light",
	light_source = 10,
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	type = "fuel",
	recipe = "water:coral_glow",
	burntime = 7,
})

minetest.register_craftitem("water:coral_stick", {
	description = "Coral Stick",
	inventory_image = "coral_stick.png",
	groups = {stick = 1},
})

minetest.register_craft({
	output = "water:coral_stick 2",
	recipe = {
		{"default:coral_pink"}
	}
})
minetest.register_craft({
	output = "default:stick 2",
	recipe = {
		{"water:driftwood"}
	}
})


function register_coral (color, name)

minetest.register_node("water:"..color.."_coral", {
	description = name.." Coral",
	tiles = {"default_coral_"..color..".png"},
	--tiles = {"default_coral_brick.png^[colorize:#19ed96:75"},
	groups = {cracky = 3, coral = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("water:"..color.."_coral_brick", {
	description = name.." Coral Brick",
	tiles = {"default_coral_"..color..".png^water_overlay_brick.png"},
	--tiles = {"default_coral_brick.png^[colorize:#19ed96:75"},
	groups = {cracky = 3,coral = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "water:"..color.."_coral_brick 4",
	recipe = {
		{"", "", ""},
		{"water:"..color.."_coral", "water:"..color.."_coral", ""},
		{"water:"..color.."_coral", "water:"..color.."_coral", ""}
	}
})

doors.register("door_"..color.."coral", {
		tiles = {"doors_door_coral_"..color..".png"},
		description = name.." Coral Door",
		inventory_image = "doors_item_"..color..".png",
		groups = {cracky=3},
		sounds = default.node_sound_glass_defaults(),
		sound_open = "doors_glass_door_open",
		sound_close = "doors_glass_door_close",
		recipe = {
			{"water:"..color.."_coral_brick", "water:"..color.."_coral_brick"},
			{"water:"..color.."_coral_brick", "water:"..color.."_coral_brick"},
			{"water:"..color.."_coral_brick", "water:"..color.."_coral_brick"},
		},
})

end

register_coral("teal", "Teal")
register_coral("purple","Purple")
minetest.register_alias("water:pink_coral", "water:purple_coral")
register_coral("red","Red")
register_coral("orange","Orange")
register_coral("brown","Brown")
minetest.register_alias_force("default:coral_orange", "water:orange_coral")
minetest.register_alias_force("default:coral_brown", "water:brown_coral")

minetest.register_node("water:chest_air", {
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

--
-- Stone
--
minetest.register_node("water:sea_stone", {
	description = "Sea Stone",
	tiles = {"default_stone.png^[colorize:#008b82:100"},
	groups = {cracky = 3, stone = 1},
	drop = 'water:sea_cobble',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("water:sea_cobble", {
	description = "Sea Cobblestone",
	tiles = {"default_cobble.png^[colorize:#008b82:100"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("water:sea_stonebrick", {
	description = "Sea Stone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_stone_brick.png^[colorize:#008b82:100"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
--[[
minetest.register_node("water:sea_stone_block", {
	description = "Sea Stone Block",
	tiles = {"default_stone_block.png^[colorize:#008b82:100"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})]]

minetest.register_node("water:magma", {
	description = "Magma",
	tiles = {"water_magma.png"},
	groups = {cracky = 2},
	paramtype = "light",
	light_source = 14,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	type = "fuel",
	recipe = "water:magma",
	burntime = 15,
})

minetest.register_abm({
    nodenames = {"water:magma"},
	neighbors = {"group:water"},
    interval = 10,
    chance = 60,
    action = function(pos, node)
        minetest.add_particlespawner(
            5,
            2,
            {x=pos.x-0.01, y=pos.y-0.25, z=pos.z-0.01},
            {x=pos.x+0.01, y=pos.y+0.25, z=pos.z+0.01},
            {x=-0.2, y=-0.8, z=-0.2},
            {x=0, y=0.8, z=0},
            {x=0,y=0,z=0},
            {x=0,y=0,z=0},
            1.4,
            2.5,
            1,
            2,
            false,
            "bubble.png"
        )
    end,
})

minetest.register_craft({
	output = 'water:sea_stonebrick 4',
	recipe = {
		{'water:sea_stone', 'water:sea_stone'},
		{'water:sea_stone', 'water:sea_stone'},
	}
})

minetest.register_craft({
	output = 'water:sea_stone_block 9',
	recipe = {
		{'water:sea_stone', 'water:sea_stone', 'water:sea_stone'},
		{'water:sea_stone', 'water:sea_stone', 'water:sea_stone'},
		{'water:sea_stone', 'water:sea_stone', 'water:sea_stone'},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "water:sea_stone",
	recipe = "water:sea_cobble",
})

minetest.register_node("water:driftwood", {
	description = "Driftwood",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"water_drift_wood.png", "water_drift_wood_bottomn.png"},
	inventory_image = "water_drift_wood.png",
	wield_image = "water_drift_wood.png",
	liquids_pointable = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	node_placement_prediction = "",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -31 / 64, -0.5, 0.5, -15 / 32, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, -15 / 32, 7 / 16}
	},
	drop = 'default:stick 2',
})
