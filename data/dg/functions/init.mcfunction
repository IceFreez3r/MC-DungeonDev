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
# counts runs to delete old rooms even if they were in unloaded chunks when clearing
scoreboard objectives add dg.run dummy
# repeat clear tries after delay if the marker is loaded, but not the entire room
scoreboard objectives add dg.cooldown dummy
scoreboard objectives add dg.statistics dummy

scoreboard objectives add constant dummy

execute unless score #-1 constant matches -1 run function dg:first_init

scoreboard players set #-1 constant -1
scoreboard players set #2 constant 2
scoreboard players set #4 constant 4
scoreboard players set #90 constant 90
scoreboard players set #360 constant 360
scoreboard players set #1000 constant 1000
scoreboard players set #10000 constant 10000
scoreboard players set #lcg constant 1103515245
scoreboard players set #32 constant 32

function dg:general/rng/zprivate/init
function dg:storage/init
