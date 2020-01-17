
ships_on_mapgen = {}

-- if set to 100: place one ship in each mapchunk if possible;
-- if set to a lower value: percent chance of placing a ship
-- in a mapchunk
ships_on_mapgen.probability_per_mapchunk = 5;

ships_on_mapgen.schematics = {
	-- yoff: how deep is the ship burried in water?
--	{scm="boat", typ="ship", is_ship=true, yoff=-1, orients={0}},
--	{scm="shipc_4_270", typ="ship", is_ship=true, orients={0}}

	-- big sailing ship
	--{scm="ship_sokomine_big_3_180", typ="ship", is_ship=true, orients={0}},
	-- some smaller rafts
	-- raft for general transport purposes
	--{scm="raft_1_2_180", typ="ship", is_ship=true, orients={0}},
	-- raft with fences for transporting passagers or cattle
	--{scm="raft_2_2_180", typ="ship", is_ship=true, orients={0}},
	-- raft with hut on it
	--{scm="raft_3_2_180", typ="ship", is_ship=true, orients={0}},

	-- pirate ship from AspireMint
	--{scm="pirate_ship_aspiremint_3_90", typ="ship", is_ship=true, orients={0}},

	--{scm="pirate_shipwreck1__abandoned_1_90", typ="wreck", is_submerged=1, orients={0}},
	--{scm="pirate_shipwreck2_destroyed_by_pirates_0_90", typ="wreck", is_submerged=1, orients={0}},
	--{scm="pirate_shipwreck3_destroyed_by_kraken_0_90", typ="wreck", is_submerged=1, orients={0}},
	--{scm="house_ruins_sand_1", typ="wreck", is_submerged=1, orients={0}, yoff = -1},
	
}


ships_on_mapgen.mts_path = minetest.get_modpath( minetest.get_current_modname() ).."/schems/";

-- determine the size of the given houses and other necessary values
for i,v in ipairs( ships_on_mapgen.schematics ) do
	v.mts_path = ships_on_mapgen.mts_path;
	v.is_ship = true;
	v.typ = "ship";
	ships_on_mapgen.schematics[ i ] = handle_schematics.analyze_file( nil, nil, v.mts_path .. v.scm, v, false ); 
end


minetest.register_on_generated(function(minp, maxp, seed)
	-- no point in placing boats on mountains or deep below sealevel
	if( minp.y < -25 or minp.y > 0) then
		return;
	end

	local heightmap = minetest.get_mapgen_object('heightmap');
	if( not( heightmap )) then
		return;
	end

	-- place a ship on water if possible; do this with the given probability
	if( math.random(1,100)<ships_on_mapgen.probability_per_mapchunk ) then
		-- I have accidently used the building spawner instead of a chest when building the
		-- rafts. But that can easily be corrected here.
		local replacements = {{'handle_schematics:build','default:chest'}};
		-- choose a random ship
		local building = ships_on_mapgen.schematics[ math.random(1,#ships_on_mapgen.schematics) ];
		-- shipwrecks
		if( building.typ == "wreck" ) then
			replacements = {};
		-- the boat file uses strange blocks not occouring in default
		elseif( building.scm == "boat" ) then
			replacements = {
				{'color:orange', 'default:wood'},
				{'color:white', 'wool:white'},
				{'color:black', 'wool:black'}};
		elseif( math.random(1,3)>1) then
			-- colored sails can make the ships more intresting
			local colors = {"white", "white", "yellow", "grey", "black", "brown", "dark_green"};
			table.insert( replacements, {"cottages:wool", "wool:"..colors[math.random(1,#colors)]});
			table.insert( replacements, {"wool:white", "wool:"..colors[math.random(1,#colors)]});
		else
			-- not all ships have sails set
			table.insert( replacements, {"cottages:wool", "air"});
			table.insert( replacements, {"wool:white", "air"});
			table.insert( replacements, {"wool:grey", "air"});
		end

		-- AspireMints pirate ship uses stairplus stairs for better room usage;
		-- if those blocks are not available, normal stairs may be better than nothing
		if( building.scm == "pirate_ship_aspiremint"
		  and not( minetest.registered_nodes[ "stairsplus:panel_wood_bottom"])) then
			table.insert( replacements, {"starisplus:panel_wood_bottom", "stairs:stair_wood"});
		end
		-- fence rails are only supported in newest versions of minetest_game
		if( not( minetest.registered_nodes[ "default:fence_rail_wood"])) then
			table.insert( replacements, {"default:fence_rail_wood", "default:fence_wood"});
		end

		local success = handle_schematics.place_schematic_on_flat_land( heightmap, minp, maxp,
			building.sizex, building.sizez, -100, building.yoff-1,
			3, 3, 0, 0, -- margin: front, back, right, left
			ships_on_mapgen.mts_path..building.scm, --..".mts",
			replacements,
			building.yoff,
			building.orients[1],
			building,
			true
			);
	end
end);