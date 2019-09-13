minetest.register_craftitem("phaser:battery", {
	description = "Battery",
	inventory_image = "phaser_battery.png",
})

crafting.register_recipe({
	type   = "inv",
	output = "gunslinger:phaser",
	items  = {"phaser:battery", "gunslinger:phaser" },
	always_known = true,
	level  = 1,
})

armor:register_armor(":3d_armor:helmet_scuba", {
	description = "Scuba Helmet",
	inventory_image = "scuba_inv.png",
	groups = {armor_head=1, armor_heal=0, armor_use=0, flammable=1,armor_water=1},
	armor_groups = {fleshy=5},
	damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
})
