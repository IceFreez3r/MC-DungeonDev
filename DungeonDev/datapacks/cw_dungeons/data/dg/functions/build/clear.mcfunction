execute if score .debug dg.options matches 1 run tellraw @a {"text":"build/clear"}
execute store result score @s dg.build run data get entity @s Pos[1]
execute if score @s dg.build matches 288.. run fill ~ ~ ~ ~31 319 ~31 air
execute if score @s dg.build matches ..287 run fill ~ ~ ~ ~31 ~31 ~31 air
kill @s
