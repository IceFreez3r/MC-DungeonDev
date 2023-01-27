# Removes a room from the rooms storage which UUID matches the UUID of the executing entity
execute store result score .uuid0 dg.storage run data get entity @s UUID[0]
execute store result score .uuid1 dg.storage run data get entity @s UUID[1]
execute store result score .uuid2 dg.storage run data get entity @s UUID[2]
execute store result score .uuid3 dg.storage run data get entity @s UUID[3]

data modify storage dg rooms_copy set value []
execute store result score .room_count dg.storage run data get storage dg rooms
execute if score .room_count dg.storage matches 1.. run function s:storage/filter/rooms_by_uuid/loop
data modify storage dg rooms set from storage dg rooms_copy
data remove storage dg rooms_copy
