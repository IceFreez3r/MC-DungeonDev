execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/room/new_door"}
execute store result score .doorX dg.build run data get entity @s Pos[0]
execute store result score .doorY dg.build run data get entity @s Pos[1]
execute store result score .doorZ dg.build run data get entity @s Pos[2]
execute if score @s dg.door.direction matches 0 run scoreboard players remove .doorZ dg.build 1
execute if score @s dg.door.direction matches 1 run scoreboard players add .doorX dg.build 1
execute if score @s dg.door.direction matches 2 run scoreboard players add .doorZ dg.build 1
execute if score @s dg.door.direction matches 3 run scoreboard players remove .doorX dg.build 1

summon marker ~ ~ ~ {Tags:["dg", "dg.door", "dg.door.placeholder", "dg.active"], data:{CustomName:'{"text":"Door Placeholder"}'}}
execute store result entity @e[type=marker,tag=dg.door.placeholder,limit=1] Pos[0] double 1 run scoreboard players get .doorX dg.build
execute store result entity @e[type=marker,tag=dg.door.placeholder,limit=1] Pos[1] double 1 run scoreboard players get .doorY dg.build
execute store result entity @e[type=marker,tag=dg.door.placeholder,limit=1] Pos[2] double 1 run scoreboard players get .doorZ dg.build
