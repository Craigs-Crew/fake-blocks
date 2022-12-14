-- Minetest 0.4 mod: columnia by Glunggi(former Stairs Copyright by(C) 2011-2012 Kahrl <kahrl@gmx.net> Copyright (C) 2011-2012 celeron55, Perttu Ahola)
-- See README.txt for licensing and other information.

columnia = {}
-- Bracket 
minetest.register_node("columnia:bracket",	{ 
            description = 'Bracket (Column) (Deprecated)',
			tiles = {"columnia_rusty.png",},
			drawtype = "nodebox",
			sunlight_propagates = true,
			paramtype = 'light',
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
			        {-0.25, 0, 0.4375, 0.25, 0.5, 0.5},
			        {-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875},
			        {-0.0625, -0.375, -0.0625, 0.0625, 0.1875, 0.0625},
			        {-0.0625, 0.1875, -0.0625, 0.0625, 0.3125, 0.4375},
			        {-0.1875, 0.0625, 0.3125, 0.1875, 0.4375, 0.4375},
			        {-0.125, -0.375, -0.125, 0.125, -0.25, 0.125},
		        },
			},
			groups = {not_in_creative_inventory = 1, choppy=2, oddly_breakable_by_hand=2,},
			sounds = default.node_sound_stone_defaults(),
})

-- Lamp
minetest.register_node("columnia:lamp_ceiling", {
    description = "Ceiling Lamp (Column) (Deprecated)",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	inventory_image = "columnia_lamp_inv.png",
	tiles = {
	         "columnia_rusty.png", "columnia_lamp.png", "columnia_lamp.png",
		     "columnia_lamp.png", "columnia_lamp.png", "columnia_lamp.png"
	        },
	sunlight_propagates = true,
	light_source = 13,
	walkable = false,
	groups = {not_in_creative_inventory = 1, snappy=2,cracky=3,oddly_breakable_by_hand=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, 0.4375, -0.1875, 0.1875, 0.5, 0.1875},
			{-0.125, 0.375, -0.125, 0.125, 0.4375, 0.125}, 
		},
	},
	sounds = default.node_sound_glass_defaults(),
})

-- Rusty_Block

