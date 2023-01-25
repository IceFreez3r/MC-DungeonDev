execute if score .debug dg.options matches 1 run tellraw @a {"text": "editor/calculate/start"}
# go to any markers along each face of the structure, then calculate their distance from the edge
# save that as a set of scores; left, right, up, down.

# get relative coordinates of the structures origin
execute store result score .pX dg run data get block ~ ~-1 ~ posX
execute store result score .pY dg run data get block ~ ~-1 ~ posY
execute store result score .pZ dg run data get block ~ ~-1 ~ posZ

# get size of the structure
execute store result score .sX dg run data get block ~ ~-1 ~ sizeX
execute store result score .sY dg run data get block ~ ~-1 ~ sizeY
execute store result score .sZ dg run data get block ~ ~-1 ~ sizeZ

summon marker ~ ~ ~ {Tags:["dg.calc"]}

# calculate absolute coordinates of the structures origin and teleport the new marker there
execute store result score .oX dg run data get entity @s Pos[0]
execute store result score .oY dg run data get entity @s Pos[1]
scoreboard players remove .oY dg 1
execute store result score .oZ dg run data get entity @s Pos[2]
execute store result entity @e[type=marker,tag=dg.calc,limit=1] Pos[0] double 1.0 run scoreboard players operation .oX dg += .pX dg
execute store result entity @e[type=marker,tag=dg.calc,limit=1] Pos[1] double 1.0 run scoreboard players operation .oY dg += .pY dg
execute store result entity @e[type=marker,tag=dg.calc,limit=1] Pos[2] double 1.0 run scoreboard players operation .oZ dg += .pZ dg

execute at @e[type=marker,tag=dg.calc] as @e[type=marker,scores={dg.door.direction=0},dx=31,dy=31,dz=31,sort=nearest] run function s:editor/calculate/north
execute at @e[type=marker,tag=dg.calc] as @e[type=marker,scores={dg.door.direction=1},dx=31,dy=31,dz=31,sort=nearest] run function s:editor/calculate/east
execute at @e[type=marker,tag=dg.calc] as @e[type=marker,scores={dg.door.direction=2},dx=31,dy=31,dz=31,sort=nearest] run function s:editor/calculate/south
execute at @e[type=marker,tag=dg.calc] as @e[type=marker,scores={dg.door.direction=3},dx=31,dy=31,dz=31,sort=nearest] run function s:editor/calculate/west

function s:storage/store/room

kill @e[type=marker,tag=dg.calc]
