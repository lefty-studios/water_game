crafting.register_recipe({
	type   = "inv",
	output = "water:sea_stonebrick 4",
	items  = { "water:sea_stone 4", },
	always_known = true,
	level  = 1,
})

crafting.register_recipe({
	type   = "inv",
	output = "water:sea_stone_block 9",
	items  = { "water:sea_stone 9", },
	always_known = true,
	level  = 1,
})

minetest.register_craft({
	type = "cooking",
	output = "water:sea_stone",
	recipe = "water:sea_cobble",
})