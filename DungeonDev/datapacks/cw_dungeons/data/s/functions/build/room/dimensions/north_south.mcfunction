execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/room/dimensions/north_south"}
scoreboard players operation .width dg.measure = @s dg.door.left
scoreboard players operation .width dg.measure += @s dg.door.right
scoreboard players operation .height dg.measure = @s dg.door.down
scoreboard players operation .height dg.measure += @s dg.door.up
scoreboard players operation .depth dg.measure = @s dg.door.perpendicular
