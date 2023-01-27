execute if score .debug dg.options matches 1 run tellraw @a [{"text": "build/room/start"}, {"text": ", Doormarker: "}, {"selector": "@s", "color": "blue"}]
function s:build/new_door
# mark all rooms with a min_depth lower or equal to the depth of the door as valid
scoreboard players operation .depth dg.build = @s dg.depth
execute as @e[type=marker,tag=dg.room,tag=dg.active] if score .depth dg.build >= @s dg.min_depth run tag @s add dg.valid
scoreboard players set .try dg.build 0
function s:build/loop
tag @s remove dg.door.open
tag @e[type=marker,tag=dg.valid] remove dg.valid
