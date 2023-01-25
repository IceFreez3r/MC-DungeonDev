execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/room/choose/start"}
# assign a unique number to each room based on the weight
scoreboard players set .global dg.id 0
execute as @e[type=marker,tag=dg.valid] store result score @s dg.id run scoreboard players operation .global dg.id += @s dg.weight

# select random number
scoreboard players set in dg 1
scoreboard players operation in1 dg = .global dg.id
function s:general/rng/range

# find corresponding room
function s:build/room/choose/select
tag @e[type=marker,tag=dg.not_this] remove dg.not_this
