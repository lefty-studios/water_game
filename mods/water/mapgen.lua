minetest.clear_registered_decorations()
minetest.clear_registered_biomes()
local WATER_LEVEL = 25
mapgen_params = {water_level = WATER_LEVEL}
minetest.set_mapgen_params(mapgen_params)
local biome_one_limit = 0
local biome_two_limit = -25
local biome_three_limit = -50
minetest.set_mapgen_setting("mg_name", "flat", true)
minetest.set_mapgen_setting("mg_flags", "nocaves, nodungeons, light, decorations, biomes", true)
minetest.set_mapgen_setting("mgflat_spflags", "hills, lakes", true)
minetest.set_mapgen_setting("mgflat_hill_threshhold", "0.8", true)
minetest.set_mapgen_setting("mgflat_hill_steepness", "50", true)
minetest.set_mapgen_setting("mgflat_lake_threshhold", "0.1", true)
minetest.set_mapgen_setting("mgflat_lake_steepness", "188", true)
minetest.set_mapgen_setting("mgflat_np_terrain", "noise_params_2d 0, 0.7, (500, 500, 500), 7244, 5, 0.6, 2, eased", true)

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
		y_min = WATER_LEVEL+1,
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
		y_max = WATER_LEVEL,
		y_min = biome_one_limit,
		heat_point = 50,
		humidity_point = 35,
		node_water = "default:water_source",
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
		y_min = WATER_LEVEL+1,
		heat_point = 45,
		humidity_point = 70,
	})


	minetest.register_biome({
		name = "kelp_forest", --14122497862344701939 168.8, 34, -282.2
		node_water = "water:kelp_water_source",
		node_top = "water:kelp_biome_sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = WATER_LEVEL,
		y_min = biome_one_limit,
		heat_point = 60,
		humidity_point = 68,
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
		y_min = WATER_LEVEL+1,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "corals_1",
		node_top = "water:coral_reef_biome_sand",
		node_stone = "default:desert_sandstone",
		node_water = "default:water_source",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = WATER_LEVEL,
		y_min = biome_one_limit,
		heat_point = 45,
		humidity_point = 70,
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
		y_min = WATER_LEVEL+1,
		heat_point = 92,
		humidity_point = 16,
	})

	minetest.register_biome({
		name = "coral 2", --desert ocean
		node_top = "water:coral_biome_sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_water = "default:water_source",
		node_stone = "default:desert_stone",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = WATER_LEVEL,
		y_min = biome_one_limit,
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
		y_min = WATER_LEVEL+1,
		heat_point = 60,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "coral", --name = "sandstone_desert_ocean",
		node_top = "water:coral_biome_sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_water = "default:water_source",
		node_stone = "default:sandstone",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = WATER_LEVEL,
		y_min = biome_one_limit,
		heat_point = 60,
		humidity_point = 0,
	})

	-- Cold desert

	minetest.register_biome({
		name = "cold_desert",
		node_top = "default:silver_sand",
		depth_top = 1,
		--node_filler = "default:silver_sand",
		--depth_filler = 1,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = WATER_LEVEL+1,
		heat_point = 40,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "dead_ocean", --name = "cold_desert_ocean",
		node_top = "default:silver_sand",
		depth_top = 1,
		--node_filler = "default:silver_sand",
		--depth_filler = 3,
		node_riverbed = "default:silver_sand",
		node_water = "default:mese_water_source",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = WATER_LEVEL,
		y_min = biome_one_limit,
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
		y_min = WATER_LEVEL+1,
		heat_point = 89,
		humidity_point = 42,
		node_water = "default:water_source",
	})


	minetest.register_biome({
		name = "coral_1", --savanaa ocean,
		node_top = "water:coral_biome_sand",
		depth_top = 1,
		node_filler = "default:sand",
		node_water = "default:water_source",
		depth_filler = 3,
		node_riverbed = "default:sand",
		node_stone = "default:desert_stone",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = WATER_LEVEL,
		y_min = biome_one_limit,
		heat_point = 89,
		humidity_point = 42,
		node_water = "default:water_source",
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
		y_min = WATER_LEVEL+1,
		heat_point = 86,
		humidity_point = 65,
		node_water = "default:water_source",
	})

	minetest.register_biome({
		name = "rainforest_swamp",
		node_top = "default:dirt",
		depth_top = 1,
--		node_filler = "default:dirt",
		depth_filler = 3,
		node_riverbed = "default:sand",
		node_stone = "default:desert_stone",
		depth_riverbed = 2,
		y_max = 26,
		y_min = 25,
		heat_point = 86,
		humidity_point = 65,
		node_water = "default:water_source",
	})

	minetest.register_biome({
		name = "rainforest_ocean",
		node_top = "water:coral_reef_biome_sand",
		--node_top = "water:purple_coral",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_water = "default:water_source",
		node_riverbed = "default:sand",
		node_stone = "default:desert_stone",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = WATER_LEVEL-7,
		y_min = biome_one_limit,
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
		node_water = "default:dark_water_source",
		depth_riverbed = 2,
		y_max = biome_one_limit,
		y_min = biome_two_limit, 
		heat_point = 50,
		humidity_point = 50,
	})


	minetest.register_biome({
		name = "Magma biome",
	--	node_top = "default:silver_sand",
		depth_top = 0,
		--node_dust = "default:silver_sand",
		node_filler = "default:obsidian",
		depth_filler = 10,
		node_stone = "default:stone",
	--	node_riverbed = "default:silver_sand",
		node_water = "default:hot_water_source",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = biome_two_limit,
		y_min = biome_three_limit,
		heat_point = 50,
		humidity_point = 50,
	})
	
	-- Underground

	minetest.register_biome({
		name = "underground",
		y_max = biome_three_limit,
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
		y_max = 57,
		y_min = WATER_LEVEL,
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
		y_min = biome_one_limit,
		flags = "force_placement",
		biomes = {"corals","corals_1","rainforest_ocean","coral 2","coral_1"},
		decoration = {
			"default:coral_green", "default:coral_pink",
			"default:coral_cyan", "default:coral_brown",
			"default:coral_orange", "default:coral_skeleton",
			"water:coral_glow","water:purple_coral",
			"water:teal_coral","water:coral_glow",
			"water:red_coral","water:blue_coral",
		},
	})

	minetest.register_decoration({
		name = "default:dead_corals",
		deco_type = "simple",
		place_on = {"default:silver_sand"},
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
		y_min = biome_one_limit,
		flags = "force_placement",
		decoration = {
			"default:coral_skeleton",
			"water:grey_coral",
		},
	})
	minetest.register_decoration({
		name = "dead coral stacks",
		deco_type = "simple",
		place_on = {"default:coral_skeleton"},
		place_offset_y = -1,
		sidelen = 4,
		noise_params = {
			offset = -4,
			scale = 10,
			spread = {x = 500, y = 500, z = 500},
			seed = 7013,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 20,
		y_min = -35,
		flags = "force_placement",
		biomes = {"dead_ocean"},
		decoration = {
			"water:purple_coral", "water:teal_coral", "water:orange_coral", "water:red_coral","water:blue_coral",
		},
		height = 3, --Optional for if you want the node to be stacked.
        height_max = 6
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
		y_min = biome_one_limit,
		biomes = {"corals","corals_1","rainforest_ocean","coral 2","coral_1"},
		flags = "force_placement",
		decoration = {
			"default:coral_green", "default:coral_pink",
			"default:coral_cyan", "default:coral_brown",
			"default:coral_orange", "default:coral_skeleton",
			"water:coral_glow","water:purple_coral",
			"water:teal_coral","water:coral_glow",
			"water:red_coral","water:blue_coral",
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
			spread = {x = 500, y = 500, z = 500},
			seed = 6015,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 20,
		y_min = -35,
		flags = "force_placement",
		biomes = {"corals","corals_1","rainforest_ocean","coral 2","coral_1"},
		decoration = {
			"water:purple_coral", "water:teal_coral", "water:orange_coral", "water:red_coral","water:blue_coral",
		},
		height = 3, --Optional for if you want the node to be stacked.
        height_max = 6
	})

	minetest.register_decoration({
		name = "water coral 3",
		deco_type = "simple",
		place_on = {"default:coral_skeleton"},
		place_offset_y = -1,
		sidelen = 16,
		sidelen = 4,
		noise_params = {
			offset = -4,
			scale = 10,
			spread = {x = 500, y = 500, z = 500},
			seed = 1231,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 20,
		y_min = -35,
		flags = "force_placement",
		biomes = {"corals","corals_1","rainforest_ocean","coral 2","coral_1"},
		decoration = {
			"water:purple_coral", "water:teal_coral", "water:orange_coral", "water:red_coral","water:blue_coral",
		},
		height = 3, --Optional for if you want the node to be stacked.
        height_max = 6
	})

	minetest.register_decoration({
		name = "water coral 4",
		deco_type = "simple",
		place_on = {"default:coral_skeleton"},
		place_offset_y = -1,
		sidelen = 16,
		sidelen = 4,
		noise_params = {
			offset = -4,
			scale = 10,
			spread = {x = 500, y = 500, z = 500},
			seed = 4550,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 20,
		y_min = -35,
		flags = "force_placement",
		biomes = {"corals","corals_1","rainforest_ocean","coral 2","coral_1"},
		decoration = {
			"water:purple_coral", "water:teal_coral", "water:orange_coral", "water:red_coral","water:blue_coral",
		},
		height = 3, --Optional for if you want the node to be stacked.
        height_max = 6
	})

	--
	minetest.register_decoration({
		name = "dead ocean coral",
		deco_type = "simple",
		place_on = {"default:coral_skeleton"},
		place_offset_y = -1,
		sidelen = 16,
		sidelen = 4,
		noise_params = {
			offset = -4,
			scale = 10,
			spread = {x = 5000, y = 5000, z = 5000},
			seed = 6015,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 20,
		y_min = -35,
		flags = "force_placement",
		biomes = {"dead_ocean"},
		decoration = {
			"water:purple_coral", "water:teal_coral", "water:orange_coral", "water:red_coral","water:blue_coral",
		},
		height = 3, --Optional for if you want the node to be stacked.
        height_max = 6
	})

	minetest.register_decoration({
		name = "default:dead_coral_reefs",
		deco_type = "simple",
		place_on = {"default:sand","water:coral_reef_biome_sand"},
		place_offset_y = -1,
		sidelen = 4,
		noise_params = {
			offset = -4,
			scale = 10,
			spread = {x = 5000, y = 5000, z = 5000},
			seed = 6015,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 20,
		y_min = biome_one_limit,
		flags = "force_placement",
		decoration = {
			"default:coral_green", "default:coral_pink",
			"default:coral_cyan", "default:coral_brown",
			"default:coral_orange", "default:coral_skeleton",
			"water:coral_glow","water:purple_coral",
			"water:teal_coral","water:coral_glow",
			"water:red_coral","water:blue_coral", 
		},
	})

	-- Kelp

	minetest.register_decoration({
		name = "water:kelp",
		deco_type = "simple",
		place_on = {"water:kelp_biome_sand"},
		place_offset_y = -1,
		sidelen = 16,
		sidelen = 16,
		fill_ratio = 1,
		y_max = WATER_LEVEL-5,
		y_min = -31000,
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
		y_max = WATER_LEVEL,
		y_min = -100,
		schematic = minetest.get_modpath("water") .. "/schematics/pyramid.mts",
		flags = "place_center_x, place_center_z",
	})]]
minetest.register_decoration({
		name = "driftwood",
		deco_type = "simple",
		place_on = {"default:water_source"},
		sidelen = 80,
		fill_ratio =0.001,
		y_max = WATER_LEVEL+1,
		y_min = WATER_LEVEL,
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

minetest.register_decoration({
	name = "kelp_forest_growth_1",
	deco_type = "schematic",
	place_on = {"water:kelp_biome_sand","default:sand_with_kelp"},
	place_offset_y = 1,
	sidelen = 1  ,
	noise_params = {
		offset = 0.0001,
		scale = 0.000001,
		spread = {x = 100000, y = 100000, z = 100000},
		seed = 87112,
		octaves = 20,
		persist = 0.7
	},
	y_max = 9,
	y_min = 8,
	flags = "force_placement",
	biomes = {"kelp_forest"},
	schematic = minetest.get_modpath("water") .. "/schematics/kelp_forest_growth_1.mts",
	param2 = 48,
	param2_max = 96,
})

minetest.register_decoration({
	name = "kelp_forest_growth_2",
	deco_type = "schematic",
	place_on = {"water:kelp_biome_sand"},
	place_offset_y = 1,
	sidelen = 1,
	noise_params = {
		offset = 0.0001,
		scale = 0.000001,
		spread = {x = 100000, y = 100000, z = 100000},
		seed = 87112,
		octaves = 20,
		persist = 0.7
	},
	y_max = WATER_LEVEL-5,
	y_min = -31000,
	flags = "force_placement",
	schematic = minetest.get_modpath("water") .. "/schematics/kelp_forest_growth_2.mts",
	param2 = 48,
	param2_max = 96,
})
