WATER_LEVEL = 32
mapgen_params = {water_level = WATER_LEVEL}
minetest.set_mapgen_params(mapgen_params)
biome_one_limit = -8
biome_two_limit = -60
biome_three_limit = -112
minetest.set_mapgen_setting("mg_name", "flat", true)
minetest.set_mapgen_setting("mg_flags", "nocaves, nodungeons, light, decorations, biomes", true)
minetest.set_mapgen_setting("mgflat_spflags", "hills, lakes", true)
minetest.set_mapgen_setting("mgflat_hill_threshhold", "1000", true)
minetest.set_mapgen_setting("mgflat_hill_steepness", "25", true)
minetest.set_mapgen_setting("mgflat_lake_threshhold", "1000", true)
minetest.set_mapgen_setting("mgflat_lake_steepness", "200", true)
minetest.set_mapgen_setting("mgflat_np_terrain", "noise_params_2d 0, 0.7, (500, 500, 250), 7244, 5, 0.6, 2, eased", true)
--18213170583080855457

