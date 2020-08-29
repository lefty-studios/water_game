function register_plants (name, description, stages, regenstat,time)
    for i = 1,stages-1,1
    do
        minetest.register_node(":farming:"..name.."_"..i, {
            description = description,
            drawtype = "plantlike_rooted",
            waving = 1,
            paramtype = "light",
            tiles = {"default_coral_skeleton.png"},
            special_tiles = {{name = "water_"..name.."_"..i..".png", tileable_vertical = true}},
            inventory_image = "water_"..name.."_"..i..".png",
            groups = {snappy = 3},
            selection_box = {
                type = "fixed",
                fixed = {
                        {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
                        {-4/16, 0.5, -4/16, 4/16, 1.5, 4/16},
                },
            },
            node_dig_prediction = "default:coral_skeleton",
            node_placement_prediction = "",
            sounds = default.node_sound_stone_defaults({
                dig = {name = "default_dig_snappy", gain = 0.2},
                dug = {name = "default_grass_footstep", gain = 0.25},
            }),
        
            on_place = function(itemstack, placer, pointed_thing)
                return itemstack
            end,
        
            after_destruct  = function(pos, oldnode)
                minetest.set_node(pos, {name = "default:coral_skeleton"})
            end,
        })
        minetest.register_abm{
            label = name.." growth "..i,
            nodenames = {"farming:"..name.."_"..i},
            --neighbors = {"group:water"},
            interval = time,
            chance = 1,
            action = function(pos)
                local time = minetest.get_timeofday()
		        --minetest.chat_send_all(light)
		        if time > 0.25 then
                    minetest.set_node(pos, {name = "air"})
                    minetest.set_node(pos, {name = "farming:"..name.."_"..(i+1)})
                end
            end,
        }
    end

    minetest.register_node(":farming:"..name.."_"..stages, {
        description = description,
        drawtype = "plantlike_rooted",
        waving = 1,
        paramtype = "light",
        tiles = {"default_coral_skeleton.png"},
        special_tiles = {{name = "water_"..name.."_"..stages..".png", tileable_vertical = true}},
        inventory_image = "water_"..name.."_"..stages..".png",
        groups = {snappy = 3},
        selection_box = {
            type = "fixed",
            fixed = {
                    {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
                    {-4/16, 0.5, -4/16, 4/16, 1.5, 4/16},
            },
        },
        drop = "farming:"..name.."_fruit",
        node_dig_prediction = "default:coral_skeleton",
        node_placement_prediction = "",
        sounds = default.node_sound_stone_defaults({
            dig = {name = "default_dig_snappy", gain = 0.2},
            dug = {name = "default_grass_footstep", gain = 0.25},
        }),
    
        after_destruct  = function(pos, oldnode)
            minetest.set_node(pos, {name = "farming:"..name.."_"..stages-1})
        end,
    })

    minetest.register_craftitem(":farming:"..name.."_fruit", {
        description = description.." fruit",
        image = "water_"..name.."_fruit.png",
        on_use = minetest.item_eat(regenstat),
        groups = {vegan = 1, eatable = 1},
    })
    minetest.register_decoration({
		name = "farming gen for "..name,
		deco_type = "simple",
		place_on = {"default:coral_green", "default:coral_pink",
        "default:coral_cyan",},
		place_offset_y = -1,
		sidelen = 4,
        noise_params = {
			offset = -4,
			scale = 10,
			spread = {x = 5000, y = 5000, z = 5000},
			seed = 6015,
			octaves = 3,
			persist = 0.7,
		},
		y_max = 9,
		y_min = 8,
		flags = "force_placement",
		decoration = {
            "farming:"..name.."_"..(stages-(stages-1)), 
            "farming:"..name.."_"..(stages-(stages-2)),
            "farming:"..name.."_"..(stages-(stages-3)),  
		},
	})
end

register_plants("hydra_berry","Hydra Berry plant",4,3,45)
register_plants("fire_tube","Fire tube plant",3,3,45)

minetest.register_node(":water:grow_pod", {
    drawtype = "mesh",
    -- Path to the mesh
    mesh = "grow_pod_2.b3d",
    -- Holds the texture for each "material"
    tiles = {
        "grow_pod.png"
    },
    sunlight_propagates = true,
    paramtype = "light",
    groups = {snappy = 3},
})