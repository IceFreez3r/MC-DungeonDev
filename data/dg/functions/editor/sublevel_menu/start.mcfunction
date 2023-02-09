execute if score .debug dg.options matches 1 run tellraw @a {"text": "editor/sublevel_menu/start"}
scoreboard players operation .level dg.storage = @e[type=marker,tag=dg.room,sort=nearest,limit=1] dg.level
function dg:storage/load/transitions/matrix
execute store result score @s dg.sublevel run data get storage dg level

execute if score .debug dg.options matches 0 run tellraw @p[gamemode=creative] {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s {"text":"Sublevel transition weights"}
tellraw @s [{"text": "Level: "}, {"score": {"name": ".level", "objective": "dg.storage"}}]
tellraw @s {"text": "Transitions from (row) to (col):"}
execute if score @s dg.sublevel matches 1 run function dg:editor/sublevel_menu/1
execute if score @s dg.sublevel matches 2 run function dg:editor/sublevel_menu/2
execute if score @s dg.sublevel matches 3 run function dg:editor/sublevel_menu/3
execute if score @s dg.sublevel matches 4 run function dg:editor/sublevel_menu/4
execute if score @s dg.sublevel matches 5 run function dg:editor/sublevel_menu/5
