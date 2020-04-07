
if mobs.mod and mobs.mod == "redo" then
mobs:register_mob("mobs_nssm:kraken", {
	type = "monster",
	attack_monsters = true,
	hp_max = 350,
	hp_min = 350,
	attack_animals = false,
	--attack_players =false,
	--specific_attack = {"boats:boat","mobs_sharks:shark_lg","mobs_sharks:shark_md","mobs_sharks:shark_sm","mobs_crocs:crocodile_swim","mobs_nssm:crab","mobs_nssm:kraken","player"},
	collisionbox = {-2, 0, -2, 2, 4, 2},
	visual = "mesh",
	mesh = "kraken.x",
	textures = {{"kraken.png"}, {"kraken2.png"}},
	visual_size = {x=10, y=10},
	lifetimer=50000,
	inker = true,
	view_range = 15,
	fly = true,
	fly_in = "default:dark_water_source",
	fall_speed = -1,
	walk_velocity = 1.5,
	run_velocity = 2.5,
	damage = 14,
	rotate = 270,
	jump = false,
	jump_chance = 0,
	jump_height = 0,
  	sounds = {
		random = "kraken",
	},
	drops = {
		{name = "mobs_nssm:tentacle",
		chance = 1,
		min = 40,
		max = 80,},
	},
	armor = 50,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 10,
	light_damage = 0,
	blood_amount=100,
	knock_back=0,
	on_rightclick = nil,
	attack_type = "dogfight",
	reach=8,
	animation = {
		speed_normal = 20,
		speed_run = 30,
		stand_start = 1,
		stand_end = 40,
		walk_start = 60,
		walk_end = 100,
		run_start = 60,
		run_end = 100,
		punch_start = 120,
		punch_end = 150,
	}
})

mobs:register_mob("mobs_nssm:octopus", {
	type = "monster",
	hp_max = 32,
	hp_min = 25,
	attack_animals = true,
	attack_monsters = true,
	--attack_players = false,
	--specific_attack = {"player","mobs_sharks:shark_lg","mobs_sharks:shark_md","mobs_sharks:shark_sm","mobs_crocs:crocodile_swim","mobs_nssm:crab"},
	collisionbox = {-0.9, -0.5, -0.9, 0.9, 0.92, 0.9},
	visual = "mesh",
	mesh = "octopus.x",
	textures = {{"octopus.png"}},
	visual_size = {x=4, y=4},
	view_range = 25,
	fly = true,
	fly_in = "default:water_source",
	fall_speed = -20,
	walk_velocity = 1.5,
	run_velocity = 3,
	damage = 5,
	reach = 2,
	rotate = 270,
	jump = false,
	jump_chance = 0,
	jump_height = 0,
  	sounds = {
		random = "octopus",
	},
	drops = {
		{name = "mobs_nssm:tentacle",
		chance = 1,
		min = 1,
		max = 8,},
	},
	armor = 70,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 10,
	light_damage = 0,
	group_attack=true,
	knock_back=2,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 25,
		speed_run = 35,
		stand_start = 1,
		stand_end = 50,
		walk_start = 60,
		walk_end = 100,
		run_start = 60,
		run_end = 100,
		punch_start = 120,
		punch_end = 160,
	}
})

mobs:register_mob("mobs_nssm:crab", {
	type = "monster",
	hp_max = 32,
	hp_min = 19,
	collisionbox = {-0.50, 0, -0.50, 0.70, 0.55, 0.5},
	visual = "mesh",
	mesh = "crab.x",
	textures = {{"crab1.png"},{"crab2.png"}},
  	sounds = {
		random = "crab",
	},
	visual_size = {x=3, y=3},
	makes_footstep_sound = true,
	view_range = 7,
	rotate = 270,
	fear_height = 4,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 5,
	reach = 2,
	floats = 0,
	jump = true,
	drops = {
		{name = "mobs_nssm:surimi",
		chance = 1,
		min = 3,
		max = 10,},
		{name = "mobs_nssm:crab_chela",
		chance = 4,
		min = 1,
		max = 2,},
		{name = "mobs_nssm:crab_carapace_fragment",
		chance = 1,
		min = 1,
		max = 1,},
	},
	armor = 40,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 10,
	light_damage = 0,
	group_attack=true,
	attack_animals=false,
	attack_monsters = true,
	knock_back=1,
	stepheight=1.1,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 25,
		speed_run = 35,
		stand_start = 10,
		stand_end = 80,
		walk_start = 120,
		walk_end = 140,
		run_start = 120,
		run_end = 140,
		punch_start = 90,
		punch_end = 110,
	}
})

