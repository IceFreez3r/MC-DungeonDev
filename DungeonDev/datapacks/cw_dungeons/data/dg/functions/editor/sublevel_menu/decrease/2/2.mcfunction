execute if score .debug dg.options matches 1 run tellraw @a {"text": "editor/sublevel_menu/decrease/2/2"}
execute if score .sublevel_2_2 dg.sublevel matches 1.. run scoreboard players remove .sublevel_2_2 dg.sublevel 1
function dg:storage/store/level/start
function dg:editor/sublevel_menu/start
