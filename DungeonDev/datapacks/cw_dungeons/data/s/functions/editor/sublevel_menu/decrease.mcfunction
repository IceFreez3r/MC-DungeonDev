scoreboard players remove @s[scores={dg.sublevel=2..}] dg.sublevel 1
tellraw @a {"score":{"name":"@s","objective":"dg.sublevel"}, "color": "blue"}
function s:storage/init/level/start
function s:storage/store/level/start
function s:editor/sublevel_menu/start
