setblock ~ ~ ~ minecraft:comparator[mode=compare]

execute if score .ongoing_run dg.build matches 1 run tellraw @p[gamemode=creative] {"text": "!!! There is an ongoing run !!!", "color": "red"}
execute if score .ongoing_run dg.build matches 1 run tellraw @p[gamemode=creative] {"text": "Click to end the run", "color": "red", "clickEvent": {"action": "run_command", "value": "/function dg:build/stop"}}

execute unless score .ongoing_run dg.build matches 1 run function dg:editor/door_menu/menu
