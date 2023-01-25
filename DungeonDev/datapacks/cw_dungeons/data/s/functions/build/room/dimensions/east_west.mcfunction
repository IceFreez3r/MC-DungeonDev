execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/room/dimensions/east_west"}
scoreboard players operation .width dg.measure = @s dg.door.perpendicular
scoreboard players operation .height dg.measure = @s dg.door.down
scoreboard players operation .height dg.measure += @s dg.door.up
scoreboard players operation .depth dg.measure = @s dg.door.left
scoreboard players operation .depth dg.measure += @s dg.door.right
