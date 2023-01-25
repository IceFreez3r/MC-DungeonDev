execute if score .debug dg.options matches 1 run tellraw @a {"text": "storage/load/door"}
# Name
data modify entity @s data.CustomName set from entity @s data.door.name
# Direction
execute store result score @s dg.door.direction run data get entity @s data.door.direction
execute store result score @s dg.door.perpendicular run data get entity @s data.door.perpendicular
# Dimensions
execute store result score @s dg.door.left run data get entity @s data.door.left
execute store result score @s dg.door.right run data get entity @s data.door.right
execute store result score @s dg.door.up run data get entity @s data.door.up
execute store result score @s dg.door.down run data get entity @s data.door.down
