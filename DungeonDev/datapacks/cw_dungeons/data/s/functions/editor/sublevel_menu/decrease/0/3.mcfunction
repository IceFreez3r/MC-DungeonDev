execute if score .debug dg.options matches 1 run tellraw @a {"text": "editor/sublevel_menu/decrease/0/3"}
execute if score .sublevel_0_3 dg.sublevel matches 1.. run scoreboard players remove .sublevel_0_3 dg.sublevel 1
function s:storage/store/level/start
function s:editor/sublevel_menu/start
