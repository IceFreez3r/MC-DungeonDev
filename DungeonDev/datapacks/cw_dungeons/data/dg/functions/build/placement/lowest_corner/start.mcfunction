execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/placement/lowest_corner/start"}
execute if score .debug dg.options matches 1 run tellraw @a [{"text": "Door X:" }, {"score": {"name": ".doorX", "objective": "dg.build"}}, {"text": " Y:" }, {"score": {"name": ".doorY", "objective": "dg.build"}}, {"text": " Z:" }, {"score": {"name": ".doorZ", "objective": "dg.build"}}, {"text": " Direction:" }, {"score": {"name": "@s", "objective": "dg.door.direction"}}, {"text": " Rotation:" }, {"score": {"name": ".rotation", "objective": "dg.build"}}, {"text": " Mirror:" }, {"score": {"name": ".mirror", "objective": "dg.build"}}]
execute if score .debug dg.options matches 1 run tellraw @a [{"text": "Door L:" }, {"score": {"name": "@s", "objective": "dg.door.left"}}, {"text": " R:" }, {"score": {"name": "@s", "objective": "dg.door.right"}},  {"text": " U:" }, {"score": {"name": "@s", "objective": "dg.door.up"}}, {"text": " D:" }, {"score": {"name": "@s", "objective": "dg.door.down"}}, {"text": " P:" }, {"score": {"name": "@s", "objective": "dg.door.perpendicular"}}]
# Calculates the lowest corner of the not yet placed room and spawns a marker
# at that position
# directions are as if you were looking from the inside of the room towards the door
# output in .minX, .minY, .minZ in dg.build

execute if score .mirror dg.build matches 0 run scoreboard players operation .rotation_tmp dg.build = .rotation dg.build

# rotation = (90 - rotation) % 360
execute if score .mirror dg.build matches 1 run scoreboard players set .rotation_tmp dg.build 90
execute if score .mirror dg.build matches 1 run scoreboard players operation .rotation_tmp dg.build -= .rotation dg.build
execute if score .mirror dg.build matches 1 run scoreboard players operation .rotation_tmp dg.build %= #360 constant

scoreboard players set .minX dg.build 0
scoreboard players set .minY dg.build 0
scoreboard players set .minZ dg.build 0

execute if score @s dg.door.direction matches 0 if score .rotation_tmp dg.build matches 0 run function dg:build/placement/lowest_corner/front_left
execute if score @s dg.door.direction matches 1 if score .rotation_tmp dg.build matches 270 run function dg:build/placement/lowest_corner/front_left
execute if score @s dg.door.direction matches 2 if score .rotation_tmp dg.build matches 180 run function dg:build/placement/lowest_corner/front_left
execute if score @s dg.door.direction matches 3 if score .rotation_tmp dg.build matches 90 run function dg:build/placement/lowest_corner/front_left

execute if score @s dg.door.direction matches 0 if score .rotation_tmp dg.build matches 270 run function dg:build/placement/lowest_corner/front_right
execute if score @s dg.door.direction matches 1 if score .rotation_tmp dg.build matches 180 run function dg:build/placement/lowest_corner/front_right
execute if score @s dg.door.direction matches 2 if score .rotation_tmp dg.build matches 90 run function dg:build/placement/lowest_corner/front_right
execute if score @s dg.door.direction matches 3 if score .rotation_tmp dg.build matches 0 run function dg:build/placement/lowest_corner/front_right

execute if score @s dg.door.direction matches 0 if score .rotation_tmp dg.build matches 180 run function dg:build/placement/lowest_corner/back_right
execute if score @s dg.door.direction matches 1 if score .rotation_tmp dg.build matches 90 run function dg:build/placement/lowest_corner/back_right
execute if score @s dg.door.direction matches 2 if score .rotation_tmp dg.build matches 0 run function dg:build/placement/lowest_corner/back_right
execute if score @s dg.door.direction matches 3 if score .rotation_tmp dg.build matches 270 run function dg:build/placement/lowest_corner/back_right

execute if score @s dg.door.direction matches 0 if score .rotation_tmp dg.build matches 90 run function dg:build/placement/lowest_corner/back_left
execute if score @s dg.door.direction matches 1 if score .rotation_tmp dg.build matches 0 run function dg:build/placement/lowest_corner/back_left
execute if score @s dg.door.direction matches 2 if score .rotation_tmp dg.build matches 270 run function dg:build/placement/lowest_corner/back_left
execute if score @s dg.door.direction matches 3 if score .rotation_tmp dg.build matches 180 run function dg:build/placement/lowest_corner/back_left

# x, z = z, x
execute if score .mirror dg.build matches 1 run scoreboard players operation .tmp dg.build = .minX dg.build
execute if score .mirror dg.build matches 1 run scoreboard players operation .minX dg.build = .minZ dg.build
execute if score .mirror dg.build matches 1 run scoreboard players operation .minZ dg.build = .tmp dg.build

# convert to absolute coordinates
scoreboard players operation .minX dg.build += .doorX dg.build
scoreboard players operation .minY dg.build += .doorY dg.build
scoreboard players operation .minZ dg.build += .doorZ dg.build

execute if score .debug dg.options matches 1 run tellraw @a [{"text": "min: ", "color": "blue"}, {"score": {"name": ".minX", "objective": "dg.build"}}, {"text": ", ", "color": "blue"}, {"score": {"name": ".minY", "objective": "dg.build"}},{"text": ", ", "color": "blue"}, {"score": {"name": ".minZ", "objective": "dg.build"}}]

summon marker ~ ~ ~ {Tags:["dg", "dg.min_corner", "dg.active", "dg.new"], data:{CustomName: '{"text":"Min Corner"}'}}
execute store result entity @e[type=marker,tag=dg.min_corner,tag=dg.new,limit=1] Pos[0] double 1.0 run scoreboard players get .minX dg.build
execute store result entity @e[type=marker,tag=dg.min_corner,tag=dg.new,limit=1] Pos[1] double 1.0 run scoreboard players get .minY dg.build
execute store result entity @e[type=marker,tag=dg.min_corner,tag=dg.new,limit=1] Pos[2] double 1.0 run scoreboard players get .minZ dg.build
