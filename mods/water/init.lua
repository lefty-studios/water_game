local path = minetest.get_modpath(minetest.get_current_modname())

dofile(path .. "/mapgen.lua")
dofile(path .. "/tools.lua")
dofile(path .. "/ores.lua")
dofile(path .. "/recipes.lua")
dofile(path .. "/nodes.lua")
dofile(path .. "/furnace.lua")

minetest.register_item(":", {
	type = "none",
	wield_image = "wieldhand.png",
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[2]=3.00, [3]=0.70}, uses=0, maxlevel=1},
			snappy = {times={[3]=0.40}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0}
		},
		damage_groups = {fleshy=1},
	}
})

minetest.register_craftitem("water:coral_spear_tip", {
	description = "Coral Spear Tip",
	inventory_image = "water_coral_spear_tip.png",
})

minetest.register_craft({
	type = "fuel",
	recipe = "water:coral_glow",
	burntime = 7,
})

minetest.register_craftitem("water:coral_stick", {
	description = "Coral Stick",
	inventory_image = "coral_stick.png",
	groups = {stick = 1},
})

minetest.register_craft({
	type = "fuel",
	recipe = "water:magma",
	burntime = 15,
})

minetest.register_abm({
    nodenames = {"water:magma"},
	neighbors = {"group:water"},
    interval = 10,
    chance = 60,
    action = function(pos, node)
        minetest.add_particlespawner(
            5,
            2,
            {x=pos.x-0.01, y=pos.y-0.25, z=pos.z-0.01},
            {x=pos.x+0.01, y=pos.y+0.25, z=pos.z+0.01},
            {x=-0.2, y=-0.8, z=-0.2},
            {x=0, y=0.8, z=0},
            {x=0,y=0,z=0},
            {x=0,y=0,z=0},
            1.4,
            2.5,
            1,
            2,
            false,
            "bubble.png"
        )
    end,
})
