execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/room/lowest_corner/back_right"}
scoreboard players operation .minX dg.build -= @s dg.door.right

scoreboard players operation .minY dg.build -= @s dg.door.down

scoreboard players operation .minZ dg.build -= @s dg.door.perpendicular
