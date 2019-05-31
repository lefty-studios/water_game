
if mobs.mod and mobs.mod == "redo" then

-- local variables
	local l_skins = {
		{"water_monster.png"}
	}
	local l_anims = {
		speed_normal = 15,	speed_run = 25,
		stand_start = 0,	stand_end = 0,
		walk_start = 0,	walk_end = 20,
		run_start = 0,		run_end = 20,
		punch_start = 30,	punch_end = 40
	}
	local l_model			= "water_monster.x"
	local l_sounds			= {random = "croco"}
	local l_egg_texture		= "default_grass.png"
	local l_spawn_chance	= 600
	
		mobs:register_mob("mobs_lefty:water_monster", {
			type = "monster",
			attack_type = "dogfight",
			attack_animals = true,
			attack_monsters = true,
			specific_attack = {"player", "mobs_fish:tropical","mobs_nssm:octopus","mobs_nssm:crab","mobs_sharks:shark_md","mobs_sharks:shark_sm","mobs_sharks:shark_lg","mobs_m:ore_crab"},
			damage = 8,
			reach = 1.5,
			hp_min = 50,
			hp_max = 75,
			armor = 200,
			rotate = 180,
			collisionbox = {-0.9, -0.5, -0.9, 0.9, 0.92, 0.9},
			drawtype = "front",
			visual = "mesh",
			mesh = l_model,
			textures = l_skins,
			visual_size = {x=5, y=5},
			drops = {
				{name = "mobs_nssm:crocodile_skin",
				chance = 1,
				min = 1,
				max = 8,},
				{name = "mobs_nssm:crocodile_tail",
				chance = 1,
				min = 1,
				max = 2,},
			},
			sounds = l_sounds,
			fly = true,
			fly_in = "default:water_source",
			fall_speed = -10,
			walk_velocity = 1.5,
			run_velocity = 3,
			floats = 0,
			view_range = 10,
			water_damage = 0,
			lava_damage = 10,
			light_damage = 0,
			animation = l_anims
		})
		--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
		mobs:spawn_specific("mobs_lefty:water_monster",
			{"water:sea_stone"},
			{"default:water_flowing","default:water_source"},
			-1, 18, 30, l_spawn_chance, 1000, -2, 31000)
		mobs:register_egg("mobs_lefty:water_monster", "Water Monster", l_egg_texture, 1)

end
