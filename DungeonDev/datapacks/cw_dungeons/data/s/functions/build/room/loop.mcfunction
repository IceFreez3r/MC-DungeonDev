execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/room/loop"}
# choose a random room based on their weights
function s:build/room/choose/start
execute if score .debug dg.options matches 1 if entity @e[type=marker,tag=dg.room.choice] run tellraw @p [{"text": "Found room: ", "color": "blue"}, {"selector": "@e[type=marker,tag=dg.room.choice]", "color": "blue"}]
# load all the doors of the chosen room
execute as @e[type=marker,tag=dg.room.choice] run function s:storage/load/doors/start
# choose one of the doors
function s:build/door/choose
execute if score .debug dg.options matches 1 if entity @e[type=marker,tag=dg.door.choice] run tellraw @p [{"text": "Found door: ", "color": "blue"}, {"selector": "@e[type=marker,tag=dg.door.choice]", "color": "blue"}]
# determine the required rotation
function s:build/room/base_rotation
# 50% chance to mirror the room
execute as @e[type=marker,tag=dg.door.choice] run function s:build/room/random_mirror
# calculate lowest corner
execute as @e[type=marker,tag=dg.door.choice] run function s:build/room/lowest_corner/start
# check if there is enough space
execute as @e[type=marker,tag=dg.door.choice] run function s:build/room/dimensions/start
execute at @e[type=marker,tag=dg.min_corner,tag=dg.new] run function s:measure/start
# if there is enough space, build the room else try again
execute if score .fits dg.measure matches 1 as @e[type=marker,tag=dg.door.choice] run function s:build/room/successful_attempt
execute if score .fits dg.measure matches 0 run function s:build/room/failed_attempt
