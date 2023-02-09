execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/room/dimensions/start"}

# account for rotation
scoreboard players operation .tmp_direction dg.build = .rotation dg.build
scoreboard players operation .tmp_direction dg.build /= #90 constant
scoreboard players operation .tmp_direction dg.build += @s dg.door.direction
scoreboard players operation .tmp_direction dg.build %= #4 constant

execute if score .debug dg.options matches 1 run tellraw @a [{"text": "Room direction: ", "color": "blue"}, {"score": {"name": ".tmp_direction", "objective": "dg.build"}, "color": "blue"}]

execute if score .tmp_direction dg.build matches 0 run function dg:build/placement/dimensions/north_south
execute if score .tmp_direction dg.build matches 1 run function dg:build/placement/dimensions/east_west
execute if score .tmp_direction dg.build matches 2 run function dg:build/placement/dimensions/north_south
execute if score .tmp_direction dg.build matches 3 run function dg:build/placement/dimensions/east_west
