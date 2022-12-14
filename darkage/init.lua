------------------------------------------------------
-- Darkage mod by MasterGollum, addi and CraigyDavi --
------------------------------------------------------

dofile(minetest.get_modpath("darkage").."/nodes.lua")
dofile(minetest.get_modpath("darkage").."/stairs.lua")

-- darkage:desert_stone_cobble + stairs/slabs/microblocks -> default:desert_cobble + stairs/slabs/microblocks
minetest.register_alias("darkage:desert_stone_cobble","default:desert_cobble")
minetest.register_alias("darkage:stair_desert_stone_cobble_wall_half","default:stair_desert_cobble_wall_half")
minetest.register_alias("darkage:slab_desert_stone_cobble_inverted","default:slab_desert_cobble_inverted")
minetest.register_alias("darkage:stair_desert_stone_cobble_inverted","default:stair_desert_cobble_inverted")
minetest.register_alias("darkage:stair_desert_stone_cobble_outer","default:stair_desert_cobble_outer")
minetest.register_alias("darkage:slab_desert_stone_cobble_three_quarter_wall","default:slab_desert_cobble_three_quarter_wall")
minetest.register_alias("darkage:slab_desert_stone_cobble_quarter","default:slab_desert_cobble_quarter")
minetest.register_alias("darkage:slab_desert_stone_cobble","default:slab_desert_cobble")
minetest.register_alias("darkage:slab_desert_stone_cobble_quarter_inverted","default:slab_desert_cobble_quarter_inverted")
minetest.register_alias("darkage:stair_desert_stone_cobble_wall","default:stair_desert_cobble_wall")
minetest.register_alias("darkage:stair_desert_stone_cobble_outer_inverted","default:stair_desert_cobble_outer_inverted")
minetest.register_alias("darkage:stair_desert_stone_cobble_half","default:stair_desert_cobble_half")
minetest.register_alias("darkage:stair_desert_stone_cobble_wall_half_inverted","default:stair_desert_cobble_wall_half_inverted")
minetest.register_alias("darkage:micro_desert_stone_cobble_bottom","default:micro_desert_cobble_bottom")
minetest.register_alias("darkage:panel_desert_stone_cobble_bottom","default:panel_desert_cobble_bottom")
minetest.register_alias("darkage:stair_desert_stone_cobble_half_inverted","default:stair_desert_cobble_half_inverted")
minetest.register_alias("darkage:micro_desert_stone_cobble_top","default:micro_desert_cobble_top")
minetest.register_alias("darkage:slab_desert_stone_cobble_quarter_wall","default:slab_desert_cobble_quarter_wall")
minetest.register_alias("darkage:stair_desert_stone_cobble_right_half","default:stair_desert_cobble_right_half")
minetest.register_alias("darkage:stair_desert_stone_cobble_right_half_inverted","default:stair_desert_cobble_right_half_inverted")
minetest.register_alias("darkage:slab_desert_stone_cobble_three_quarter","default:slab_desert_cobble_three_quarter")
minetest.register_alias("darkage:panel_desert_stone_cobble_top","default:panel_desert_cobble_top")
minetest.register_alias("darkage:stair_desert_stone_cobble_inner","default:stair_desert_cobble_inner")
minetest.register_alias("darkage:stair_desert_stone_cobble","default:stair_desert_cobble")
minetest.register_alias("darkage:panel_desert_stone_cobble_vertical","default:panel_desert_cobble_vertical")
minetest.register_alias("darkage:stair_desert_stone_cobble_inner_inverted","default:stair_desert_cobble_inner_inverted")
minetest.register_alias("darkage:slab_desert_stone_cobble_three_quarter_inverted","default:slab_desert_cobble_three_quarter_inverted")

