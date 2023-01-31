execute if score .debug dg.options matches 1 run tellraw @a {"text": "storage/load/transitions/sublevel/loop"}
data remove storage dg tmp_level[0]
scoreboard players add .counter dg.storage 1
execute if score .counter dg.storage < .sublevel dg.build run function s:storage/load/transitions/level/loop
