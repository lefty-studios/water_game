--[[gunslinger.register_gun("gunslinger:cheetah", {
	itemdef = {
		description = "Cheetah (Assault Rifle)",
		inventory_image = "gunslinger_cheetah.png",
		wield_image = "gunslinger_cheetah.png^[transformFXR300",
		wield_scale = {x = 3, y = 3, z = 1}
	},

	mode = "automatic",
	dmg_mult = 2,
	recoil_mult = 5,
	fire_rate = 8,
	clip_size = 100,
	range = 80
})
]]
gunslinger.register_type("phaser", {
	mode = "semi-automatic",
	dmg_mult = 7.5,
	recoil_mult = 0,
	fire_rate = 1,
	clip_size = 20,
	range = 15,
	on_rclick = nil
})

gunslinger.register_gun("gunslinger:phaser", {
	itemdef = {
		description = "Phaser",
		inventory_image = "phaser.png",
		--wield_image = "gunslinger_cheetah.png^[transformFXR300",
		--wield_scale = {x = 3, y = 3, z = 1}
		groups = {chargable = 1},
	},
	type = "phaser",
})



minetest.register_alias("cheetah", "gunslinger:cheetah")

minetest.register_alias("phaser:phaser", "gunslinger:phaser")