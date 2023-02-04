execute if entity @a[gamemode=creative] run function dg:editor/main
execute if score .ongoing_run dg.build matches 1 run function dg:build/tick
execute if score .ongoing_run dg.build matches 0 if entity @e[type=marker,tag=dg.min_corner] run function dg:build/clear
