# clear rooms from previous runs
scoreboard players remove @e[type=marker,scores={dg.cooldown=1..}] dg.cooldown 1
execute as @e[type=marker,tag=dg.min_corner] if score @s dg.run < .current dg.run unless score @s dg.cooldown matches 1.. at @s run function dg:build/clear
execute as @e[type=marker,tag=!dg.min_corner] if score @s dg.run < .current dg.run run kill @s

execute if entity @a[gamemode=creative] run function dg:editor/main
execute if score .ongoing_run dg.build matches 1 run function dg:build/tick
