scoreboard players add @s[scores={dg.sublevel=..4}] dg.sublevel 1
tellraw @a {"score":{"name":"@s","objective":"dg.sublevel"}, "color": "blue"}
function dg:storage/init/level/start
function dg:storage/store/level/start
function dg:editor/sublevel_menu/start
