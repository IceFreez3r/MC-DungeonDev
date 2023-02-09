execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/placement/mirror"}
# 0 = no mirror, 1 = mirror (left_right)
scoreboard players set in dg 0
scoreboard players set in1 dg 1
function dg:general/rng/range
scoreboard players operation .mirror dg.build = out dg
# if the door faces north (0) or south (2), rotate by 180 degrees, to bring the door back to the correct side
execute if score .mirror dg.build matches 1 unless score @s dg.door.direction matches 1 unless score @s dg.door.direction matches 3 run scoreboard players add .rotation dg.build 180
scoreboard players operation .rotation dg.build %= #360 constant

execute if score .debug dg.options matches 1 run tellraw @a [{"text": "mirror: ", "color": "blue"},{"score": {"name": ".mirror", "objective": "dg.build"}, "color": "blue"},{"text": " updated rotation: ", "color": "blue"},{"score": {"name": ".rotation", "objective": "dg.build"}, "color": "blue"}]
