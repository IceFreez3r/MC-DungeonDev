setblock ~ ~ ~ minecraft:comparator[mode=compare]
execute if score .debug dg.options matches 0 run tellraw @p[gamemode=creative] {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

tellraw @p[gamemode=creative] {"text":" _____________________"}
tellraw @p[gamemode=creative] ["",{"text":" |> "},{"nbt":"data.CustomName","entity":"@s","interpret":true}]
tellraw @p[gamemode=creative] ["",{"text":" | "}]

tellraw @p[gamemode=creative] ["",{"text":" | "},{"text":"Level: "},{"text":"<< ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/level_down"}},{"score":{"objective":"dg.level","name":"@s"}},{"text":" >>","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/level_up"}}]
tellraw @p[gamemode=creative] ["",{"text":" | "},{"text":"Weight: "},{"text":"<< ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/weight_down"}},{"score":{"objective":"dg.weight","name":"@s"}},{"text":" >>","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/weight_up"}}]
tellraw @p[gamemode=creative] ["",{"text":" | "},{"text":"Max:    "},{"text":"<< ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/max_down"}},{"score":{"objective":"dg.max","name":"@s"}},{"text":" >>","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/max_up"}}]
tellraw @p[gamemode=creative] ["",{"text":" | "},{"text":"Min Depth: "},{"text":"<< ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/min_depth_down"}},{"score":{"objective":"dg.min_depth","name":"@s"}},{"text":" >>","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] at @s run function s:editor/door_menu/min_depth_up"}}]

tellraw @p[gamemode=creative] {"text":" | --[l,r,u,d,p]--"}
execute as @e[type=marker,tag=dg.room,sort=nearest,limit=1] run function s:editor/calculate/start
tellraw @p[gamemode=creative] {"text":" _____________________"}

execute if score .ongoing_run dg.build matches 1 run tellraw @p[gamemode=creative] {"text": "!!! There is an ongoing run !!!", "color": "red"}
execute if entity @e[type=marker,tag=dg.inactive] run tellraw @p[gamemode=creative] {"text": "!!! Found markers with tag 'dg.inactive' !!!", "color": "red"}
execute if score .ongoing_run dg.build matches 1 run tellraw @p[gamemode=creative] {"text": "Click to end the run", "color": "red", "clickEvent": {"action": "run_command", "value": "/function s:build/clear"}}
execute unless score .ongoing_run dg.build matches 1 if entity @e[type=marker,tag=dg.inactive] run tellraw @p[gamemode=creative] {"text": "Click to end the run", "color": "red", "clickEvent": {"action": "run_command", "value": "/function s:build/clear"}}
