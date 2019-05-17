function spears_register_spear(kind, desc, eq, toughness, material)

	minetest.register_tool("spears:spear_" .. kind, {
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
				cracky = {times={[3]=2}, uses=toughness, maxlevel=1},
			},
			damage_groups = {fleshy=eq},
		}
	})
	
	SPEAR_ENTITY=spears_set_entity(kind, eq, toughness)
	
	minetest.register_entity("spears:spear_" .. kind .. "_entity", SPEAR_ENTITY)
	
	minetest.register_craft({
		output = 'spears:spear_' .. kind,
		recipe = {
			{'group:wood', 'group:wood', material},
		}
	})
	
	minetest.register_craft({
		output = 'spears:spear_' .. kind,
		recipe = {
			{material, 'group:wood', 'group:wood'},
		}
	})
end

if not DISABLE_STONE_SPEAR then
	spears_register_spear('stone', 'Stone', 4, 20, 'group:stone')
end

if not DISABLE_STEEL_SPEAR then
	spears_register_spear('steel', 'Steel', 6, 30, 'default:steel_ingot')
end

if not DISABLE_COPPER_SPEAR then
	spears_register_spear('copper', 'Copper', 5, 35, 'default:copper_ingot')
end

if not DISABLE_BRONZE_SPEAR then
	spears_register_spear('bronze', 'Bronze', 6, 35, 'default:bronze_ingot')
end

if not DISABLE_OBSIDIAN_SPEAR then
	spears_register_spear('obsidian', 'Obsidian', 8, 30, 'default:obsidian')
end

if not DISABLE_DIAMOND_SPEAR then
	spears_register_spear('diamond', 'Diamond', 8, 40, 'default:diamond')
end
