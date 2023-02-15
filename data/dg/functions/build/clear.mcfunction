execute if score .debug dg.options matches 1 run tellraw @a {"text":"build/clear"}
execute if score @s dg.max_dimension matches ..32 run function dg:build/clear_32
execute if score @s dg.max_dimension matches 33..48 run function dg:build/clear_48
execute if score .room_removed dg.build matches 1 run kill @s
# retry after 5 seconds
execute if score .room_removed dg.build matches 0 run scoreboard players set @s dg.cooldown 100
