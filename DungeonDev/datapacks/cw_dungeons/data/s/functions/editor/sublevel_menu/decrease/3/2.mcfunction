execute if score .debug dg.options matches 1 run tellraw @a {"text": "editor/sublevel_menu/decrease/3/2"}
execute if score .sublevel_3_2 dg.sublevel matches 1.. run scoreboard players remove .sublevel_3_2 dg.sublevel 1
function s:storage/store/level/start
function s:editor/sublevel_menu/start
