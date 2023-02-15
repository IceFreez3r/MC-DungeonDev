execute if score .debug dg.options matches 1 run tellraw @a {"text":"dungeons/root"}

execute if score .level dg.build matches 1 run tag @e[type=marker,tag=dg.active,nbt={data:{CustomName:'{"text":"demo/hallway0"}'}}] add dg.room.choice
execute if score .level dg.build matches 2 run tag @e[type=marker,tag=dg.active,nbt={data:{CustomName:'{"text":"demo2/hallway0"}'}}] add dg.room.choice

execute align xyz run summon marker ~ ~ ~ {Tags:["dg", "dg.min_corner", "dg.active"], data:{CustomName:'{"text":"Min Corner"}'}}
scoreboard players operation @e[type=marker,tag=dg.min_corner] dg.max_dimension = @e[type=marker,tag=dg.room.choice] dg.max_dimension
execute as @e[type=marker,tag=dg.min_corner] store result score @s dg.build run data get entity @s Pos[1]

execute as @e[type=marker,tag=dg.room.choice] align xyz run function dg:dungeons/place
