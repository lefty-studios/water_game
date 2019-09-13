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
crafting.register_recipe({
	type   = "inv",
	output = "spears:spear_coral",
	items  = {"group:stick 2", "group:coral" },
	always_known = true,
	level  = 1,
})
crafting.register_recipe({
	type   = "inv",
	output = "spears:spear_obsidian",
	items  = {"group:stick 2", "default:obsidian" },
	always_known = true,
	level  = 1,
})
crafting.register_recipe({
	type   = "inv",
	output = "water:coral_stick 2",
	items  = {"default:coral_pink"},
	always_known = true,
	level  = 1,
})


minetest.register_craft({
	type = "cooking",
	output = "water:sea_stone",
	recipe = "water:sea_cobble",
})