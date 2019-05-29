minetest.register_tool(":default:pick_coral", {
	description = "Coral Pickaxe",
	inventory_image = "coral_pick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool(":default:shovel_coral", {
	description = "Coral Shovel",
	inventory_image = "coral_shovel.png",
	wield_image = "default_tool_steelshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool(":default:axe_coral", {
	description = "Coral Axe",
	inventory_image = "coral_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})
minetest.register_craft({
	output = 'default:axe_coral',
	recipe = {
		{'group:coral', 'group:coral', ''},
		{'group:coral', 'water:coral_stick', ''},
		{'', 'water:coral_stick', ''},
	}
})

minetest.register_craft({
	output = 'default:axe_coral',
	recipe = {
		{'', 'group:coral', 'group:coral'},
		{'', 'water:coral_stick', 'group:coral'},
		{'', 'water:coral_stick', ''},
	}
})
minetest.register_craft({
	output = 'default:pick_coral',
	recipe = {
		{'group:coral', 'group:coral', 'group:coral'},
		{'', 'water:coral_stick', ''},
		{'', 'water:coral_stick', ''},
	}
})
minetest.register_craft({
	output = 'default:shovel_coral',
	recipe = {
		{'', 'group:coral', ''},
		{'', 'water:coral_stick', ''},
		{'', 'water:coral_stick', ''},
	}
})



function water_register_spear(kind, desc, eq, toughness, material)

	minetest.register_tool(":spears:spear_" .. kind, {
		description = desc .. " spear",
                wield_image = "spears_spear_" .. kind .. ".png",
		inventory_image = "spears_spear_" .. kind .. ".png^[transform4",
		wield_scale= {x=2,y=1,z=1},
		on_drop = function(itemstack, user, pointed_thing)
			spears_shot(itemstack, user)
			if not minetest.setting_getbool("creative_mode") then
				itemstack:take_item()
			end
			return itemstack
		end,
		on_place = function(itemstack, user, pointed_thing)
			minetest.add_item(pointed_thing.above, itemstack)
			if not minetest.setting_getbool("creative_mode") then
				itemstack:take_item()
			end
			return itemstack
		end,
		tool_capabilities = {
			full_punch_interval = 1.5,
			max_drop_level=1,
			groupcaps={
				cracky = {times={[3]=5}, uses=toughness, maxlevel=1},
			},
			damage_groups = {fleshy=eq},
		}
	})
	
	SPEAR_ENTITY=spears_set_entity(kind, eq, toughness)
	
	minetest.register_entity(":spears:spear_" .. kind .. "_entity", SPEAR_ENTITY)
	
	minetest.register_craft({
		output = 'spears:spear_' .. kind,
		recipe = {
			{'water:coral_stick', 'water:coral_stick', material},
		}
	})
	
	minetest.register_craft({
		output = 'spears:spear_' .. kind,
		recipe = {
			{material, 'water:coral_stick', 'water:coral_stick'},
		}
	})
end

water_register_spear('coral', 'Coral', 5, 25, 'group:coral')