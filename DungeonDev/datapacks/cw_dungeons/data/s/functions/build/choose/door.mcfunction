execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/choose/door"}
# assign a unique number to each door
scoreboard players set .global dg.id 0
execute as @e[type=marker,tag=dg.door.options] store result score @s dg.id run scoreboard players add .global dg.id 1

# select random number
scoreboard players set in dg 1
scoreboard players operation in1 dg = .global dg.id
function s:general/rng/range

execute as @e[type=marker,tag=dg.door.options] if score @s dg.id = out dg run tag @s add dg.door.choice
