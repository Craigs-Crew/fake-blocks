local COLOURS = {
		"Black",
		"Cyan",
		"Brown",
		"Dark Blue",
		"Dark Green",
		"Dark Grey",
		"Dark Pink",
		"Green",
		"Grey",
		"Orange",
		"Pink",
		"Purple",
		"Red",
		"White",
		"Yellow"
}

local COLOURS2 = {
		"black",
		"cyan",
		"brown",
		"dark_blue",
		"dark_green",
		"dark_grey",
		"dark_pink",
		"green",
		"grey",
		"orange",
		"pink",
		"purple",
		"red",
		"white",
		"yellow"
}

for number = 1, 15 do
	local colour = COLOURS[number]
	local colour2 = COLOURS2[number]
	minetest.register_node("colouredstonebricks:"..colour2, {
		description = colour.." Stone Brick",
		tiles = {"colouredstonebricks_"..colour2..".png"},
		groups = {cracky=3},
        sounds = default.node_sound_defaults(),
	})
    -- Support for stairsplus mod
    stairsplus:register_all("colouredstonebricks", colour2, "colouredstonebricks:"..colour2, {
        description = colour.." Stone Brick",
		tiles = {"colouredstonebricks_"..colour2..".png"},
		groups = {cracky=3,not_in_craft_guide=1},
		sounds = default.node_sound_defaults(),
        sunlight_propagates = true,
    })
end