execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/loop"}
# choose a random sublevel based on the transition weights of the previous room
function s:build/choose/sublevel/start
# choose a random room based on their weights
function s:build/choose/room/start
execute if score .debug dg.options matches 1 if entity @e[type=marker,tag=dg.room.choice] run tellraw @p [{"text": "Found room: ", "color": "blue"}, {"selector": "@e[type=marker,tag=dg.room.choice]", "color": "blue"}]
# load all the doors of the chosen room
execute as @e[type=marker,tag=dg.room.choice] run function s:storage/load/doors/start
# choose one of the doors
function s:build/choose/door
execute if score .debug dg.options matches 1 if entity @e[type=marker,tag=dg.door.choice] run tellraw @p [{"text": "Found door: ", "color": "blue"}, {"selector": "@e[type=marker,tag=dg.door.choice]", "color": "blue"}]
# determine the required rotation
function s:build/placement/rotation
# 50% chance to mirror the room
execute as @e[type=marker,tag=dg.door.choice] run function s:build/placement/mirror
# calculate lowest corner
execute as @e[type=marker,tag=dg.door.choice] run function s:build/placement/lowest_corner/start
# check if there is enough space
execute as @e[type=marker,tag=dg.door.choice] run function s:build/placement/dimensions/start
execute at @e[type=marker,tag=dg.min_corner,tag=dg.new] run function s:measure/start
# if there is enough space, build the room else try again
execute if score .fits dg.measure matches 1 as @e[type=marker,tag=dg.door.choice] run function s:build/attempt/successful
execute if score .fits dg.measure matches 0 run function s:build/attempt/failed
