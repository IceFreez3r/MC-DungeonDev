execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/room/lowest_corner/front_left"}
scoreboard players operation .minX dg.build -= @s dg.door.left

scoreboard players operation .minY dg.build -= @s dg.door.down
