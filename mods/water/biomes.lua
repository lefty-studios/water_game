minetest.clear_registered_biomes()

minetest.register_on_joinplayer(function(player)
	--minetest.chat_send_all("biome one limit is: "..biome_one_limit)
end)
--18213170583080855457
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
		name = "coral reef ocean 1", --grassland ocean
		node_top = "default:sand",
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
		node_stone = "default:sandstone",
		--node_water = "default:water_source",
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
		name = "coral reef ocean 2",
		node_top = "default:sand",
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
		name = "coral reef ocean 3", --desert ocean
		node_top = "default:sand",
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
		name = "coral reef ocean 5", --name = "sandstone_desert_ocean",
		node_top = "default:sand",
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
		node_stone = "default:silver_sandstone",
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
		node_top = "default:sand",
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
		name = "rainforest_ocean",
		node_top = "default:sand",
		--node_top = "water:purple_coral",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_water = "default:water_source",
		node_riverbed = "default:sand",
		node_stone = "default:desert_stone",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = WATER_LEVEL,
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
		node_stone = "water:sea_stone",
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
		y_min = -31000,
		heat_point = 50,
		humidity_point = 50,
	})
	
	-- Underground
--[[
	minetest.register_biome({
		name = "underground",
		y_max = biome_three_limit,
		y_min = -31000,
		heat_point = 50,
		humidity_point = 50,
	})]]
