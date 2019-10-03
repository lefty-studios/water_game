mapgen_params = {water_level = 25}
minetest.set_mapgen_params(mapgen_params)
minetest.clear_registered_decorations()
minetest.clear_registered_biomes()
local WATER_LEVEL = minetest.setting_get("water_level")

minetest.set_mapgen_setting("mg_name", "flat", true)
minetest.set_mapgen_setting("mg_flags", "nocaves, nodungeons, light, decorations, biomes", true)
minetest.set_mapgen_setting("mgflat_spflags", "hills, lakes", true)
minetest.set_mapgen_setting("mgflat_hill_threshhold", "0.8", true)
minetest.set_mapgen_setting("mgflat_hill_steepness", "50", true)
minetest.set_mapgen_setting("mgflat_lake_threshhold", "0.1", true)
minetest.set_mapgen_setting("mgflat_lake_steepness", "188", true)
minetest.set_mapgen_setting("mgflat_np_terrain", "noise_params_2d 0, 0.7, (250, 250, 250), 7244, 5, 0.6, 2, eased", true)

--Biomes
	-- Grassland

	minetest.register_biome({
		name = "grassland",
		node_top = "default:dirt_with_dry_grass",
		node_stone = "default:sandstone",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 5,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 25,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_dunes",
		node_top = "default:sand",
		node_stone = "default:sandstone",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 2,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 21,
		y_min = 25,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "corals", --grassland ocean
		node_top = "water:coral_reef_biome_sand",
		--node_top = "water:teal_coral",
		depth_top = 1,
		node_stone = "default:sandstone",
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = 20,
		y_min = -15,
		heat_point = 50,
		humidity_point = 35,
	})

	-- Coniferous forest

	minetest.register_biome({
		name = "coniferous_forest",
		--node_top = "default:dirt_with_coniferous_litter",
		node_top = "default:desert_sand",
		node_stone = "default:desert_sandstone",
		depth_top = 1,
		node_filler = "default:desert_sand",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 25,
		heat_point = 45,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "coniferous_forest_dunes",
		node_top = "default:sand",
		node_stone = "default:desert_sandstone",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 26,
		y_min = 25,
		heat_point = 45,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "kelp_forest",
		node_top = "water:coral_reef_biome_sand",
		depth_top = 1,
		node_filler = "default:sand",
		node_stone = "default:desert_sandstone",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = 20,
		y_min = -15,
		heat_point = 57.5,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "kelp_forest",
		node_top = "water:kelp_biome_sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = 20,
		y_min = -15,
		heat_point = 45,
		humidity_point = 57.5,
	})
	-- Deciduous forest

	minetest.register_biome({
		name = "deciduous_forest",
		node_top = "default:dirt_with_dry_grass",
		node_stone = "default:desert_sandstone",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 25,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "deciduous_forest_shore",
		node_top = "default:dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		node_stone = "default:desert_sandstone",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = 20,
		y_min = 19,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "corals_1",
		node_top = "water:coral_reef_biome_sand",
		node_stone = "default:desert_sandstone",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 19,
		y_min = -15,
		heat_point = 60,
		humidity_point = 68,
	})

	-- Desert

	minetest.register_biome({
		name = "desert",
		node_top = "default:desert_sand",
		depth_top = 1,
		node_filler = "default:desert_sand",
		depth_filler = 1,
		node_stone = "default:desert_stone",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 25,
		heat_point = 92,
		humidity_point = 16,
	})

	minetest.register_biome({
		name = "coral 2", --desert ocean
		node_top = "water:coral_biome_sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_stone = "default:desert_stone",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 25,
		y_min = -15,
		heat_point = 92,
		humidity_point = 16,
	})

	-- Sandstone desert

	minetest.register_biome({
		name = "sandstone_desert",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 1,
		node_stone = "default:sandstone",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 25,
		heat_point = 60,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "coral", --name = "sandstone_desert_ocean",
		node_top = "water:coral_biome_sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_stone = "default:sandstone",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = 25,
		y_min = -15,
		heat_point = 60,
		humidity_point = 0,
	})

	-- Cold desert

	minetest.register_biome({
		name = "cold_desert",
		node_top = "default:silver_sand",
		depth_top = 1,
		node_filler = "default:silver_sand",
		depth_filler = 1,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 25,
		heat_point = 40,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "dead_ocean", --name = "cold_desert_ocean",
		node_top = "default:silver_sand",
		depth_top = 1,
		node_filler = "default:silver_sand",
		depth_filler = 3,
		node_riverbed = "default:silver_sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 25,
		y_min = -15,
		heat_point = 40,
		humidity_point = 0,
	})

	-- Savanna

	minetest.register_biome({
		name = "savanna",
		node_top = "default:dirt_with_dry_grass",
		node_stone = "default:desert_stone",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 25,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "savanna_shore",
		node_top = "default:dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		node_riverbed = "default:sand",
		node_stone = "default:desert_stone",
		depth_riverbed = 2,
		y_max = 20,
		y_min = 19,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "coral_1", --savanaa ocean,
		node_top = "water:coral_biome_sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:sand",
		node_stone = "default:desert_stone",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 20,
		y_min = -15,
		heat_point = 89,
		humidity_point = 42,
	})

	-- Rainforest

	minetest.register_biome({
		name = "rainforest",
		node_top = "default:dirt_with_dry_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		node_riverbed = "default:sand",
		node_stone = "default:desert_stone",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 25,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "rainforest_swamp",
		node_top = "default:dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		node_riverbed = "default:sand",
		node_stone = "default:desert_stone",
		depth_riverbed = 2,
		y_max = 25,
		y_min = 25,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "rainforest_ocean",
		node_top = "water:coral_reef_biome_sand",
		--node_top = "water:purple_coral",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:sand",
		node_stone = "default:desert_stone",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 19,
		y_min = -15,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "ore biome",
		node_top = "water:sea_stone",
		depth_top = 0,
		node_filler = "water:sea_stone",
		depth_filler = 10,
		node_stone = "default:stone",
		node_riverbed = "water:sea_stone",
		depth_riverbed = 2,
		y_max = -15,
		y_min = -69, 
		heat_point = 45,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "ore biome 1",
		node_top = "water:sea_stone",
		depth_top = 0,
		node_filler = "water:sea_stone",
		depth_filler = 10,
		node_stone = "default:stone",
		node_riverbed = "water:sea_stone",
		depth_riverbed = 2,
		y_max = -15,
		y_min = -69, 
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "grassland_ocean 1",
		node_top = "water:sea_stone",
		depth_top = 0,
		node_filler = "water:sea_stone",
		depth_filler = 10,
		node_stone = "default:stone",
		node_riverbed = "water:sea_stone",
		depth_riverbed = 2,
		y_max = -15,
		y_min = -69, 
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "rainforest_ocean 1",
		node_top = "water:sea_stone",
		depth_top = 0,
		node_filler = "water:sea_stone",
		depth_filler = 10,
		node_stone = "default:stone",
		node_riverbed = "water:sea_stone",
		depth_riverbed = 2,
		y_max = -15,
		y_min = -69, 
		heat_point = 86,
		humidity_point = 65,
	})
	minetest.register_biome({
		name = "Magma biome",
		node_top = "default:silver_sand",
		depth_top = 0,
		node_dust = "default:silver_sand",
		node_filler = "default:obsidian",
		depth_filler = 10,
		node_stone = "default:stone",
		node_riverbed = "default:silver_sand",
		node_water = "default:hot_water_source",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = -69,
		y_min = -119,
		heat_point = 89,
		humidity_point = 42,
	})
		minetest.register_biome({
		name = "Magma biome 1",
		node_top = "default:silver_sand",
		depth_top = 0,
		node_dust = "default:silver_sand",
		node_filler = "default:obsidian",
		depth_filler = 10,
		node_stone = "default:stone",
		node_riverbed = "default:silver_sand",
		node_water = "default:hot_water_source",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = -69,
		y_min = -119,
		heat_point = 92,
		humidity_point = 16,
	})
	minetest.register_biome({
		name = "Magma biome 2",
		node_top = "default:silver_sand",
		depth_top = 0,
		node_dust = "default:silver_sand",
		node_filler = "default:obsidian",
		depth_filler = 3,
		node_stone = "default:obsidian",
		node_water = "default:hot_water_source",
		node_riverbed = "default:silver_sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = -69,
		y_min = -119,
		heat_point = 60,
		humidity_point = 0,
	})


	-- Underground

	minetest.register_biome({
		name = "underground",
		y_max = -200,
		y_min = -31000,
		heat_point = 50,
		humidity_point = 50,
	})

