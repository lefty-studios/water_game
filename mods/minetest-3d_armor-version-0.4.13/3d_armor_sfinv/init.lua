-- support for i18n
local S = armor_i18n.gettext

if not minetest.global_exists("sfinv") then
	minetest.log("warning", S("3d_armor_sfinv: Mod loaded but unused."))
	return
end

sfinv.override_page("sfinv:crafting", {
	get = function(self, player, context)
		local name = player:get_player_name()
		local formspec = armor:get_armor_formspec(name, true)
		formspec = formspec .. "list[detached:creative_trash;main;7,3.4;1,1;]" ..
					"image[7.05,3.5;0.8,0.8;creative_trash_icon.png]"
		return sfinv.make_formspec(player, context, formspec, false)
	end
})
armor:register_on_update(function(player)
	if sfinv.enabled then
		sfinv.set_player_inventory_formspec(player)
	end
end)
