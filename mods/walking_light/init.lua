local wielding_only = false

local players = {}

minetest.register_on_joinplayer(function(mt_player)
	local name = mt_player:get_player_name()
	players[name] = {name=name,pos={x=0,y=32000,z=0},wielding=0,mt_player=mt_player}
end)

minetest.register_on_leaveplayer(function(mt_player)
	local name = mt_player:get_player_name()
	local pinfo=players[name]
	if pinfo.wielding > 0 then
		pinfo.wielding = 0
		update_light_player(pinfo)
	end
	players[name] = nil
end)

--wielding_light returns 0 for no light; 1 for regular light.  Outside of this function we don't care what's being wielded, carried or worn, just what needs to be done.
function wielding_light(pinfo)
	if (wielding_only) then
		local wielded_item = pinfo.mt_player:get_wielded_item():get_name()
		if ((wielded_item == "default:torch") or (wielded_item == "walking_light:pick_mese")) then
			return 1
		end
	else 
		local inv = pinfo.mt_player:get_inventory()
		if inv ~= nil then
			local hotbar=inv:get_list("main")
			for i=1,8 do
				local item = hotbar[i]:get_name()
				if item == "default:torch" or item == "walking_light:pick_mese" then
					return 1
				end
			end
		end

		local armor = minetest.get_inventory({type="detached", name = pinfo.name .. "_armor"})
		if armor then
			local stack = ItemStack("walking_light:helmet_diamond")
			if armor:contains_item("armor", stack) then
				return 1
			end
		end
	end
	return 0
end

function update_light_player(pinfo)
	local removes = {}
	local adds = {}
	if pinfo.wielded > 0 then
		local pos=pinfo.old_pos
		local hash = (pos.x%64)*4096 + (pos.y%64)*64 + pos.z%64
		removes[hash] = pos
	end
	
	if pinfo.wielding > 0 then
		local pos=pinfo.pos
		local hash = (pos.x%64)*4096 + (pos.y%64)*64 + pos.z%64
		removes[hash] = nil
		adds[hash] = pos
	end
	
	for h,p in pairs(adds) do
		local node = minetest.env:get_node_or_nil(p)
		if node == nil or (node ~= nil and node.name == "air") then
			minetest.env:add_node(p, {type="node",name="walking_light:light"})
		end
	end

	for h,p in pairs(removes) do
		local node = minetest.env:get_node_or_nil(p)
		if node ~= nil and node.name == "walking_light:light" then
			minetest.env:add_node(p, {type="node",name="air"})
		end
	end
end

function update_light_all(dtime)
	for name,pinfo in pairs(players) do
		local pos = pinfo.mt_player:getpos()
		pinfo.wielded = pinfo.wielding
		pinfo.wielding = wielding_light(pinfo)
		if pos ~= nil then
			pinfo.old_pos = pinfo.pos
			pinfo.pos = {
				x=math.floor(pos.x + 0.5),
				y=math.floor(pos.y + 1.5),
				z=math.floor(pos.z + 0.5)}
			pinfo.pos_changed=(
				pinfo.old_pos.x ~= pinfo.pos.x or
				pinfo.old_pos.y ~= pinfo.pos.y or
				pinfo.old_pos.z ~= pinfo.pos.z)
		end
		players[pinfo.name] = pinfo

		if pinfo.pos_changed or (pinfo.wielded ~= pinfo.wielding) then
			update_light_player(pinfo)
		end
	end
end

minetest.register_globalstep(update_light_all)

minetest.register_node("walking_light:light", {
	drawtype = "glasslike",
	tile_images = {"walking_light.png"},
	inventory_image = minetest.inventorycube("walking_light.png"),
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	light_propagates = true,
	sunlight_propagates = true,
	light_source = 14,
	selection_box = {
		type = "fixed",
		fixed = {0, 0, 0, 0, 0, 0},
	},
})
minetest.register_tool("walking_light:pick_mese", {
	description = "Mese Pickaxe with light",
	inventory_image = "walking_light_mesepick.png",
	wield_image = "default_tool_mesepick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3},
			crumbly={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3},
			snappy={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3}
		}
	},
})

minetest.register_tool("walking_light:helmet_diamond", {
	description = "Diamond Helmet with light",
	inventory_image = "walking_light_inv_helmet_diamond.png",
	wield_image = "3d_armor_inv_helmet_diamond.png",
	groups = {armor_head=15, armor_heal=12, armor_use=100},
	wear = 0,
})

minetest.register_craft({
	output = 'walking_light:pick_mese',
	recipe = {
		{'default:torch'},
		{'default:pick_mese'},
	}
})

minetest.register_craft({
	output = 'walking_light:helmet_diamond',
	recipe = {
		{'default:torch'},
		{'3d_armor:helmet_diamond'},
	}
})
