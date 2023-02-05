execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/deadend"}
execute if score @s dg.door.direction matches 0 facing ~ ~ ~-1 run function dg:dungeons/deadend
execute if score @s dg.door.direction matches 1 facing ~1 ~ ~ run function dg:dungeons/deadend
execute if score @s dg.door.direction matches 2 facing ~ ~ ~-1 run function dg:dungeons/deadend
execute if score @s dg.door.direction matches 3 facing ~-1 ~ ~ run function dg:dungeons/deadend

kill @e[type=marker,tag=dg.door.placeholder,distance=..1]
