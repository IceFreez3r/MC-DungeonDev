execute if score .debug dg.options matches 1 run tellraw @a {"text": "editor/sublevel_menu/increase/3/1"}
scoreboard players add .sublevel_3_1 dg.sublevel 1
function dg:storage/store/level/start
function dg:editor/sublevel_menu/start