---Spawn the stone
minetest.register_ore({
		ore_type        = "blob",
		ore             = "water:sea_stone",
		wherein         = {"default:sand"},
		clust_scarcity  = 32 * 32 * 32,
		clust_size      = 8,
		y_min           = -15,
		y_max           = 0,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 8, y = 5, z = 8},
			seed = -316,
			octaves = 1,
			persist = 0.0
		},
})


local function register_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		name = "default:grass_" .. length,
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"grassland", "deciduous_forest", "floatland_grassland"},
		y_max = 31000,
		y_min = WATER_LEVEL,
		decoration = "default:grass_" .. length,
	})
end

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		name = "default:dry_grass_" .. length,
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"savanna"},
		y_max = 31000,
		y_min = WATER_LEVEL,
		decoration = "default:dry_grass_" .. length,
	})
end

local function register_fern_decoration(seed, length)
	minetest.register_decoration({
		name = "default:fern_" .. length,
		deco_type = "simple",
		place_on = {"default:dirt_with_coniferous_litter"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.2,
			spread = {x = 100, y = 100, z = 100},
			seed = seed,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"coniferous_forest", "floatland_coniferous_forest"},
		y_max = 31000,
		y_min = WATER_LEVEL,
		decoration = "default:fern_" .. length,
	})
