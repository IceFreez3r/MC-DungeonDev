setblock ~ ~ ~ minecraft:comparator[mode=compare]

execute if score .ongoing_run dg.build matches 1 run tellraw @p[gamemode=creative] {"text": "!!! There is an ongoing run !!!", "color": "red"}
execute if entity @e[type=marker,tag=dg.inactive] run tellraw @p[gamemode=creative] {"text": "!!! Found markers with tag 'dg.inactive' !!!", "color": "red"}
execute if score .ongoing_run dg.build matches 1 run tellraw @p[gamemode=creative] {"text": "Click to end the run", "color": "red", "clickEvent": {"action": "run_command", "value": "/function dg:build/clear"}}
execute unless score .ongoing_run dg.build matches 1 if entity @e[type=marker,tag=dg.inactive] run tellraw @p[gamemode=creative] {"text": "Click to end the run", "color": "red", "clickEvent": {"action": "run_command", "value": "/function dg:build/clear"}}

execute unless score .ongoing_run dg.build matches 1 unless entity @e[type=marker,tag=dg.inactive] run function dg:editor/door_menu/menu
