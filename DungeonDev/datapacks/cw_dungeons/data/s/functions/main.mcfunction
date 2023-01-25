execute if entity @a[gamemode=creative] run function s:editor/main
execute if score .ongoing_run dg.build matches 1 run function s:build/tick
execute if score .ongoing_run dg.build matches 0 if entity @e[type=marker,tag=dg.min_corner] run function s:build/clear
