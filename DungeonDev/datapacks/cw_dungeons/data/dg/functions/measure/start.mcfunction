execute if score .debug dg.options matches 1 run tellraw @a {"text": "measure/start"}
# checks if ~ ~ ~ ~width ~height ~depth from the current position is all air
# requires .width, .height and .depth to be set in dg.measure
scoreboard players operation .combined dg.measure = .width dg.measure
scoreboard players operation .combined dg.measure *= #32 constant
scoreboard players operation .combined dg.measure += .height dg.measure
scoreboard players operation .combined dg.measure *= #32 constant
scoreboard players operation .combined dg.measure += .depth dg.measure

execute if score .debug dg.options matches 1 run tellraw @a [{"text": ".width: ", "color": "blue"},{"score": {"name": ".width","objective": "dg.measure"}, "color": "blue"},{"text": " .height: ", "color": "blue"},{"score": {"name": ".height","objective": "dg.measure"}, "color": "blue"},{"text": " .depth: ", "color": "blue"},{"score": {"name": ".depth","objective": "dg.measure"}, "color": "blue"},{"text": " .combined: ", "color": "blue"},{"score": {"name": ".combined","objective": "dg.measure"}, "color": "blue"}]

scoreboard players set .fits dg.measure 0
function dg:measure/tree/combined/0_32767
kill @e[type=marker,tag=dg.measure]
