execute if score .debug dg.options matches 1 run tellraw @a {"text":"build/clear"}
scoreboard players set .ongoing_run dg.build 0
# clear the rooms
execute as @e[type=marker,tag=dg.min_corner] store result score @s dg.build run data get entity @s Pos[1]
execute as @e[type=marker,tag=dg.min_corner,scores={dg.build=288..}] at @s run fill ~ ~ ~ ~31 319 ~31 air
execute as @e[type=marker,tag=dg.min_corner,scores={dg.build=..287}] at @s run fill ~ ~ ~ ~31 ~31 ~31 air

kill @e[type=armor_stand,tag=dg.display]
kill @e[type=marker,tag=dg.active]
tag @e[type=marker,tag=dg.inactive] remove dg.inactive
