local path = minetest.get_modpath(minetest.get_current_modname())
dofile(path .. "/mapgen.lua")
dofile(path .. "/tools.lua")

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
	sunlight_propagates = true,
	drop = "",
	drowning = 0,
	liquidtype = "source",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = 1,
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
	sunlight_propagates = true,
	drop = "",
	drowning = 0,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = 0.5,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	--post_effect_color = {a = 50, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("water:coral_glow", {
	description = "Glow Coral",
	tiles = {"default_coral_yellow.png"},
	paramtype = "light",
	light_source = 10,
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

--[[
minetest.register_node("water:pink_coral", {
	description = "Pink Coral",
	--tiles = {"default_coral.png^[colorize:#fd16d5:75"},
	tiles = {"default_coral_purple.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("water:teal_coral", {
	description = "Teal Coral",
	tiles = {"default_coral_teal.png"},
	--tiles = {"default_coral.png^[colorize:#19ed96:75"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "water:teal_coral_brick",
	recipe = {
		{"", "", ""},
		{"water:teal_coral", "water:teal_coral", ""},
		{"water:teal_coral", "water:teal_coral", ""}
	}
})

minetest.register_node("water:teal_coral_brick", {
	description = "Teal Coral Brick",
	tiles = {"default_coral_teal.png^water_overlay_brick.png"},
	--tiles = {"default_coral_brick.png^[colorize:#19ed96:75"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
]]


function register_coral (color, name)

minetest.register_node("water:"..color.."_coral", {
	description = name.." Coral",
	tiles = {"default_coral_"..color..".png"},
	--tiles = {"default_coral_brick.png^[colorize:#19ed96:75"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("water:"..color.."_coral_brick", {
	description = name.." Coral Brick",
	tiles = {"default_coral_"..color..".png^water_overlay_brick.png"},
	--tiles = {"default_coral_brick.png^[colorize:#19ed96:75"},
	groups = {cracky = 3},
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