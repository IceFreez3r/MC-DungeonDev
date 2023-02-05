execute if score .debug dg.options matches 1 run tellraw @a {"text":"build/flag_new_door"}
function dg:storage/load/door
tag @s add dg.door.open
execute if score .debug dg.options matches 1 run tellraw @a [{"text": "Direction ", "color": "blue"}, {"score": {"name": "@s", "objective": "dg.door.direction"}, "color": "blue"}, {"text": " Rotation ", "color": "blue"}, {"score": {"name": ".rotation", "objective": "dg.build"}, "color": "blue"}, {"text": " Mirror ", "color": "blue"}, {"score": {"name": ".mirror", "objective": "dg.build"}, "color": "blue"}] 
# set direction of new door
# if .mirror: new direction = (2 - old direction) % 4
execute if score .mirror dg.build matches 1 run scoreboard players set .tmp_direction dg.build 2
execute if score .mirror dg.build matches 1 run scoreboard players operation .tmp_direction dg.build -= @s dg.door.direction
execute if score .mirror dg.build matches 1 run scoreboard players operation @s dg.door.direction = .tmp_direction dg.build
# rotate
scoreboard players operation .tmp_direction dg.build = .rotation dg.build
scoreboard players operation .tmp_direction dg.build /= #90 constant
scoreboard players operation @s dg.door.direction += .tmp_direction dg.build
scoreboard players operation @s dg.door.direction %= #4 constant
execute if score .debug dg.options matches 1 run tellraw @a [{"text": "New Direction ", "color": "blue"}, {"score": {"name": "@s", "objective": "dg.door.direction"}, "color": "blue"}] 
function dg:build/set_door_name
tag @s add dg.active
# set depth to previous depth + 1
scoreboard players operation @s dg.depth = .depth dg.build
scoreboard players add @s dg.depth 1
# if depth > max depth, close the door
execute if score .maxdepth dg.options matches 0.. if score @s dg.depth > .maxdepth dg.options run function dg:build/deadend
execute if score .maxdepth dg.options matches 0.. if score @s dg.depth > .maxdepth dg.options run kill @s
