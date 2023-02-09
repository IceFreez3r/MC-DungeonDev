execute if score .debug dg.options matches 1 run tellraw @a {"text": "editor/sublevel_menu/increase/0/1"}
scoreboard players add .sublevel_0_1 dg.sublevel 1
function dg:storage/store/level/start
function dg:editor/sublevel_menu/start
