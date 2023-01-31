execute if score .debug dg.options matches 1 run tellraw @a {"text": "storage/load/transitions/level/start"}
# Loads the matrix corresponding to .level in dg.storage from dg levels into dg level
data modify storage dg tmp_levels set from storage dg levels
scoreboard players set .counter dg.storage 1
execute if score .counter dg.storage < .level dg.storage run function s:storage/load/transitions/level/loop
data modify storage dg level set from storage dg tmp_levels[0]
data remove storage dg tmp_levels
