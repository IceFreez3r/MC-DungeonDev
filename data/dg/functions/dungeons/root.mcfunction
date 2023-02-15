execute if score .debug dg.options matches 1 run tellraw @a {"text":"dungeons/root"}

function #dg:interface/root

execute align xyz run summon marker ~ ~ ~ {Tags:["dg", "dg.min_corner", "dg.active"], data:{CustomName:'{"text":"Min Corner"}'}}
scoreboard players operation @e[type=marker,tag=dg.min_corner] dg.max_dimension = @e[type=marker,tag=dg.room.choice] dg.max_dimension
execute as @e[type=marker,tag=dg.min_corner] store result score @s dg.build run data get entity @s Pos[1]

execute as @e[type=marker,tag=dg.room.choice] align xyz run function dg:dungeons/place