minetest.register_node("columnia:rusty_block", {
	description = "Rusty Block (Deprecated)",
	tiles = {"columnia_rusty_block.png"},
	is_ground_content = true,
	groups = {not_in_creative_inventory = 1, cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

-- Now the Column
-- Node will be called columnia:column_mid_<subname>
function columnia.register_column_mid(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":columnia:column_mid_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
			     {-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})
end


-- Node will be called columnia:column_top_<subname>
function columnia.register_column_top(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":columnia:column_top_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
			   {-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
			   {-0.5, 0.25, -0.5, 0.5, 0.5, 0.5}, 
			   {-0.375, 0, -0.375, 0.375, 0.5, 0.375},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})
end

-- Node will be called columnia:column_bottom_<subname>
function columnia.register_column_bottom(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":columnia:column_bottom_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
			    {-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
			    {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
			    {-0.375, -0.5, -0.375, 0.375, 0, 0.375},
            },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})
end
-- Node will be called columnia:column_crosslink<subname>
function columnia.register_column_crosslink(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":columnia:column_crosslink_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
			   {-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
			   {-0.5, 0, -0.25, 0.5, 0.5, 0.25},
			   {-0.25, 0, -0.5, 0.25, 0.5, 0.5},
			   {-0.4375, 0.0625, -0.4375, 0.4375, 0.4375, 0.4375},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})
end

-- Node will be called columnia:column_link<subname>
function columnia.register_column_link(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":columnia:column_link_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
			    {-0.25, 0, -0.5, 0.25, 0.5, 0.5},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})
end

-- Node will be called columnia:column_linkdown<subname>
function columnia.register_column_linkdown(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":columnia:column_linkdown_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
			   {-0.25, 0, -0.5, 0.25, 0.5, 0.5},
			   {-0.125, -0.5, -0.125, 0.125, 0, 0.125},
			   {-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875},
			   {-0.1875, -0.125, -0.1875, 0.1875, 0, 0.1875},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})
end


-- Nodes will be called columnia:{column}_<subname>
function columnia.register_column_ia(subname, recipeitem, groups, images, desc_column_mid, desc_column_top, desc_column_bottom, desc_column_crosslink, desc_column_link, desc_column_linkdown, sounds)
	columnia.register_column_mid(subname, recipeitem, groups, images, desc_column_mid, sounds)
	columnia.register_column_top(subname, recipeitem, groups, images, desc_column_top, sounds)
	columnia.register_column_bottom(subname, recipeitem, groups, images, desc_column_bottom, sounds)
	columnia.register_column_crosslink(subname, recipeitem, groups, images, desc_column_crosslink, sounds)
	columnia.register_column_link(subname, recipeitem, groups, images, desc_column_link, sounds)
	columnia.register_column_linkdown(subname, recipeitem, groups, images, desc_column_linkdown, sounds)
end

columnia.register_column_ia("rusty_block", "columnia:rusty_block",
		{not_in_creative_inventory=1,cracky=3},
		{"columnia_rusty_block.png"},
		"Rusty Column (Deprecated)",
		"Rusty Column Top (Deprecated)",
		"Rusty Column Bottom (Deprecated)",
		"Rusty Column Crosslink (Deprecated)",
		"Rusty Column Link (Deprecated)",
		"Rusty Column Linkdown (Deprecated)",
		default.node_sound_stone_defaults()
        )

columnia.register_column_ia("stone", "default:stone",
		{not_in_creative_inventory=1,cracky=3},
		{"default_stone.png"},
		"Stone Column (Deprecated)",
		"Stone Column Top (Deprecated)",
		"Stone Column Bottom (Deprecated)",
		"Stone Column Crosslink (Deprecated)",
		"Stone Column Link (Deprecated)",
		"Stone Column Linkdown (Deprecated)",
		default.node_sound_stone_defaults()
        )
		
columnia.register_column_ia("stonebrick", "default:stonebrick",
		{not_in_creative_inventory=1,cracky=3},
		{"default_stone_brick.png"},
		"Stone Brick Column (Deprecated)",
		"Stone Brick Column Top (Deprecated)",
		"Stone Brick Column Bottom (Deprecated)",
		"Stone Brick Column Crosslink (Deprecated)",
		"Stone Brick Column Link (Deprecated)",
		"Stone Brick Column Linkdown (Deprecated)",
		default.node_sound_stone_defaults()
        )

columnia.register_column_ia("desert_stonebrick", "default:desert_stonebrick",
		{not_in_creative_inventory=1,cracky=3},
		{"default_desert_stone_brick.png"},
		"Desert Stone Brick Column (Deprecated)",
		"Desert Stone Brick Column Top (Deprecated)",
		"Desert Stone Brick Column Bottom (Deprecated)",
		"Desert Stone Brick Column Crosslink (Deprecated)",
		"Desert Stone Brick Column Link (Deprecated)",
		"Desert Stone Brick Column Linkdown (Deprecated)",
		default.node_sound_stone_defaults()
        )	

columnia.register_column_ia("desert_stone", "default:desert_stone",
		{not_in_creative_inventory=1,cracky=3},
		{"default_desert_stone.png"},
		"Desert Stone Column (Deprecated)",
		"Desert Stone Column Top (Deprecated)",
		"Desert Stone Column Bottom (Deprecated)",
		"Desert Stone Column Crosslink (Deprecated)",
		"Desert Stone Column Link (Deprecated)",
		"Desert Stone Column Linkdown (Deprecated)",
		default.node_sound_stone_defaults()
        )		
		
columnia.register_column_ia("cobble", "default:cobble",
		{not_in_creative_inventory=1,cracky=3},
		{"default_cobble.png"},
		"Cobble Column (Deprecated)",
		"Cobble Column Top (Deprecated)",
		"Cobble Column Bottom (Deprecated)",
		"Cobble Column Crosslink (Deprecated)",
		"Cobble Column Link (Deprecated)",
		"Cobble Column Linkdown (Deprecated)",
		default.node_sound_stone_defaults()
        )

columnia.register_column_ia("brick", "default:brick",
		{not_in_creative_inventory=1,cracky=3},
		{"default_brick.png"},
		"Brick Column (Deprecated)",
		"Brick Column Top (Deprecated)",
		"Brick Column Bottom (Deprecated)",
		"Brick Column Crosslink (Deprecated)",
		"Brick Column Link (Deprecated)",
		"Brick Column Linkdown (Deprecated)",
		default.node_sound_stone_defaults()
        )	
			
columnia.register_column_ia("sandstone", "default:sandstone",
		{not_in_creative_inventory=1,crumbly=2,cracky=2},
		{"default_sandstone.png"},
		"Sandstone Column (Deprecated)",
		"Sandstone Column Top (Deprecated)",
		"Sandstone Column Bottom (Deprecated)",
		"Sandstone Column Crosslink (Deprecated)",
		"Sandstone Column Link (Deprecated)",
		"Sandstone Column Linkdown (Deprecated)",
		default.node_sound_stone_defaults()
        )
		
columnia.register_column_ia("sandstonebrick", "default:sandstonebrick",
		{not_in_creative_inventory=1,crumbly=2,cracky=2},
		{"default_sandstone_brick.png"},
		"Sandstone Brick Column (Deprecated)",
		"Sandstone Brick Column Top (Deprecated)",
		"Sandstone Brick Column Bottom (Deprecated)",
		"Sandstone Brick Column Crosslink (Deprecated)",
		"Sandstone Brick Column Link (Deprecated)",
		"Sandstone Brick Column Linkdown (Deprecated)",
		default.node_sound_stone_defaults()
        )
		
columnia.register_column_ia("wood", "default:wood",
		{not_in_creative_inventory=1,snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_wood.png"},
		"Wooden Column (Deprecated)",
		"Wooden Column Top (Deprecated)",
		"Wooden Column Bottom (Deprecated)",
		"Wooden Column Crosslink (Deprecated)",
		"Wooden Column Link (Deprecated)",
		"Wooden Column Linkdown (Deprecated)",
		default.node_sound_wood_defaults())

columnia.register_column_ia("junglewood", "default:junglewood",
		{not_in_creative_inventory=1,snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_junglewood.png"},
		"Junglewood Column (Deprecated)",
		"Junglewood Column Top (Deprecated)",
		"Junglewood Column Bottom (Deprecated)",
		"Junglewood Column Crosslink (Deprecated)",
		"Junglewood Column Link (Deprecated)",
		"Junglewood Column Linkdown (Deprecated)",
		default.node_sound_wood_defaults())

columnia.register_column_ia("pinewood", "default:pine_wood",
        {not_in_creative_inventory=1,snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
        {"default_pine_wood.png"},
        "Pinewood Column (Deprecated)",
        "Pineewood Column Top (Deprecated)",
        "Pineewood Column Bottom (Deprecated)",
        "Pineewood Column Crosslink (Deprecated)",
        "Pineewood Column Link (Deprecated)",
        "Pineewood Column Linkdown (Deprecated)",
        default.node_sound_wood_defaults())

if core.get_modpath('moreblocks') then
	stairsplus:register_all(
                'columnia',
                'rusty_block',
                'columnia:rusty_block',
                {
                        description = 'Rusty Block (Deprecated)',
                        tiles = {
				'columnia_rusty_block.png'
			},
                        groups = {not_in_creative_inventory = 1, cracky=3},
                        sounds = default.node_sound_stone_defaults(),
                }
        )
end
