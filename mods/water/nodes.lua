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
	--drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = 0,
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
	--drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = 0,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("water:kelp_water_source", {
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
	--drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "water:kelp_water_flowing",
	liquid_alternative_source = "water:kelp_water_source",
	liquid_viscosity = 4.5,
	post_effect_color = {a = 103, r = 0, g = 102, b = 51},
	--post_effect_color = {a = 50, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("water:kelp_water_flowing", {
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
	--drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "water:kelp_water_flowing",
	liquid_alternative_source = "water:kelp_water_source",
	liquid_viscosity = 0,
	post_effect_color = {a = 103, r = 0, g = 102, b = 51},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node(":default:dark_water_source", {
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
	drowning = 3,
	liquidtype = "source",
	liquid_alternative_flowing = "default:dark_water_source",
	liquid_alternative_source = "default:dark_water_source",
	liquid_viscosity = 0,
	post_effect_color = {a = 65, r = 0, g = 128, b = 204},
	--post_effect_color = {a = 50, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node(":default:dark_water_flowing", {
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
	drowning = 3,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:dark_water_flowing",
	liquid_alternative_source = "default:dark_water_source",
	liquid_viscosity = 4.5,
	post_effect_color = {a = 103, r = 0, g = 128, b = 204},
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
	light_source = 10,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	light_propagates = true,
	sunlight_propagates = true,
	drop = "",
	drowning = 5,
	liquidtype = "source",
	liquid_alternative_flowing = "default:hot_water_flowing",
	liquid_alternative_source = "default:hot_water_source",
	liquid_viscosity = 9,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 103, r = 100, g = 100, b = 100},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1, cools_lava = 1},
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
	light_source = 10,
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	light_propagates = true,
	sunlight_propagates = true,
	drop = "",
	drowning = 5,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:hot_water_flowing",
	liquid_alternative_source = "default:hot_water_source",
	liquid_viscosity = 9,
	post_effect_color = {a = 103, r = 100, g = 100, b = 100},
	--post_effect_color = {a = 50, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	damage_per_second = 4 * 2,
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

function register_coral (color, name)

	minetest.register_node("water:"..color.."_coral", {
		description = name.." Coral",
		tiles = {"default_coral_"..color..".png"},
		--tiles = {"default_coral_brick.png^[colorize:#19ed96:75"},
		groups = {cracky = 3, coral = 1},
		sounds = default.node_sound_stone_defaults(),
		drop = {
			max_items = 2,
			items = {
				{items = {"water:coral_spear_tip"}, rarity = 5},
				{items = {"water:"..color.."_coral"}}
			}
		},
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
--[[	
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
]]	
end
	
	register_coral("teal", "Teal")
	register_coral("purple","Purple")
	minetest.register_alias("water:pink_coral", "water:purple_coral")
	register_coral("red","Red")
	register_coral("orange","Orange")
	register_coral("brown","Brown")
	register_coral("blue","blue")
	minetest.register_alias_force("default:coral_orange", "water:orange_coral")
	minetest.register_alias_force("default:coral_brown", "water:brown_coral")

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

minetest.register_node("water:sea_stone_block", {
	description = "Sea Stone Block",
	tiles = {"default_stone_block.png^[colorize:#008b82:100"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("water:magma", {
	description = "Magma",
	tiles = {"water_magma.png"},
	groups = {cracky = 2},
	paramtype = "light",
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
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
	drop = 'default:stick',
})

minetest.register_node("water:coral_reef_biome_sand", {
	description = "Sand",
	tiles = {"default_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1, biome_sand = 1},
	drop = "default:sand",
	sounds = default.node_sound_sand_defaults(),
})
minetest.register_node("water:kelp_biome_sand", {
	description = "Sand",
	tiles = {"default_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1, biome_sand = 1},
	drop = "default:sand",
	sounds = default.node_sound_sand_defaults(),
})
minetest.register_node("water:coral_biome_sand", {
	description = "Sand",
	tiles = {"default_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1, biome_sand = 1},
	drop = "default:sand",
	sounds = default.node_sound_sand_defaults(),
})


minetest.register_node(":crafting:work_bench", {
	description = "Crafter",
	tiles = {"water_crafter_top.png", "water_crafter_top.png", "default_steel_block.png"},
	groups = {snappy = 1, no_pew_pew = 1},
	on_rightclick = crafting.make_on_rightclick("inv", 2, { x = 8, y = 3 }),
	on_construct = function(pos, placer)
        local meta = minetest.get_meta(pos)	
		meta:set_string("infotext", "iCrafter X")
	end,

})


minetest.register_node("water:charger", {
    description = "Phaser Charger",
	--tiles = {"default_steel_block.png","default_steel_block.png^charger_core.png","default_steel_block.png"},
	tiles = {"charger_slope.png"},
	groups = {cracky = 1, no_pew_pew = 1},
	is_ground_content = false,
	sunlight_propagates = false,
	drawtype = "mesh",
	mesh = "moreblocks_slope.obj",
	selection_box = {
			type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
		},
		collision_box = {
			type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
		},
	paramtype = "light",
	paramtype2 = "facedir",
    on_construct = function(pos, placer)
        local meta = minetest.get_meta(pos)
        meta:set_string("formspec",
				"size[8,8.5]"..
				"list[context;src;3.75,1.5;1,1;]"..
				"list[current_player;main;0,4.25;8,1;]"..
				"list[current_player;main;0,5.5;8,3;8]"..
				"listring[context;dst]"..
				"listring[current_player;main]"..
				"listring[context;src]"..
				"listring[current_player;main]"..
				--"listring[context;fuel]"..
				"listring[current_player;main]"..
				default.get_hotbar_bg(0, 4.25))
		local inv = meta:get_inventory()
		inv:set_size('src', 1)		
		meta:set_string("infotext", "Phaser Charger")
	end,
	on_timer = function(pos)
		local timer = minetest.get_node_timer(pos)
		local inv = minetest.get_meta(pos):get_inventory()
		local src = inv:get_stack("src", 1)
		--local hammer = inv:get_stack("hammer", 1)

		if src:is_empty() or src:get_wear() == 0 then
			timer:stop()
			return
		end

		-- Tool's wearing range: 0-65535; 0 = new condition
		src:add_wear(-100)
		inv:set_stack("src", 1, src)
		--minetest.chat_send_all("repairing")
		return true
	end,
    on_receive_fields = function(pos, formname, fields, player)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		if inv:get_stack("src", 1):get_name() == "gunslinger:phaser" then 
		--	minetest.chat_send_all(inv:get_stack("src", 1):get_name())	
		--	minetest.chat_send_all(inv:get_stack("src", 1):get_wear())
			minetest.get_node_timer(pos):start(1.0)
			inv:get_stack("src", 1):add_wear(-5000)
		end
	end,
	on_metadata_inventory_move = function(pos)
		minetest.get_node_timer(pos):start(3.0)
	end
})