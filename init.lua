
dofile(minetest.get_modpath("lapis").."/mapgen.lua")
dofile(minetest.get_modpath("lapis").."/columns.lua")

----------
-- Items
----------

--Lapis Lazuli  ( with Calcite impurities )
minetest.register_node("lapis:lapisblock", {
	description = "Lapis with Calcite",
	inventory_image = "lapis_block.png",
		tiles = {"lapis_block.png",	"lapis_block.png",	"lapis_block_side.png",	"lapis_block_side.png",	"lapis_block_side.png", "lapis_block_side.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
drop={
	items = {
			{items = {"lapis:lapis_stone"}, rarity =5},
		  {items = {'lapis:lapis_cobble'}},
		},
	},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--Lapis Bricks ( with Calcite impurities )
minetest.register_node("lapis:lapis_brick", {
description = "Lapis Brick",
inventory_image = "lapis_brick.png",
tiles = {"lapis_brick_top.png", "lapis_brick_top.png^[transformFXR90", "lapis_brick_side.png", "lapis_brick_side.png^[transformFX", "lapis_brick.png^[transformFX", "lapis_brick.png"},
 paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	drop = "lapis:lapis_brick",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--Cobbled Lapis
minetest.register_node("lapis:lapis_cobble", {
	description = "Cobbled Lapis",
	inventory_image = "lapis_cobble.png",
		tiles = {"lapis_cobble.png", "lapis_cobble.png^[transformFYR90", "lapis_cobble.png^[transformFX", "lapis_cobble.png", "lapis_cobble.png^[transformFX", "lapis_cobble.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
 drop={
	items = {
			{items = {"lapis:lapis_stone"}, rarity =5},
		  {items = {'lapis:lapis_cobble'}},
		},
	},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--Lazurite mineral : occurs almost exclusively in massive form
--without any visible crystals.
--The name Lazurite is derived from the term "Lazaward",
--which means heaven in Arabic.
minetest.register_node("lapis:lazurite", {
	description = "Lazurite",
	inventory_image = "lapis_lazurite.png",
	tiles = {"lapis_lazurite.png",	"lapis_lazurite.png",	"lapis_lazurite_side.png",	"lapis_lazurite_side.png",	"lapis_lazurite_side.png", "lapis_lazurite_side.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
		drop={
		items = {
			{items = {"lapis:lazurite"}, rarity =10},
		  {items = {'lapis:lapis_stone'}},
		},
	},
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

--Lazurite with Pyrite Deposits
minetest.register_node("lapis:sacred_ore", {
	description = "Lazurite with Pyrite",
	inventory_image = "lapis_sacred.png",
	tiles = {"lapis_sacred.png", "lapis_sacred.png", "lapis_sacred_side.png", "lapis_sacred_side.png", "lapis_sacred_side.png", "lapis_sacred_side.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	drop={
		items = {
			{items = {'lapis:pyrite_coin 2'}, rarity =20},
		  {items = {'lapis:lapis_stone'}},
			{items = {'lapis:pyrite_lump 2'}},
		},
	},
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

--Lazurite Bricks ( with pyrite grout ??? )
minetest.register_node("lapis:lazurite_brick", {
description = "Lazurite Brick",
inventory_image = "lapis_lazurite_brick.png",
tiles = {"lapis_lazurite_brick_top.png", "lapis_lazurite_brick_top.png^[transformFXR90", "lapis_lazurite_brick_side.png", "lapis_lazurite_brick_side.png^[transformFX", "lapis_lazurite_brick.png^[transformFX", "lapis_lazurite_brick.png"},
 paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	drop = "lapis:lazurite_brick",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--Lapis Floor Tile ( with pyrite grout ??? )
minetest.register_node("lapis:lapis_tile", {
  description = "Lapis Floor Tile",
  inventory_image ="lapis_tile.png",
	tiles = {"lapis_tile.png"},
 drawtype = 'nodebox',
	walkable = false,
 buildable_to = true,
	is_ground_content = true,
 paramtype = 'light',
 sunlight_propagates = true,
	groups = {cracky=3},
	drop="lapis:lapis_tile",
 paramtype2 = "facedir",
   node_box = {
      type = "fixed",
      fixed =  { -0.5, -0.5, -0.5, 0.5, -0.45, 0.5 }
   },
	sounds = default.node_sound_stone_defaults()
})

--Pyrite Ore
minetest.register_node("lapis:pyrite_ore", {
	description = "Pyrite Ore",
	inventory_image ="default_stone.png^lapis_mineral_pyrite.png",
	tiles = {"default_stone.png^lapis_mineral_pyrite.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	drop={
	max_items = 1,
		items = {
			{items = {"lapis:pyrite_coin"}, rarity = 20},
			{items = {"lapis:pyrite_lump 2"}},
		},
	},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--Pyrite Block
minetest.register_node("lapis:pyrite_block", {
	description = "Pyrite Block",
	tiles = {"lapis_pyrite_block.png"},
	inventory_image = "lapis_pyrite_block.png",
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	drop="lapis:pyrite_block",
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

--[[
--Pyrite Block (with "Cathedral" striations)
--Disabled____needs better texture
minetest.register_node("lapis:pyrite_sacred", {
	description = "Cathedral Pyrite",
	tiles = {"lapis_pyrite_sacred.png", "lapis_pyrite_block.png", "lapis_pyrite_sacred_side.png", "lapis_pyrite_sacred_side.png", "lapis_pyrite_sacred_side.png", "lapis_pyrite_sacred_side.png",},
	inventory_image = "lapis_pyrite_sacred.png",
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})
--]]

	--Stairs & Slabs
--When not used as gemstones, Lazurite is often sliced into slabs.
stairs.register_stair_and_slab("lapis", "lapis:lapisblock",
		{cracky=3},
		{"lapis_block.png"},
		"Lapis Stair",
		"Lapis Slab",
		default.node_sound_stone_defaults())

		stairs.register_stair_and_slab("lapis_brick", "lapis:lapis_brick",
		{cracky=3},
		{"lapis_brick.png"},
		"Lapis Brick Stair",
		"Lapis Brick Slab",
		default.node_sound_stone_defaults())

		stairs.register_stair_and_slab("lapis_cobble", "lapis:lapis_cobble",
		{cracky=3},
		{"lapis_cobble.png"},
		"Lapis Cobble Stair",
		"Lapis Cobble Slab",
		default.node_sound_stone_defaults())

		stairs.register_stair_and_slab("lazurite", "lapis:lazurite",
		{cracky=3},
		{"lapis_lazurite.png"},
		"Lazurite Stair",
		"Lazurite Slab",
		default.node_sound_stone_defaults())

		stairs.register_stair_and_slab("lazurite_brick", "lapis:lazurite_brick",
		{cracky=3},
		{"lapis_lazurite_brick.png"},
		"Lazurite Brick Stair",
		"Lazurite Brick Slab",
		default.node_sound_stone_defaults())

---------------
-- Crafts Items
---------------

--Lapis Lazuli : the gemstone form of Lazurite that is associated
--with white calcite and sparkling Pyrite.
minetest.register_craftitem("lapis:lapis_stone", {
	description = "Lapis Gemstone",
	inventory_image = "lapis_stone.png",
})

--Naturally formed Flat disc of Pyrite with radiating striations
minetest.register_craftitem("lapis:pyrite_coin", {
description = "Pyrite Sun",
inventory_image = "lapis_pyrite_coin.png",
})

minetest.register_craftitem("lapis:pyrite_ingot", {
	description = "Pyrite Ingot",
	inventory_image = "lapis_pyrite_ingot.png",
})

minetest.register_craftitem("lapis:pyrite_lump", {
	description = "Fool's Gold",
	inventory_image = "lapis_pyrite_nugget.png",
})

----------
-- Crafts
----------

minetest.register_craft({
	output = 'lapis:lazurite',
	recipe = {
		{'lapis:lapis_stone', 'lapis:lapis_stone', 'lapis:lapis_stone'},
		{'lapis:lapis_stone', 'lapis:lapis_stone', 'lapis:lapis_stone'},
		{'lapis:lapis_stone', 'lapis:lapis_stone', 'lapis:lapis_stone'},
	}
})

minetest.register_craft({
	output = 'lapis:lapisblock',
	recipe = {
		{'lapis:lapis_cobble'},
		{'lapis:lapis_cobble'},
		{'lapis:lapis_cobble'},
	}
})

minetest.register_craft({
	output = 'lapis:lapis_cobble 3',
	recipe = {
		{'lapis:lapis_block'},
	}
})

minetest.register_craft({
	output = 'lapis:lapis_stone 3',
	recipe = {
		{'llapis:lapis_cobble'},
	}
})

minetest.register_craft({
	output = 'lapis:lazurite_brick 6',
	recipe = {
		{'lapis:lapis:lapis_brick', 'lapis:pyrite_lump', 'lapis:lapis:lapis_brick'},
		{'lapis:pyrite_lump', 'lapis:lapis:lapis_brick', 'lapis:pyrite_lump'},
		{'lapis:lapis:lapis_brick', 'lapis:pyrite_lump', 'lapis:lapis:lapis_brick'},
	}
})

minetest.register_craft({
	output = 'lapis:pyrite_block',
	recipe = {
		{'lapis:pyrite_ingot', 'lapis:pyrite_ingot', 'lapis:pyrite_ingot'},
		{'lapis:pyrite_ingot', 'lapis:pyrite_ingot', 'lapis:pyrite_ingot'},
		{'lapis:pyrite_ingot', 'lapis:pyrite_ingot', 'lapis:pyrite_ingot'},
	}
})

minetest.register_craft({
	output = 'lapis:pyrite_ingot 9',
	recipe = {
		{'lapis:pyrite_block'},
	}
})

--[[
minetest.register_craft({
	output = 'lapis:pyrite_sacred',
	recipe = {
		{'lapis:pyrite_coin', 'lapis:pyrite_coin', 'lapis:pyrite_coin'},
		{'lapis:pyrite_coin', 'lapis:pyrite_block', 'lapis:pyrite_coin'},
		{'lapis:pyrite_coin', 'lapis:pyrite_coin', 'lapis:pyrite_coin'},
	}
})
--]]

minetest.register_craft({
	output = 'dye:blue 2',
	recipe = {
		{'lapis:lapis_stone'},
	}
})

-- Cookings

minetest.register_craft({
	type = 'cooking',
	output = 'lapis:lapis_brick 4',
	recipe = 'lapis:lapis_cobble',
})

minetest.register_craft({
	type = 'cooking',
	output = 'lapis:lapis_tile 2',
	recipe = 'lapis:lapis_stone',
})

minetest.register_craft({
	type = "cooking",
	output = "lapis:pyrite_ingot",
	recipe = "lapis:pyrite_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "lapis:pyrite_ingot",
	recipe = "lapis:pyrite_coin",
})

--[[
--Lapis / Pyrite Ore Generation
--Below is the Standard Minetest method
--Results are not as pretty as Master Gollum's stratus formula

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "lapis:pyrite_ore",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 5,
	height_min     = -31000,
	height_max     = -150,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "lapis:pyrite_ore",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = -450,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "lapis:lapisblock",
	wherein        = "default:stone",
	clust_scarcity = 18 * 18* 18,
	clust_num_ores = 6,
	clust_size     = 6,
	height_min     = -31000,
	height_max     = -150,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "lapis:lapisblock",
	wherein        = "default:stone",
	clust_scarcity = 12 * 12 * 12,
	clust_num_ores = 8,
	clust_size     = 8,
	height_min     = -31000,
	height_max     = -250,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "lapis:lazurite",
	wherein        = "default:stone",
	clust_scarcity = 18 * 18* 18,
	clust_num_ores = 6,
	clust_size     = 6,
	height_min     = -31000,
	height_max     = -150,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "lapis:lazurite",
	wherein        = "default:stone",
	clust_scarcity = 12 * 12 * 12,
	clust_num_ores = 8,
	clust_size     = 8,
	height_min     = -31000,
	height_max     = -250,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "lapis:sacred_ore",
	wherein        = "default:stone",
	clust_scarcity = 18 * 18 * 18,
	clust_num_ores = 6,
	clust_size     = 6,
	height_min     = -31000,
	height_max     = -250,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "lapis:sacred_ore",
	wherein        = "default:stone",
	clust_scarcity = 12 * 12 * 12,
	clust_num_ores = 8,
	clust_size     = 8,
	height_min     = -31000,
	height_max     = -450,
})
--]]