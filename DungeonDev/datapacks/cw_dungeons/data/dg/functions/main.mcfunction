execute if entity @a[gamemode=creative] run function dg:editor/main
execute if score .ongoing_run dg.build matches 1 run function dg:build/tick
# clear rooms from previous runs
execute as @e[type=marker,tag=dg.min_corner] if score @s dg.run < .current dg.run at @s run function dg:build/clear
