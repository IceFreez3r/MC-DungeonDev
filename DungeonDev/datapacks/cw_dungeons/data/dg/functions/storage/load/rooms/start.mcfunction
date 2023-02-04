tellraw @p {"text": "storage/load/rooms/start"}
# creates a marker for every room in the storage dg and fills it with data
data modify storage dg rooms_copy set from storage dg rooms
function dg:storage/filter/rooms_by_level/start

execute store result score .room_count dg.storage run data get storage dg rooms_copy
execute if score .room_count dg.storage matches 1.. run function dg:storage/load/rooms/loop
data remove storage dg rooms_copy
