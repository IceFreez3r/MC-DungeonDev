execute store result score .weight dg.build run data get storage dg tmp_sublevel[0]
scoreboard players operation in1 dg += .weight dg.build
data remove storage dg tmp_sublevel[0]
execute store result score .entries dg.build run data get storage dg tmp_sublevel
execute if score .entries dg.build matches 1.. run function dg:build/choose/sublevel/loop
