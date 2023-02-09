execute if score .debug dg.options matches 1 run tellraw @a {"text": "storage/load/transitions/level/loop"}
data remove storage dg tmp_levels[0]
scoreboard players add .counter dg.storage 1
execute if score .counter dg.storage < .level dg.storage run function dg:storage/load/transitions/level/loop
