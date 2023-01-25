execute if score .debug dg.options matches 1 run tellraw @a {"text": "storage/store/door"}
# Name
data modify entity @s data.door.name set from entity @s data.CustomName
# Direction
execute store result entity @s data.door.direction int 1.0 run scoreboard players get @s dg.door.direction
execute store result entity @s data.door.perpendicular int 1.0 run scoreboard players get @s dg.door.perpendicular
# Dimensions
execute store result entity @s data.door.left int 1.0 run scoreboard players get @s dg.door.left
execute store result entity @s data.door.right int 1.0 run scoreboard players get @s dg.door.right
execute store result entity @s data.door.up int 1.0 run scoreboard players get @s dg.door.up
execute store result entity @s data.door.down int 1.0 run scoreboard players get @s dg.door.down
