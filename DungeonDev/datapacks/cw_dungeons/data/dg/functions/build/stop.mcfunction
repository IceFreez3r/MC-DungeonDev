execute if score .debug dg.options matches 1 run tellraw @a {"text":"build/stop"}
scoreboard players set .ongoing_run dg.build 0
scoreboard players add .current dg.run 1
execute as @e[type=marker,tag=dg.min_corner] at @s run function dg:build/clear
kill @e[type=marker,tag=dg.active]
tag @e[type=marker,tag=dg.inactive] remove dg.inactive
