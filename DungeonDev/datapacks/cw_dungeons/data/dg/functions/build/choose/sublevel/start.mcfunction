execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/choose/sublevel/start"}
# add all weights together
data modify storage dg tmp_sublevel set from storage dg sublevel
scoreboard players set in dg 1
scoreboard players set in1 dg 0
function dg:build/choose/sublevel/loop
execute if score .debug dg.options matches 1 run tellraw @a [{"text": "Total sublevel weight:", "color": "blue"}, {"score": {"name": "in1", "objective": "dg"}}]
# choose random number between them
function dg:general/rng/range
execute if score .debug dg.options matches 1 run tellraw @a [{"text": "Random number:", "color": "blue"}, {"score": {"name": "out", "objective": "dg"}}]
# select the corresponding sublevel
data modify storage dg tmp_sublevel set from storage dg sublevel
scoreboard players set .sublevel dg.build 0
function dg:build/choose/sublevel/select
data remove storage dg tmp_sublevel
execute if score .debug dg.options matches 1 run tellraw @a [{"text": "Selected sublevel:", "color": "blue"}, {"score": {"name": ".sublevel", "objective": "dg.build"}}]
# tag all rooms with that sublevel
execute as @e[type=marker,tag=dg.valid] if score @s dg.sublevel = .sublevel dg.build run tag @s add dg.current_sublevel
