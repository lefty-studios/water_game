local time = 0
--time = minetest.get_timeofday()
local isTimeDay = false

--
-- Formspecs
--

function get_furnace_active_formspec(item_percent)
	return "size[8,8.5]"..
		"list[context;src;2.75,1.5;1,1;]"..
		--"list[context;fuel;2.75,2.5;1,1;]"..
		--"image[2.75,1.5;1,1;default_furnace_fire_bg.png^[lowpart:"..
		--(100-fuel_percent)..":default_furnace_fire_fg.png]"..
		"image[3.75,1.5;1,1;gui_furnace_arrow_bg.png^[lowpart:"..
		(item_percent)..":gui_furnace_arrow_fg.png^[transformR270]"..
		"list[context;dst;4.75,0.96;2,2;]"..
		"list[current_player;main;0,4.25;8,1;]"..
		"list[current_player;main;0,5.5;8,3;8]"..
		"listring[context;dst]"..
		"listring[current_player;main]"..
		"listring[context;src]"..
		"listring[current_player;main]"..
		--"listring[context;fuel]"..
		"listring[current_player;main]"..
		default.get_hotbar_bg(0, 4.25)
end

function get_furnace_inactive_formspec()
	return "size[8,8.5]"..
		"list[context;src;2.75,1.5;1,1;]"..
		--"list[context;fuel;2.75,2.5;1,1;]"..
		--"image[2.75,1.5;1,1;default_furnace_fire_bg.png]"..
		"image[3.75,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]"..
		"list[context;dst;4.75,0.96;2,2;]"..
		"list[current_player;main;0,4.25;8,1;]"..
		"list[current_player;main;0,5.5;8,3;8]"..
		"listring[context;dst]"..
		"listring[current_player;main]"..
		"listring[context;src]"..
		"listring[current_player;main]"..
		--"listring[context;fuel]"..
		"listring[current_player;main]"..
		default.get_hotbar_bg(0, 4.25)
end

--
-- Node callback functions that are the same for active and inactive furnace
--

local function can_dig(pos, player)
	local meta = minetest.get_meta(pos);
	local inv = meta:get_inventory()
	return inv:is_empty("dst") and inv:is_empty("src")
end

local function allow_metadata_inventory_put(pos, listname, index, stack, player)
	if minetest.is_protected(pos, player:get_player_name()) then
		return 0
	end
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	if listname == "src" then
		return stack:get_count()
	elseif listname == "dst" then
		return 0
	end
end

local function allow_metadata_inventory_move(pos, from_list, from_index, to_list, to_index, count, player)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local stack = inv:get_stack(from_list, from_index)
	return allow_metadata_inventory_put(pos, to_list, to_index, stack, player)
end

local function allow_metadata_inventory_take(pos, listname, index, stack, player)
	if minetest.is_protected(pos, player:get_player_name()) then
		return 0
	end
	return stack:get_count()
end

local function swap_node(pos, name)
	local node = minetest.get_node(pos)
	if node.name == name then
		return
	end
	node.name = name
	minetest.swap_node(pos, node)
end

local function furnace_node_timer(pos, elapsed)
	--
	-- Inizialize metadata
	--
	local meta = minetest.get_meta(pos)
	--local fuel_time = meta:get_float("fuel_time") or 1000
	local src_time = meta:get_float("src_time") or 0
	--local fuel_totaltime = meta:get_float("fuel_totaltime") or 0

	local inv = meta:get_inventory()
	local srclist

	local cookable, cooked

	local update = true

	while elapsed > 0 and update do
		update = false

		srclist = inv:get_list("src")
		--fuellist = inv:get_list("fuel")

		--
		-- Cooking
		--

		-- Check if we have cookable content
		local aftercooked
		cooked, aftercooked = minetest.get_craft_result({method = "cooking", width = 1, items = srclist})
		cookable = cooked.time ~= 0

		local el = elapsed
		if cookable then -- fuel lasts long enough, adjust el to cooking duration
			el = math.min(el, (cooked.time * 15) - src_time)
		end

		-- Check if we have enough fuel to burn
		if isTimeDay == true then
			-- The furnace is currently active and has enough fuel
			--fuel_time = fuel_time + el
			-- If there is a cookable item then check if it is ready yet
			if cookable then
				src_time = src_time + el
				if src_time >= (cooked.time * 15) then --make cooking time longer for the stove
					-- Place result in dst list if possible
					if inv:room_for_item("dst", cooked.item) then
						inv:add_item("dst", cooked.item)
						inv:set_stack("src", 1, aftercooked.items[1])
						src_time = src_time - (cooked.time * 15)

						update = true
					end
				else
					-- Item could not be cooked: probably missing fuel
					update = true
				end
			end
		else
			-- Furnace ran out of fuel
			if cookable then
			-- nothing
			else
				-- We don't need to get new fuel since there is no cookable item
				--fuel_totaltime = 0
				src_time = 0
			end
		end
		elapsed = elapsed - el
	end

	if fuel and fuel_totaltime > fuel.time then
		fuel_totaltime = fuel.time
	end
	if srclist[1]:is_empty() then
		src_time = 0
	end

	--
	-- Update formspec, infotext and node
	--
	local formspec
	local item_state
	local item_percent = 0
	if cookable then
		item_percent = math.floor(src_time / (cooked.time * 15) * 100)
		if item_percent > 100 then
			item_state = "100% (output full)"
		else
			item_state = item_percent .. "%"
		end
	else
		if srclist[1]:is_empty() then
			item_state = "Empty"
		else
			item_state = "Not cookable"
		end
	end

	local fuel_state = "Empty"
	local active = "inactive"
	local result = false

	if isTimeDay == true then
		active = "active"
		--local fuel_percent = math.floor(fuel_time / fuel_totaltime * 100)
		--fuel_state = fuel_percent .. "%"
		formspec = get_furnace_active_formspec(item_percent)
		swap_node(pos, "water:stove_active")
		-- make sure timer restarts automatically
		result = true
	else
		active = "inactive"
		formspec = get_furnace_inactive_formspec()
		swap_node(pos, "water:stove")
		-- stop timer on the inactive furnace
		minetest.get_node_timer(pos):stop()
	end

	local infotext = "Stove " .. active .. "\n(Item: " .. item_state ..
		"; Fuel: " .. fuel_state .. ")"

	--
	-- Set meta values
	--
