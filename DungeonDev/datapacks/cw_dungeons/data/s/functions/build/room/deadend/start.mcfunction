execute if score @s dg.door.direction matches 0 facing ~ ~ ~-1 run function s:build/room/deadend/choose
execute if score @s dg.door.direction matches 1 facing ~1 ~ ~ run function s:build/room/deadend/choose
execute if score @s dg.door.direction matches 2 facing ~ ~ ~-1 run function s:build/room/deadend/choose
execute if score @s dg.door.direction matches 3 facing ~-1 ~ ~ run function s:build/room/deadend/choose