mobs:register_mob("mobs_nssm:bloco", {
	type = "monster",
	hp_max = 24,
	hp_min = 14,
	collisionbox = {-0.56, -0.2, -0.56, 0.56, 1.2, 0.56},
	visual = "mesh",
	mesh = "bloco.x",
	textures = {{"bloco.png^[colorize:#008b82:100"}},
	visual_size = {x=4, y=4},
	makes_footstep_sound = true,
	view_range = 8,
	fear_height = 4,
	walk_velocity = 0.6,
	run_velocity = 2.5,
    rotate = 270,
    sounds = {
		random = "bloco",
	},
	damage = 4,
	reach = 2,
	jump = true,
	drops = {
		{name = "water:sea_stone",
		chance = 1,
		min = 2,
		max = 3,},
		{name = "mobs_nssm:bloco_skin",
		chance = 1,
		min = 1,
		max = 3,},
	},
	armor = 40,
	drawtype = "front",
	floats = 0,
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	group_attack=true,
	attack_animals=true,
	knock_back=0,
	--attacks_monsters = true,
	--blood_texture="stone_blood.png^[colorize:#008b82:100",
	immune_to={{'default:sword_stone', -2},{'default:stone', -2}, {'default:cobble', -2}, {'default:axe_stone', -2}, {'default:shovel_stone', -2}, {'default:pick_stone', -2}},
	stepheight=1.1,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 20,
		speed_run = 20,
		stand_start = 90,
		stand_end = 110,
		walk_start = 1,
		walk_end = 80,
		run_start = 120,
		run_end = 160,
		punch_start = 170,
		punch_end = 190,
	}
})


mobs:spawn_specific("mobs_nssm:crab", {"water:orange_coral", "water:red_coral","water:teal_coral", "water:purple_coral",}, {"default:water_source"}, 0, 30, 100, 1000, 12000, -31000, 25)
--mobs:spawn_specific("mobs_nssm:dolidrosaurus", {"default:water_source"}, {"default:water_source"}, 0, 20, 100, 35000000/1000, 1, -31000, 24)
mobs:spawn_specific("mobs_nssm:kraken", {"default:dark_water_source"}, {"default:dark_water_source"}, 0, 20, 400, 5000000000/1000, 1, -31000, -15)
mobs:spawn_specific("mobs_nssm:octopus", {"default:water_source"}, {"default:water_source"}, 0, 20, 80, 38000000/1000, 1, -31000, 15)
mobs:spawn_specific("mobs_nssm:bloco", {"water:sea_stone"}, {"default:dark_water_source", "default:water_source",}, 0, 30, 100, 100, 12, -31000, 20)




end
function nssm_register_eatcraftitems (name, descr, gnam)

minetest.register_craftitem("mobs_nssm:"..name, {
	description = descr,
	image =name..".png",
	on_use = minetest.item_eat(gnam),
	groups = { meat=1, eatable=1 },
})

end

nssm_register_eatcraftitems ('crocodile_tail','Crocodile Tail',3)
nssm_register_eatcraftitems ('roasted_crocodile_tail','Roasted Crocodile Tail',8)
nssm_register_eatcraftitems ('tentacle','Tentacle',2)
nssm_register_eatcraftitems ('roasted_tentacle','Roasted Tentacle',7)
nssm_register_eatcraftitems ('dolidrosaurus_fin','Dolidrosaurus Fin',-2)
nssm_register_eatcraftitems ('roasted_dolidrosaurus_fin','Roasted Dolidrosaurus Fin',6)
nssm_register_eatcraftitems ('surimi','Surimi',6)


function nssm_register_noneatcraftitems (name, descr)

minetest.register_craftitem("mobs_nssm:"..name, {
	description = descr,
	image = name..".png",
})

end
nssm_register_noneatcraftitems ('crab_chela','Crab Chela')
nssm_register_noneatcraftitems ('crab_carapace_fragment','Crab Carapace Fragment')
nssm_register_noneatcraftitems ('crocodile_skin','Crocodile Skin')
nssm_register_noneatcraftitems ('bloco_skin','Bloco Skin')

function nssm_register_recip (ingredient, dish, tictac)

minetest.register_craft({
	type = "cooking",
	output = "mobs_nssm:"..dish,
	recipe = "mobs_nssm:"..ingredient,
	cooktime = tictac,
})

