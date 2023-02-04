execute if score .debug dg.options matches 1 run tellraw @a {"text":"build/clear"}
scoreboard players set .ongoing_run dg.build 0
execute as @e[type=marker,tag=dg.min_corner] at @s run fill ~ ~ ~ ~31 ~31 ~31 air

kill @e[type=armor_stand,tag=dg.display]
kill @e[type=marker,tag=dg.active]
tag @e[type=marker,tag=dg.inactive] remove dg.inactive