end


function register_decorations()

	--[[ Apple tree and log

	minetest.register_decoration({
		name = "default:apple_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.024,
			scale = 0.015,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_max = 31000,
		y_min = WATER_LEVEL,
		schematic = minetest.get_modpath("default") .. "/schematics/apple_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
--]]
	minetest.register_decoration({
		name = "default:apple_log",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			offset = 0.0012,
			scale = 0.0007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_max = 31000,
		y_min = WATER_LEVEL,
		schematic = minetest.get_modpath("default") .. "/schematics/apple_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "default:dirt_with_grass",
		num_spawn_by = 8,
	})

	-- Emergent jungle tree
	-- Due to 32 node height, altitude is limited and prescence depends on chunksize

	-- Jungle tree and log
--[[
	minetest.register_decoration({
		name = "default:jungle_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_rainforest_litter", "default:dirt"},
		sidelen = 80,
		fill_ratio = 0.1,
		biomes = {"rainforest", "rainforest_swamp"},
		y_max = 31000,
		y_min = WATER_LEVEL,
		schematic = minetest.get_modpath("default") .. "/schematics/jungle_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
]]
	minetest.register_decoration({
		name = "default:jungle_log",
		deco_type = "schematic",
		place_on = {"default:dirt_with_rainforest_litter"},
		place_offset_y = 1,
		sidelen = 80,
		fill_ratio = 0.005,
		biomes = {"rainforest", "rainforest_swamp"},
		y_max = 31000,
		y_min = WATER_LEVEL,
		schematic = minetest.get_modpath("default") .. "/schematics/jungle_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "default:dirt_with_rainforest_litter",
		num_spawn_by = 8,
	})

	-- Taiga and temperate coniferous forest pine tree, small pine tree and log
--[[
	minetest.register_decoration({
		name = "default:pine_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
		sidelen = 16,
		noise_params = {
			offset = 0.010,
			scale = 0.048,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"taiga", "coniferous_forest", "floatland_coniferous_forest"},
		y_max = 31000,
		y_min = WATER_LEVEL,
		schematic = minetest.get_modpath("default") .. "/schematics/pine_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		name = "default:small_pine_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
		sidelen = 16,
		noise_params = {
			offset = 0.010,
			scale = -0.048,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"taiga", "coniferous_forest", "floatland_coniferous_forest"},
		y_max = 31000,
		y_min = 51,
		schematic = minetest.get_modpath("default") .. "/schematics/small_pine_tree.mts",
		flags = "place_center_x, place_center_z",
	})
]]--
	minetest.register_decoration({
		name = "default:pine_log",
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
		place_offset_y = 1,
		sidelen = 80,
		fill_ratio = 0.0018,
		biomes = {"taiga", "coniferous_forest", "floatland_coniferous_forest"},
		y_max = 31000,
		y_min = 51,
		schematic = minetest.get_modpath("default") .. "/schematics/pine_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
		num_spawn_by = 8,
	})

	-- Acacia tree and log

	minetest.register_decoration({
		name = "default:acacia_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.002,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"savanna"},
		y_max = 31000,
		y_min = 51,
		schematic = minetest.get_modpath("default") .. "/schematics/acacia_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		name = "default:acacia_log",
		deco_type = "schematic",
		place_on = {"default:dirt_with_dry_grass"},
		place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.001,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"savanna"},
		y_max = 31000,
		y_min = 51,
		schematic = minetest.get_modpath("default") .. "/schematics/acacia_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "default:dirt_with_dry_grass",
		num_spawn_by = 8,
	})

	--[[ Aspen tree and log

	minetest.register_decoration({
		name = "default:aspen_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0,
			scale = -0.015,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_max = 31000,
		y_min = 51,
		schematic = minetest.get_modpath("default") .. "/schematics/aspen_tree.mts",
		flags = "place_center_x, place_center_z",
	})
--]]
	minetest.register_decoration({
		name = "default:aspen_log",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			offset = 0.0,
			scale = -0.0008,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_max = 31000,
		y_min = 51,
		schematic = minetest.get_modpath("default") .. "/schematics/aspen_log.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "default:dirt_with_grass",
		num_spawn_by = 8,
	})

	-- Large cactus

	minetest.register_decoration({
		name = "default:large_cactus",
		deco_type = "schematic",
		place_on = {"default:desert_sand", "group:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_max = 31000,
		y_min = 51,
		schematic = minetest.get_modpath("default") .. "/schematics/large_cactus.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	-- Cactus

	minetest.register_decoration({
		name = "default:cactus",
		deco_type = "simple",
		place_on = {"default:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_max = 31000,
		y_min = 51,
		decoration = "default:cactus",
		height = 2,
		height_max = 5,
	})

	-- Papyrus

	minetest.register_decoration({
		name = "default:papyrus",
		deco_type = "schematic",
		place_on = {"default:dirt"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 200, y = 200, z = 200},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		y_max = 51,
		y_min = 49,
		schematic = minetest.get_modpath("default") .. "/schematics/papyrus.mts",
	})

	-- Bush

	minetest.register_decoration({
		name = "default:bush",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"grassland", "deciduous_forest",
			"floatland_grassland"},
		y_max = 31000,
		y_min = 51,
		schematic = minetest.get_modpath("default") .. "/schematics/bush.mts",
		flags = "place_center_x, place_center_z",
	})

	-- Blueberry bush

	minetest.register_decoration({
		name = "default:blueberry_bush",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "default:dirt_with_snow"},
		sidelen = 16,
		noise_params = {
			offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 697,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"grassland", "snowy_grassland"},
		y_max = 31000,
		y_min = 51,
		place_offset_y = 1,
		schematic = minetest.get_modpath("default") .. "/schematics/blueberry_bush.mts",
		flags = "place_center_x, place_center_z",
	})

	-- Acacia bush

	minetest.register_decoration({
		name = "default:acacia_bush",
		deco_type = "schematic",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 90155,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"savanna"},
		y_max = 31000,
		y_min = 51,
		schematic = minetest.get_modpath("default") .. "/schematics/acacia_bush.mts",
		flags = "place_center_x, place_center_z",
	})

	-- Pine bush

	minetest.register_decoration({
		name = "default:pine_bush",
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow"},
		sidelen = 16,
		noise_params = {
			offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"taiga", "snowy_grassland"},
		y_max = 31000,
		y_min = 51,
		schematic = minetest.get_modpath("default") .. "/schematics/pine_bush.mts",
		flags = "place_center_x, place_center_z",
	})

	-- Grasses

	register_grass_decoration(-0.03,  0.09,  5)
	register_grass_decoration(-0.015, 0.075, 4)
	register_grass_decoration(0,      0.06,  3)
	register_grass_decoration(0.015,  0.045, 2)
	register_grass_decoration(0.03,   0.03,  1)

	-- Dry grasses

	register_dry_grass_decoration(0.01, 0.05,  5)
	register_dry_grass_decoration(0.03, 0.03,  4)
	register_dry_grass_decoration(0.05, 0.01,  3)
	register_dry_grass_decoration(0.07, -0.01, 2)
	register_dry_grass_decoration(0.09, -0.03, 1)

	-- Ferns

	register_fern_decoration(14936, 3)
	register_fern_decoration(801,   2)
	register_fern_decoration(5,     1)

	-- Junglegrass

	minetest.register_decoration({
		name = "default:junglegrass",
		deco_type = "simple",
		place_on = {"default:dirt_with_rainforest_litter"},
		sidelen = 80,
		fill_ratio = 0.1,
		biomes = {"rainforest"},
		y_max = 31000,
		y_min = 51,
		decoration = "default:junglegrass",
	})

	-- Dry shrub

	minetest.register_decoration({
		name = "default:dry_shrub",
		deco_type = "simple",
		place_on = {"default:desert_sand",
			"default:sand", "default:silver_sand"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "sandstone_desert", "cold_desert"},
		y_max = 31000,
		y_min = 51,
		decoration = "default:dry_shrub",
		param2 = 4,
	})

	-- Marram grass

	minetest.register_decoration({
		name = "default:marram_grass",
		deco_type = "simple",
		place_on = {"default:sand"},
		sidelen = 4,
		noise_params = {
			offset = -0.4,
			scale = 3.0,
			spread = {x = 16, y = 16, z = 16},
			seed = 513337,
			octaves = 1,
			persist = 0.5,
			flags = "absvalue"
		},
		biomes = {"coniferous_forest_dunes", "grassland_dunes"},
		y_max = 57,
		y_min = 51,
		decoration = {
			"default:marram_grass_1",
			"default:marram_grass_2",
			"default:marram_grass_3",
		},
	})

	-- Coral reef

	minetest.register_decoration({
		name = "default:corals",
		deco_type = "simple",
		place_on = {"default:sand","group:biome_sand"},
		place_offset_y = -1,
		sidelen = 4,
		noise_params = {
			offset = -4,
			scale = 10,
			spread = {x = 50, y = 50, z = 50},
			seed = 7013,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 20,
		y_min = -15,
		flags = "force_placement",
		decoration = {
			"default:coral_green", "default:coral_pink",
			"default:coral_cyan", "default:coral_brown",
			"default:coral_orange", "default:coral_skeleton",
			"water:coral_glow","water:purple_coral",
			"water:teal_coral","water:coral_glow",
			"water:red_coral",
		},
	})
		minetest.register_decoration({
		name = "default:coral_reefs",
		deco_type = "simple",
		place_on = {"default:sand","water:coral_reef_biome_sand"},
		place_offset_y = -1,
		sidelen = 4,
		noise_params = {
			offset = -4,
			scale = 10,
			spread = {x = 50, y = 50, z = 50},
			seed = 6015,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 20,
		y_min = -15,
		flags = "force_placement",
		decoration = {
			"default:coral_green", "default:coral_pink",
			"default:coral_cyan", "default:coral_brown",
			"default:coral_orange", "default:coral_skeleton",
			"water:coral_glow","water:purple_coral",
			"water:teal_coral","water:coral_glow",
			"water:red_coral",
		},
	})
	minetest.register_decoration({
		name = "water coral",
		deco_type = "simple",
		place_on = {"default:coral_skeleton"},
		place_offset_y = -1,
		sidelen = 16,
		sidelen = 4,
		noise_params = {
			offset = -4,
			scale = 10,
			spread = {x = 50, y = 50, z = 50},
			seed = 6015,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 20,
		y_min = -35,
		flags = "force_placement",
		--biomes = {"corals","corals_1"},
		decoration = {
			"water:purple_coral", "water:teal_coral",
		},
		height = 3, --Optional for if you want the node to be stacked.
        height_max = 6
	})
		minetest.register_decoration({
		name = "water coral2",
		deco_type = "simple",
		place_on = {"default:coral_skeleton"},
		place_offset_y = -1,
		sidelen = 16,
		sidelen = 4,
		noise_params = {
			offset = -4,
			scale = 10,
			spread = {x = 50, y = 50, z = 50},
			seed = 6015,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 20,
		y_min = -35,
		flags = "force_placement",
		--biomes = {"corals","corals_1"},
		decoration = {
			"water:orange_coral", "water:red_coral",
		},
		height = 3, --Optional for if you want the node to be stacked.
        height_max = 6
	})

	-- Kelp

	minetest.register_decoration({
		name = "default:kelp",
		deco_type = "simple",
		place_on = {"water:kelp_biome_sand"},
		place_offset_y = -1,
		sidelen = 16,
		--[[noise_params = {
			offset = -0.04,
			scale = 0.1,
			spread = {x = 200, y = 200, z = 200},
			seed = 87112,
			octaves = 3,
			persist = 0.7
		},]]
		noise_params = {
			offset = 0.1,
			scale = 1,
			spread = {x = 1000, y = 1000, z = 1000},
			seed = 87112,
			octaves = 20,
			persist = 0.7
		},
		y_max = 20,
		y_min = -35,
		flags = "force_placement",
		decoration = "default:sand_with_kelp",
		biomes = {"kelp_forest"},
		param2 = 48,
		param2_max = 96,
	})
	--[[minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.04,
			scale = 0.1,
			spread = {x = 200, y = 200, z = 200},
			seed = 87112,
			octaves = 3,
			persist = 0.7
		},
		y_max = 20,
		y_min = -100,
		schematic = minetest.get_modpath("water") .. "/schematics/pyramid.mts",
		flags = "place_center_x, place_center_z",
	})]]
end

minetest.register_decoration({
		name = "driftwood",
		deco_type = "simple",
		place_on = {"default:water_source"},
		sidelen = 80,
		fill_ratio =0.001,
		y_max = 26,
		y_min = 25,
		decoration = "water:driftwood",
	flags = "liquid_surface",
})

	minetest.register_decoration({
		name = "magma",
		deco_type = "simple",
		place_on = {"default:obsidian"},
		sidelen = 80,
		fill_ratio = 0.1,
		y_max = -10,
		y_min = -31000,
		decoration = "water:magma",
		height = 1, --Optional for if you want the node to be stacked.
        height_max = 1,
		flags = "force_placement",
	})
register_decorations()