end
nssm_register_recip ('tentacle', 'roasted_tentacle', 6)
nssm_register_recip ('crocodile_tail', 'roasted_crocodile_tail', 16)
nssm_register_recip ('dolidrosaurus_fin', 'roasted_dolidrosaurus_fin', 8)

if minetest.get_modpath("3d_armor") then


--Armors
		local stats = {
			croco = {name="Crocodile", armor=3, heal=0, use=450, fire = 0},
			bloco = {name="Bloco", armor=5, heal=0, use=700, fire = 15},
		}
		local materials = {
			croco="mobs_nssm:crocodile_skin",
			bloco ="mobs_nssm:bloco_skin",
		}

		for k, v in pairs(stats) do
			minetest.register_tool("mobs_nssm:helmet_"..k, {
				description = v.name.." Helmet",
				inventory_image ="inv_helmet_"..k..".png",
				groups = {armor_head=math.floor(4*v.armor), armor_heal=v.heal, armor_use=v.use, armor_fire=v.fire},
				wear = 0,
			})
			minetest.register_tool("mobs_nssm:chestplate_"..k, {
				description = v.name.." Chestplate",
				inventory_image ="inv_chestplate_"..k..".png",
				groups = {armor_torso=math.floor(6*v.armor), armor_heal=v.heal, armor_use=v.use, armor_fire=v.fire},
				wear = 0,
			})
			minetest.register_tool("mobs_nssm:leggings_"..k, {
				description = v.name.." Leggings",
				inventory_image = "inv_leggings_"..k..".png",
				groups = {armor_legs=math.floor(5*v.armor), armor_heal=v.heal, armor_use=v.use, armor_fire=v.fire},
				wear = 0,
			})
			minetest.register_tool("mobs_nssm:boots_"..k, {
				description = v.name.." Boots",
				inventory_image ="inv_boots_"..k..".png",
				groups = {armor_feet=math.floor(3*v.armor), armor_heal=v.heal, armor_use=v.use, armor_fire=v.fire},
				wear = 0,
			})
		end

		for k, v in pairs(materials) do
			minetest.register_craft({
				output = "mobs_nssm:helmet_"..k,
				recipe = {
					{v, v, v},
					{v, "", v},
					{"", "", ""},
				},
			})
			minetest.register_craft({
				output = "mobs_nssm:chestplate_"..k,
				recipe = {
					{v, "", v},
					{v, v, v},
					{v, v, v},
				},
			})
			minetest.register_craft({
				output = "mobs_nssm:leggings_"..k,
				recipe = {
					{v, v, v},
					{v, "", v},
					{v, "", v},
				},
			})
			minetest.register_craft({
				output = "mobs_nssm:boots_"..k,
				recipe = {
					{v, "", v},
					{v, "", v},
				},
			})
		end
--shields
		if minetest.get_modpath("shields") then
		local stats = {
			crab = {name="Crab", armor=4, heal=0, use=500},
		}
		local materials = {
			crab="mobs_nssm:crab_carapace_fragment",
		}
			for k, v in pairs(stats) do
				minetest.register_tool("mobs_nssm:shield_"..k, {
					description = v.name.." Shield",
					inventory_image ="inv_shield_"..k..".png",
					groups = {armor_head=math.floor(5*v.armor), armor_heal=v.heal, armor_use=v.use},
					wear = 0,
				})

				local m = materials[k]
				minetest.register_craft({
					output = "mobs_nssm:shield_"..k,
					recipe = {
						{m, m, m},
						{m, m, m},
						{"", m, ""},
					},
				})
			end
		end
end

minetest.register_tool("mobs_nssm:crab_light_mace", {
	description = "Light Crab Mace",
	inventory_image = "crab_light_mace.png",
	tool_capabilities = {
		full_punch_interval =2 ,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[2]=1.4, [3]=1}, uses=20, maxlevel=1}
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_tool("mobs_nssm:crab_heavy_mace", {
	description = "Heavy Crab Mace",
	inventory_image = "crab_heavy_mace.png",
	tool_capabilities = {
		full_punch_interval =4 ,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[2]=2, [3]=1.4}, uses=20, maxlevel=1}
		},
		damage_groups = {fleshy=12},
	},
})
minetest.register_craft({
	output = 'mobs_nssm:crab_light_mace',
	recipe = {
		{'mobs_nssm:crab_chela'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'mobs_nssm:crab_heavy_mace',
	recipe = {
		{'', 'mobs_nssm:crab_chela', ''},
		{'mobs_nssm:crab_chela', 'mobs_nssm:crab_chela', 'mobs_nssm:crab_chela'},
		{'', 'group:stick', ''},
	}
})