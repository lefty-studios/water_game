minetest.clear_registered_decorations()
--18213170583080855457

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

--[[
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
    y_min = WATER_LEVEL+1,
    decoration = {
        "default:marram_grass_1",
        "default:marram_grass_2",
        "default:marram_grass_3",
    },
})
]]
-- Coral reef

minetest.register_decoration({
    name = "default:corals",
    deco_type = "simple",
    place_on = {"default:sand"},
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
    y_max = WATER_LEVEL-1,
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
    biomes = {"coral reef ocean 1","coral reef ocean 2","coral reef ocean 3","coral reef ocean 4"}
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
    y_max = WATER_LEVEL-1,
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
    y_max = WATER_LEVEL-1,
    y_min = biome_one_limit,
    flags = "force_placement",
    biomes = {"dead_ocean"},
    decoration = {
        "water:purple_coral", "water:teal_coral", "water:orange_coral", "water:red_coral","water:blue_coral",
    },
    height = 3, --Optional for if you want the node to be stacked.
    height_max = 6,
    biomes = {"coral reef ocean 1","coral reef ocean 2","coral reef ocean 3","coral reef ocean 4"}
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
    y_max = WATER_LEVEL-1,
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
    biomes = {"coral reef ocean 1","coral reef ocean 2","coral reef ocean 3","coral reef ocean 4"}
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
    y_max = WATER_LEVEL-1,
    y_min = biome_one_limit,
    flags = "force_placement",
    decoration = {
        "water:purple_coral", "water:teal_coral", "water:orange_coral", "water:red_coral","water:blue_coral",
    },
    height = 3, --Optional for if you want the node to be stacked.
    height_max = 6,
    biomes = {"coral reef ocean 1","coral reef ocean 2","coral reef ocean 3","coral reef ocean 4"}
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
    y_max = WATER_LEVEL-1,
    y_min = biome_one_limit,
    flags = "force_placement",
    --biomes = {"corals","corals_1","rainforest_ocean","coral 2","coral_1"},
    decoration = {
        "water:purple_coral", "water:teal_coral", "water:orange_coral", "water:red_coral","water:blue_coral",
    },
    height = 3, --Optional for if you want the node to be stacked.
    height_max = 6,
    biomes = {"coral reef ocean 1","coral reef ocean 2","coral reef ocean 3","coral reef ocean 4"}
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
    y_max = WATER_LEVEL-1,
    y_min = biome_one_limit,
    flags = "force_placement",
    decoration = {
        "water:purple_coral", "water:teal_coral", "water:orange_coral", "water:red_coral","water:blue_coral",
    },
    height = 3, --Optional for if you want the node to be stacked.
    height_max = 6,
    biomes = {"coral reef ocean 1","coral reef ocean 2","coral reef ocean 3","coral reef ocean 4"}
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
    y_max = WATER_LEVEL-1,
    y_min = biome_one_limit,
    flags = "force_placement",
    biomes = {"dead_ocean"},
    decoration = {
        "water:purple_coral", "water:teal_coral", "water:orange_coral", "water:red_coral","water:blue_coral",
    },
    height = 3, --Optional for if you want the node to be stacked.
    height_max = 6
})
--[[
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
    y_max = WATER_LEVEL-1,
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
]]
-- Kelp

minetest.register_decoration({
    name = "water:kelp",
    deco_type = "simple",
    place_on = {"water:kelp_biome_sand"},
    place_offset_y = -1,
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
    y_max = WATER_LEVEL-1,
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

minetest.register_decoration({
    name = "orange schem",
    place_on = {"default:coral_skeleton", "water:orange_coral"},
    sidelen = 16,
	fill_ratio = 0.003,
    y_max = WATER_LEVEL-1,
    y_min = biome_one_limit,
    biomes = {"coral reef ocean 1","coral reef ocean 2","coral reef ocean 3","coral reef ocean 4"},
	deco_type = "schematic",
	schematic = orange_tree,
	-- Note that place_center_y is set to false. This is because we want the cuboids to appear as if they lie "on" the surface..
	--flags = {place_center_x = true, place_center_y = false, place_center_z = true},
})

minetest.register_decoration({
    name = "team schem",
    place_on = {"default:coral_skeleton", "water:teal_coral"},
    sidelen = 16,
	fill_ratio = 0.003,
    y_max = WATER_LEVEL-1,
    y_min = biome_one_limit,
    biomes = {"coral reef ocean 1","coral reef ocean 2","coral reef ocean 3","coral reef ocean 4"},
	deco_type = "schematic",
	schematic = teal_stack,
	-- Note that place_center_y is set to false. This is because we want the cuboids to appear as if they lie "on" the surface..
	--flags = {place_center_x = true, place_center_y = false, place_center_z = true},
})

minetest.register_decoration({
    name = "giant coral",
    place_on = {"default:coral_skeleton", "water:purple_coral"},
    sidelen = 16,
	fill_ratio = 0.003,
    y_max = WATER_LEVEL-1,
    y_min = biome_one_limit,
    biomes = {"coral reef ocean 1","coral reef ocean 2","coral reef ocean 3","coral reef ocean 4"},
	deco_type = "schematic",
	schematic = giant_coral,
	-- Note that place_center_y is set to false. This is because we want the cuboids to appear as if they lie "on" the surface..
	--flags = {place_center_x = true, place_center_y = false, place_center_z = true},
})