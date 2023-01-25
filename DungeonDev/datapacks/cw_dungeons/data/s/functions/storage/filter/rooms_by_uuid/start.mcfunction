# Removes a room from the rooms storage
# uuid0, uuid1, uuid2, uuid3 in dg.storage need to be set
data modify storage dg rooms_copy set value []
execute store result score .room_count dg.storage run data get storage dg rooms
execute if score .room_count dg.storage matches 1.. run function s:storage/filter/rooms_by_uuid/loop
data modify storage dg rooms set from storage dg rooms_copy
data remove storage dg rooms_copy
