
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
			attacks_players = true,
			--specific_attack = {"player", "mobs_fish:tropical","mobs_nssm:octopus","mobs_nssm:crab","mobs_sharks:shark_md","mobs_sharks:shark_sm","mobs_sharks:shark_lg","mobs_m:ore_crab"},
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
		--mobs:spawn_specific("mobs_lefty:water_monster", "water:sea_stone", "default:water_source", 0, 30, 10000, 1000, 12, -31000, 20)
	--	mobs:register_egg("mobs_lefty:water_monster", "Water Monster", l_egg_texture, 1)

mobs:register_mob("mobs_lefty:magma_monster", {
			type = "monster",
			attack_type = "dogshoot",
			dogshoot_switch = 1,
			dogshoot_count_max = 12, -- shoot for 10 seconds
			dogshoot_count2_max = 3, -- dogfight for 3 seconds
			reach = 3,
			shoot_interval = 2.2,
			arrow = "mobs_lefty:fireball",
			shoot_offset = 1,
			attack_animals = true,
			attack_monsters = true,
			attacks_players = true,
			--specific_attack = {"player", "mobs_fish:tropical","mobs_nssm:octopus","mobs_nssm:crab","mobs_sharks:shark_md","mobs_sharks:shark_sm","mobs_sharks:shark_lg","mobs_m:ore_crab"},
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
			textures = {"water_monster_lava.png"},
			visual_size = {x=7, y=7},
			drops = {
				{name = "mobs_nssm:crocodile_skin",
				chance = 1,
				min = 1,
				max = 8,},
				{name = "mobs_nssm:crocodile_tail",
				chance = 1,
				min = 1,
				max = 4,},
			},
			sounds = l_sounds,
			fly = true,
			fly_in = "default:water_source",
			fall_speed = -10,
			walk_velocity = 1.5,
			run_velocity = 3,
			floats = 0,
			view_range = 25,
			water_damage = 0,
			lava_damage = 0,
			light_damage = 0,
			animation = l_anims
		})
		--name, nodes, neighbours, minlight, maxlight, interval, chance, active_object_count, min_height, max_height
		mobs:spawn_specific("mobs_lefty:magma_monster", "water:magma", "default:water_source", 0, 30, 100, 1000, 12, -31000, 20)
		mobs:register_egg("mobs_lefty:magma_monster", "Magma Reptile", l_egg_texture, 1)
		
mobs:register_arrow("mobs_lefty:fireball", {
	visual = "sprite",
	visual_size = {x = 1, y = 1},
	textures = {"fire_basic_flame.png"},
	collisionbox = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	velocity = 7,
	tail = 1,
	tail_texture = "fire_basic_flame.png",
	tail_size = 10,
	glow = 5,
	expire = 0.1,

	on_activate = function(self, staticdata, dtime_s)
		-- make fireball indestructable
		self.object:set_armor_groups({immortal = 1, fleshy = 100})
	end,

	-- direct hit, no fire... just plenty of pain
	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 8},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 8},
		}, nil)
	end,

	-- node hit
	hit_node = function(self, pos, node)
		mobs:boom(self, pos, 1)
		minetest.set_node(pos, {name = "water:magma"})
	end
})