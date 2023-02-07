execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/room/successful_attempt"}
function dg:build/placement/origin
execute if score .debug dg.options matches 1 run tellraw @a [{"text": "Origin: ", "color": "blue"}, {"selector": "@e[type=marker,tag=dg.origin]", "color": "blue"}, {"text": " at ", "color": "blue"}, {"score": {"name": ".originX", "objective": "dg.build"}, "color": "blue"}, {"text": " ", "color": "blue"}, {"score": {"name": ".originY", "objective": "dg.build"}, "color": "blue"}, {"text": " ", "color": "blue"}, {"score": {"name": ".originZ", "objective": "dg.build"}, "color": "blue"}]
execute as @e[type=marker,tag=dg.room.choice] at @e[type=marker,tag=dg.origin] run function dg:dungeons/place
tag @e[type=marker,tag=dg.new] remove dg.new
kill @e[type=marker,tag=dg.door.options]
kill @e[type=marker,tag=dg.origin]
tag @e[type=marker,tag=dg.current_sublevel] remove dg.current_sublevel
kill @e[type=marker,tag=dg.door.placeholder]
