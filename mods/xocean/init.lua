minetest.register_alias_force("xocean:brain_block", "water:blue_coral")
minetest.register_alias_force("xcoral:fire", "water:orange_coral")
minetest.register_alias_force("xcoral:bubble_block", "water:purple_coral")
minetest.register_alias_force("xcoral:bubble", "water:purple_coral")
minetest.register_alias_force("xcoral:brain_block", "water:red_coral")
minetest.register_alias_force("xcoral:tube_block", "water:teal_coral")
minetest.register_alias_force("xocean:tube_block", "water:teal_coral")
minetest.register_alias_force("xocean:bubble_block", "water:purple_coral")

---Mapgen
minetest.register_decoration({
		name = "xocean:brain",
		deco_type = "schematic",
		place_on = {"water:coral_biome_sand"},
		place_offset_y = 0,
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
		y_min = 9,
		flags = "force_placement",
		schematic = minetest.get_modpath("xocean") .. "/schems/brain.mts",
		param2 = 48,
		param2_max = 96,
})
minetest.register_decoration({
		name = "xocean:horn",
		deco_type = "schematic",
		place_on = {"water:coral_biome_sand"},
		place_offset_y = 0,
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
		y_min = 9,
		flags = "force_placement",
		schematic = minetest.get_modpath("xocean") .. "/schems/horn.mts",
		param2 = 48,
		param2_max = 96,
	})
minetest.register_decoration({
		name = "xocean:bubble",
		deco_type = "schematic",
		place_on = {"water:coral_biome_sand"},
		place_offset_y = 0,
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
		y_min = 9,
		flags = "force_placement",
		schematic = minetest.get_modpath("xocean") .. "/schems/bubble.mts",
		param2 = 48,
		param2_max = 96,
	})
minetest.register_decoration({
		name = "xocean:tube",
		deco_type = "schematic",
		place_on = {"water:coral_biome_sand"},
		place_offset_y = 0,
		sidelen = 1  ,
		noise_params = {
			offset = 0.0001,
			scale = 0.000001,
			spread = {x = 100000, y = 100000, z = 100000},
			seed = 87112,
			octaves = 20,
			persist = 0.7
		},
		y_max = 8,
		y_min = 8,
		flags = "force_placement",
		schematic = minetest.get_modpath("xocean") .. "/schems/tube.mts",
		param2 = 48,
		param2_max = 96,
	})
minetest.register_decoration({
		name = "xocean:fire",
		deco_type = "schematic",
		place_on = {"water:coral_biome_sand"},
		place_offset_y = 0,
		sidelen = 1  ,
		noise_params = {
			offset = 0.0001,
			scale = 0.000001,
			spread = {x = 100000, y = 100000, z = 100000},
			seed = 87112,
			octaves = 20,
			persist = 0.7
		},
		y_max = 8,
		y_min = 8,
		flags = "force_placement",
		schematic = minetest.get_modpath("xocean") .. "/schems/fire.mts",
		param2 = 48,
		param2_max = 96,
	})
minetest.register_decoration({
		name = "xocean:brain2",
		deco_type = "schematic",
		place_on = {"water:coral_biome_sand"},
		place_offset_y = 0,
		sidelen = 1  ,
		noise_params = {
			offset = 0.0001,
			scale = 0.000001,
			spread = {x = 100000, y = 100000, z = 100000},
			seed = 87112,
			octaves = 20,
			persist = 0.7
		},
		y_max = 8,
		y_min = 8,
		flags = "force_placement",
		schematic = minetest.get_modpath("xocean") .. "/schems/brain2.mts",
		param2 = 48,
		param2_max = 96,
	})
minetest.register_decoration({
		name = "xocean:horn2",
		deco_type = "schematic",
		place_on = {"water:coral_biome_sand"},
		place_offset_y = 0,
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
		y_min = 9,
		flags = "force_placement",
		schematic = minetest.get_modpath("xocean") .. "/schems/horn2.mts",
		param2 = 48,
		param2_max = 96,
	})
minetest.register_decoration({
		name = "xocean:bubble2",
		deco_type = "schematic",
		place_on = {"water:coral_biome_sand"},
		place_offset_y = 0,
		sidelen = 1  ,
		noise_params = {
			offset = 0.0001,
			scale = 0.000001,
			spread = {x = 100000, y = 100000, z = 100000},
			seed = 87112,
			octaves = 20,
			persist = 0.7
		},
		y_max = 8,
		y_min = 8,
		flags = "force_placement",
		schematic = minetest.get_modpath("xocean") .. "/schems/bubble2.mts",
		param2 = 48,
		param2_max = 96,
	})
minetest.register_decoration({
		name = "xocean:tube2",
		deco_type = "schematic",
		place_on = {"water:coral_biome_sand"},
		place_offset_y = 0,
		sidelen = 1  ,
		noise_params = {
			offset = 0.0001,
			scale = 0.000001,
			spread = {x = 100000, y = 100000, z = 100000},
			seed = 87112,
			octaves = 20,
			persist = 0.7
		},
		y_max = 8,
		y_min = 8,
		flags = "force_placement",
		schematic = minetest.get_modpath("xocean") .. "/schems/tube2.mts",
		param2 = 48,
		param2_max = 96,
	})
minetest.register_decoration({
		name = "xocean:fire2",
		deco_type = "schematic",
		place_on = {"water:coral_biome_sand"},
		place_offset_y = 0,
		sidelen = 1  ,
		noise_params = {
			offset = 0.0001,
			scale = 0.000001,
			spread = {x = 100000, y = 100000, z = 100000},
			seed = 87112,
			octaves = 20,
			persist = 0.7
		},
		y_max = 8,
		y_min = 8,
		flags = "force_placement",
		schematic = minetest.get_modpath("xocean") .. "/schems/fire2.mts",
		param2 = 48,
		param2_max = 96,
	})
minetest.register_decoration({
		name = "xocean:tube3",
		deco_type = "schematic",
		place_on = {"water:coral_biome_sand"},
		sidelen = 1  ,
		noise_params = {
			offset = 0.0001,
			scale = 0.000001,
			spread = {x = 100000, y = 100000, z = 100000},
			seed = 87112,
			octaves = 20,
			persist = 0.7
		},
		y_max = 8,
		y_min = 8,
		flags = "force_placement",
		schematic = minetest.get_modpath("xocean") .. "/schems/tube3.mts",
		param2 = 48,
		param2_max = 96,
	})
minetest.register_decoration({
		name = "xocean:brain3",
		deco_type = "schematic",
		place_on = {"water:coral_biome_sand"},
		sidelen = 1  ,
		noise_params = {
			offset = 0.0001,
			scale = 0.000001,
			spread = {x = 100000, y = 100000, z = 100000},
			seed = 87112,
			octaves = 20,
			persist = 0.7
		},
		y_max = 8,
		y_min = 8,
		flags = "force_placement",
		schematic = minetest.get_modpath("xocean") .. "/schems/brain3.mts",
		param2 = 48,
		param2_max = 96,
	})