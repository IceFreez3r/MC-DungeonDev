execute if score .debug dg.options matches 1 run tellraw @a {"text":"dungeons/flag_new_door"}
function s:storage/load/door
# mark all doors as open except the one that connects to the previous room
execute unless entity @e[type=marker,tag=dg.door.placeholder,distance=..1] run tag @s add dg.door.open
# set depth to previous depth + 1
scoreboard players operation @s dg.depth = .depth dg.build
scoreboard players add @s dg.depth 1
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
function s:build/door/set_name
tag @s add dg.active