--	meta:set_float("fuel_totaltime", fuel_totaltime)
--	meta:set_float("fuel_time", fuel_time)
	meta:set_float("src_time", src_time)
	meta:set_string("formspec", formspec)
	meta:set_string("infotext", infotext)

	return result
end

--
-- Node definitions
--

minetest.register_node("water:stove", {
	description = "Solar-powered Stove",
	tiles = {
		"water_stove_top.png", "default_steel_block.png",
		"water_stove_side.png", "water_stove_side.png",
		"water_stove_side.png", "water_stove_front.png"
	},
	paramtype2 = "facedir",
	groups = {cracky=2, oddly_breakable_by_hand = 1},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),

	can_dig = can_dig,

	on_timer = furnace_node_timer,

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", get_furnace_inactive_formspec())
		local inv = meta:get_inventory()
		inv:set_size('src', 1)
		--inv:set_size('fuel', 0)
		inv:set_size('dst', 4)
	end,

	on_metadata_inventory_move = function(pos)
		minetest.get_node_timer(pos):start(1.0)
	end,
	on_metadata_inventory_put = function(pos)
		-- start timer function, it will sort out whether furnace can burn or not.
		minetest.get_node_timer(pos):start(1.0)
	end,
	on_blast = function(pos)
		local drops = {}
		default.get_inventory_drops(pos, "src", drops)
		--default.get_inventory_drops(pos, "fuel", drops)
		default.get_inventory_drops(pos, "dst", drops)
		drops[#drops+1] = "water:stove"
		minetest.remove_node(pos)
		return drops
	end,

	allow_metadata_inventory_put = allow_metadata_inventory_put,
	allow_metadata_inventory_move = allow_metadata_inventory_move,
	allow_metadata_inventory_take = allow_metadata_inventory_take,
})

minetest.register_node("water:stove_active", {
	description = "Solar-powered Stove",
	tiles = {
		"water_stove_top.png", "default_steel_block.png",
		"water_stove_side.png", "water_stove_side.png",
		"water_stove_side.png", "water_stove_front_active.png"
	},
	paramtype2 = "facedir",
	--light_source = 8,
	drop = "water:stove",
	groups = {cracky=2, not_in_creative_inventory=1, oddly_breakable_by_hand = 1}, --fite meh
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	on_timer = furnace_node_timer,

	can_dig = can_dig,

	allow_metadata_inventory_put = allow_metadata_inventory_put,
	allow_metadata_inventory_move = allow_metadata_inventory_move,
	allow_metadata_inventory_take = allow_metadata_inventory_take,
})

minetest.register_abm(
	{nodenames = {"water:stove"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		local light = minetest.get_timeofday()
		--minetest.chat_send_all(light)
		if light > 0.25 then
			--swap_node(pos, "water:stove_active")
			isTimeDay = true
			minetest.get_node_timer(pos):start(1.0)
		end
	end,
})
minetest.register_abm(
	{nodenames = {"water:stove_active"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		local light = minetest.get_timeofday()
		if light < 0.25 then
			--swap_node(pos, "water:stove")
			isTimeDay = false
			--minetest.get_node_timer(pos):stop()
		end
	end,
})
