scoreboard objectives add math dummy
scoreboard objectives add dg dummy
scoreboard objectives add dg.id dummy
# global options that are read-only for the datapack
scoreboard objectives add dg.options dummy
# holds the data for the current run
scoreboard objectives add dg.build dummy
scoreboard objectives add dg.editor dummy
scoreboard objectives add dg.level dummy
scoreboard objectives add dg.sublevel dummy
scoreboard objectives add dg.depth dummy
scoreboard objectives add dg.min_depth dummy
scoreboard objectives add dg.weight dummy
scoreboard objectives add dg.max dummy
scoreboard objectives add dg.placed dummy
scoreboard objectives add dg.door.left dummy
scoreboard objectives add dg.door.right dummy
scoreboard objectives add dg.door.up dummy
scoreboard objectives add dg.door.down dummy
scoreboard objectives add dg.door.perpendicular dummy
# 0 = north, 1 = east, 2 = south, 3 = west
scoreboard objectives add dg.door.direction dummy
scoreboard objectives add dg.storage dummy
scoreboard objectives add dg.measure dummy

# TODO: Needed?
setblock 0 -64 0 yellow_shulker_box
setblock 0 -63 0 oak_sign

scoreboard objectives add constant dummy
scoreboard players set #-1 constant -1
scoreboard players set #2 constant 2
scoreboard players set #4 constant 4
scoreboard players set #90 constant 90
scoreboard players set #360 constant 360
scoreboard players set #1000 constant 1000
scoreboard players set #10000 constant 10000
scoreboard players set #lcg constant 1103515245
scoreboard players set #32 constant 32

function s:general/rng/zprivate/init

# total number of levels, randomly chosen, set .level to use a specific level
scoreboard players set .levels dg.options 2
# whether to use a set seed, also requires .seed to function
# the seed without a set seed can be found in .seed of dg.build
# note that the layout of the dungeons depends on the order that rooms are placed
# which again depends on the positions of the players during the run
scoreboard players set .seeded dg.options 1
# number of tries to find a room that fits before a door is marked as a deadend
scoreboard players set .tries dg.options 1
# tons of debug output if used
scoreboard players set .debug dg.options 1

function s:storage/init
