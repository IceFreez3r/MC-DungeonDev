# assumes that all doors belonging to the room are tagged with `dg.current_room`
# removes the tag

# UUID
data modify entity @s data.room.uuid set from entity @s UUID
# Name
data modify entity @s data.room.name set from entity @s data.CustomName
# Roomsettings
execute store result entity @s data.room.level int 1.0 run scoreboard players get @s dg.level
execute store result entity @s data.room.sublevel int 1.0 run scoreboard players get @s dg.sublevel
execute store result entity @s data.room.weight int 1.0 run scoreboard players get @s dg.weight
execute store result entity @s data.room.max int 1.0 run scoreboard players get @s dg.max
execute store result entity @s data.room.min_depth int 1.0 run scoreboard players get @s dg.min_depth
execute store result entity @s data.room.max_dimension int 1.0 run scoreboard players get @s dg.max_dimension
# Doors
data remove entity @s data.room.doors
scoreboard players operation .sublevel dg.editor = @s dg.sublevel 
execute as @e[type=marker,tag=dg.current_room] store result entity @s data.door.sublevel int 1.0 run scoreboard players get .sublevel dg.editor
execute at @e[type=marker,tag=dg.current_room,tag=!dg.door.exit] run data modify entity @s data.room.doors append from entity @e[type=marker,tag=dg.current_room,sort=nearest,limit=1] data.door
tag @e[type=marker,tag=dg.current_room] remove dg.current_room
# Write to storage
function dg:storage/filter/rooms_by_uuid/start
data modify storage dg rooms append from entity @s data.room
