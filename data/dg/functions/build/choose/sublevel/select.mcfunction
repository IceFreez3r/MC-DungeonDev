scoreboard players add .sublevel dg.build 1
execute store result score .weight dg.build run data get storage dg tmp_sublevel[0]
scoreboard players operation out dg -= .weight dg.build
data remove storage dg tmp_sublevel[0]
execute if score out dg matches 1.. run function dg:build/choose/sublevel/select
