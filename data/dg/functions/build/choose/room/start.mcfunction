execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/choose/room/start"}
# assign a unique number to each room based on the weight
scoreboard players set .global dg.id 0
execute as @e[type=marker,tag=dg.current_sublevel] store result score @s dg.id run scoreboard players operation .global dg.id += @s dg.weight

# select random number
scoreboard players set in dg 1
scoreboard players operation in1 dg = .global dg.id
function dg:general/rng/range

# find corresponding room
function dg:build/choose/room/select
tag @e[type=marker,tag=dg.not_this] remove dg.not_this
