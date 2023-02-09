scoreboard players remove @s[scores={dg.sublevel=2..}] dg.sublevel 1
tellraw @a {"score":{"name":"@s","objective":"dg.sublevel"}, "color": "blue"}
function dg:storage/init/level/start
function dg:storage/store/level/start
function dg:editor/sublevel_menu/start
