execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/choose_level"}
scoreboard players set in dg 1
scoreboard players operation in1 dg = .levels dg.options
function dg:general/rng/range
execute store result score .level dg.build run scoreboard players get out dg
