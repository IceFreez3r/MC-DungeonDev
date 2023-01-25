execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/room/origin"}
# calculates .originX, .originY, .originZ based on the doors direction, rotation, mirror and dimensions
# and spawns a marker with tags dg.origin and dg.new at that point
# to understand the values compare to origin.csv
scoreboard players set .originX dg.build 0
scoreboard players set .originY dg.build 0
scoreboard players set .originZ dg.build 0

scoreboard players operation .originY dg.build -= @s dg.door.down

# copy values
scoreboard players operation .left dg.build = @s dg.door.left
scoreboard players operation .right dg.build = @s dg.door.right
scoreboard players operation .perpendicular dg.build = @s dg.door.perpendicular

# mirror
execute if score .mirror dg.build matches 1 if score @s dg.door.direction matches 1 run scoreboard players operation .left dg.build *= #-1 constant
execute if score .mirror dg.build matches 1 if score @s dg.door.direction matches 2 run scoreboard players operation .perpendicular dg.build *= #-1 constant
execute if score .mirror dg.build matches 1 if score @s dg.door.direction matches 3 run scoreboard players operation .right dg.build *= #-1 constant

# north
execute if score @s dg.door.direction matches 0 run scoreboard players operation .originX dg.build -= .left dg.build
# east
execute if score @s dg.door.direction matches 1 run scoreboard players operation .originX dg.build -= .perpendicular dg.build
execute if score @s dg.door.direction matches 1 run scoreboard players operation .originZ dg.build -= .left dg.build
# south
execute if score @s dg.door.direction matches 2 run scoreboard players operation .originX dg.build -= .right dg.build
execute if score @s dg.door.direction matches 2 run scoreboard players operation .originZ dg.build -= .perpendicular dg.build
# west
execute if score @s dg.door.direction matches 3 run scoreboard players operation .originZ dg.build -= .right dg.build

# x, z = -z, x
execute if score .rotation dg.build matches 90 run scoreboard players operation .tmp dg.build = .originX dg.build
execute if score .rotation dg.build matches 90 run scoreboard players operation .originX dg.build = .originZ dg.build
execute if score .rotation dg.build matches 90 run scoreboard players operation .originX dg.build *= #-1 constant
execute if score .rotation dg.build matches 90 run scoreboard players operation .originZ dg.build = .tmp dg.build

# x, z = -x, -z
execute if score .rotation dg.build matches 180 run scoreboard players operation .originX dg.build *= #-1 constant
execute if score .rotation dg.build matches 180 run scoreboard players operation .originZ dg.build *= #-1 constant

# x, z = z, -x
execute if score .rotation dg.build matches 270 run scoreboard players operation .tmp dg.build = .originX dg.build
execute if score .rotation dg.build matches 270 run scoreboard players operation .originX dg.build = .originZ dg.build
execute if score .rotation dg.build matches 270 run scoreboard players operation .originZ dg.build = .tmp dg.build
execute if score .rotation dg.build matches 270 run scoreboard players operation .originZ dg.build *= #-1 constant

# convert to absolute coordinates
scoreboard players operation .originX dg.build += .doorX dg.build
scoreboard players operation .originY dg.build += .doorY dg.build
scoreboard players operation .originZ dg.build += .doorZ dg.build

summon marker ~ ~ ~ {Tags:["dg", "dg.origin", "dg.active"], data:{CustomName: '{"text":"Origin"}'}}
execute store result entity @e[type=marker,tag=dg.origin,limit=1] Pos[0] double 1.0 run scoreboard players get .originX dg.build
execute store result entity @e[type=marker,tag=dg.origin,limit=1] Pos[1] double 1.0 run scoreboard players get .originY dg.build
execute store result entity @e[type=marker,tag=dg.origin,limit=1] Pos[2] double 1.0 run scoreboard players get .originZ dg.build

execute if score .debug dg.options matches 1 run tellraw @a [{"text": "origin: ", "color": "blue"}, {"score": {"name": ".originX", "objective": "dg.build"}, "color": "blue"}, {"text": ", ", "color": "blue"}, {"score": {"name": ".originY", "objective": "dg.build"}, "color": "blue"},{"text": ", ", "color": "blue"}, {"score": {"name": ".originZ", "objective": "dg.build"}, "color": "blue"}]