-- darkage:sandstone_cobble + stairs/slabs/microblocks -> default:sandstonebrick + stairs/slabs/microblocks
minetest.register_alias("darkage:sandstone_cobble","default:sandstonebrick")
minetest.register_alias("darkage:stair_sandstone_cobble_wall_half","default:stair_sandstonebrick_wall_half")
minetest.register_alias("darkage:slab_sandstone_cobble_inverted","default:slab_sandstonebrick_inverted")
minetest.register_alias("darkage:stair_sandstone_cobble_inverted","default:stair_sandstonebrick_inverted")
minetest.register_alias("darkage:stair_sandstone_cobble_outer","default:stair_sandstonebrick_outer")
minetest.register_alias("darkage:slab_sandstone_cobble_three_quarter_wall","default:slab_sandstonebrick_three_quarter_wall")
minetest.register_alias("darkage:slab_sandstone_cobble_quarter","default:slab_sandstonebrick_quarter")
minetest.register_alias("darkage:slab_sandstone_cobble","default:slab_sandstonebrick")
minetest.register_alias("darkage:slab_sandstone_cobble_quarter_inverted","default:slab_sandstonebrick_quarter_inverted")
minetest.register_alias("darkage:stair_sandstone_cobble_wall","default:stair_sandstonebrick_wall")
minetest.register_alias("darkage:stair_sandstone_cobble_outer_inverted","default:stair_sandstonebrick_outer_inverted")
minetest.register_alias("darkage:stair_sandstone_cobble_half","default:stair_sandstonebrick_half")
minetest.register_alias("darkage:stair_sandstone_cobble_wall_half_inverted","default:stair_sandstonebrick_wall_half_inverted")
minetest.register_alias("darkage:micro_sandstone_cobble_bottom","default:micro_sandstonebrick_bottom")
minetest.register_alias("darkage:panel_sandstone_cobble_bottom","default:panel_sandstonebrick_bottom")
minetest.register_alias("darkage:stair_sandstone_cobble_half_inverted","default:stair_sandstonebrick_half_inverted")
minetest.register_alias("darkage:micro_sandstone_cobble_top","default:micro_sandstonebrick_top")
minetest.register_alias("darkage:slab_sandstone_cobble_quarter_wall","default:slab_sandstonebrick_quarter_wall")
minetest.register_alias("darkage:stair_sandstone_cobble_right_half","default:stair_sandstonebrick_right_half")
minetest.register_alias("darkage:stair_sandstone_cobble_right_half_inverted","default:stair_sandstonebrick_right_half_inverted")
minetest.register_alias("darkage:slab_sandstone_cobble_three_quarter","default:slab_sandstonebrick_three_quarter")
minetest.register_alias("darkage:panel_sandstone_cobble_top","default:panel_sandstonebrick_top")
minetest.register_alias("darkage:stair_sandstone_cobble_inner","default:stair_sandstonebrick_inner")
minetest.register_alias("darkage:stair_sandstone_cobble","default:stair_sandstonebrick")
minetest.register_alias("darkage:panel_sandstone_cobble_vertical","default:panel_sandstonebrick_vertical")
minetest.register_alias("darkage:stair_sandstone_cobble_inner_inverted","default:stair_sandstonebrick_inner_inverted")
minetest.register_alias("darkage:slab_sandstone_cobble_three_quarter_inverted","default:slab_sandstonebrick_three_quarter_inverted")

-- darkage:slate_tale + stairs/slabs/microblocks -> darkage:slate_tile + stairs/slabs/microblocks
minetest.register_alias("darkage:slate_tale","darkage:slate_tile")
minetest.register_alias("darkage:slab_slate_tale_inverted","darkage:slab_slate_tile_inverted")
minetest.register_alias("darkage:slab_slate_tale_wall","darkage:slab_slate_tile_wall")
minetest.register_alias("darkage:slab_slate_tale_quarter","darkage:slab_slate_tile_quarter")
minetest.register_alias("darkage:slab_slate_tale_quarter_inverted","darkage:slab_slate_tile_quarter_inverted")
minetest.register_alias("darkage:slab_slate_tale_quarter_wall","darkage:slab_slate_tile_quarter_wall")
minetest.register_alias("darkage:slab_slate_tale_three_quarter","darkage:slab_slate_tile_three_quarter")
minetest.register_alias("darkage:slab_slate_tale_three_quarter_inverted","darkage:slab_slate_tile_three_quarter_inverted")
minetest.register_alias("darkage:slab_slate_tale_three_quarter_wall","darkage:slab_slate_tile_three_quarter_wall")
minetest.register_alias("darkage:stair_slate_tale_inverted","darkage:stair_slate_tile_inverted")
minetest.register_alias("darkage:stair_slate_tale_wall","darkage:stair_slate_tile_wall")
minetest.register_alias("darkage:stair_slate_tale_wall_half","darkage:stair_slate_tile_wall_half")
minetest.register_alias("darkage:stair_slate_tale_wall_half_inverted","darkage:stair_slate_tile_wall_half_inverted")
minetest.register_alias("darkage:stair_slate_tale_half","darkage:stair_slate_tile_half")
minetest.register_alias("darkage:stair_slate_tale_half_inverted","darkage:stair_slate_tile_half_inverted")
minetest.register_alias("darkage:stair_slate_tale_right_half","darkage:stair_slate_tile_right_half")
minetest.register_alias("darkage:stair_slate_tale_right_half_inverted","darkage:stair_slate_tile_right_half_inverted")
minetest.register_alias("darkage:stair_slate_tale_wall_half","darkage:stair_slate_tile_wall_half")
minetest.register_alias("darkage:stair_slate_tale_wall_half_inverted","darkage:stair_slate_tile_wall_half_inverted")
minetest.register_alias("darkage:stair_slate_tale_inner","darkage:stair_slate_tile_inner")
minetest.register_alias("darkage:stair_slate_tale_inner_inverted","darkage:stair_slate_tile_inner_inverted")
minetest.register_alias("darkage:stair_slate_tale_outer","darkage:stair_slate_tile_outer")
minetest.register_alias("darkage:stair_slate_tale_outer_inverted","darkage:stair_slate_tile_outer_inverted")
minetest.register_alias("darkage:panel_slate_tale_bottom","darkage:panel_slate_tile_bottom")
minetest.register_alias("darkage:panel_slate_tale_top","darkage:panel_slate_tile_top")
minetest.register_alias("darkage:panel_slate_tale_vertical","darkage:panel_slate_tile_vertical")
minetest.register_alias("darkage:micro_slate_tale_bottom","darkage:micro_slate_tile_bottom")
minetest.register_alias("darkage:micro_slate_tale_top","darkage:micro_slate_tile_top")

-- darkage:desert_stone_with_iron -> default:desert_stone
minetest.register_alias("darkage:desert_stone_with_iron","default:desert_stone")

--
-- Config
--

print ("Darkage [darkage] has loaded!")