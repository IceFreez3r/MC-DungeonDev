# assumes that all doors belonging to the room are tagged with `dg.current_room`
# removes the tag

# UUID
data modify entity @s data.room.uuid set from entity @s UUID
execute store result score .uuid0 dg.storage run data get entity @s UUID[0]
execute store result score .uuid1 dg.storage run data get entity @s UUID[1]
execute store result score .uuid2 dg.storage run data get entity @s UUID[2]
execute store result score .uuid3 dg.storage run data get entity @s UUID[3]
# Name
data modify entity @s data.room.name set from entity @s data.CustomName
# Roomsettings
execute store result entity @s data.room.level int 1.0 run scoreboard players get @s dg.level
execute store result entity @s data.room.weight int 1.0 run scoreboard players get @s dg.weight
execute store result entity @s data.room.max int 1.0 run scoreboard players get @s dg.max
execute store result entity @s data.room.min_depth int 1.0 run scoreboard players get @s dg.min_depth
# Doors
data remove entity @s data.room.doors
# TODO: exclude doors marked as exit
execute at @e[type=marker,tag=dg.current_room,tag=!dg.door.exit] run data modify entity @s data.room.doors append from entity @e[type=marker,tag=dg.current_room,sort=nearest,limit=1] data.door
tag @e[type=marker,tag=dg.current_room] remove dg.current_room
# Write to storage
function s:storage/filter/rooms_by_uuid/start
data modify storage dg rooms append from entity @s data.room
