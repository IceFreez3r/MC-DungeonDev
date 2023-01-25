# load UUID into scoreboard
execute store result score .uuid0tmp dg.storage run data get storage dg rooms[0].uuid[0]
execute store result score .uuid1tmp dg.storage run data get storage dg rooms[0].uuid[1]
execute store result score .uuid2tmp dg.storage run data get storage dg rooms[0].uuid[2]
execute store result score .uuid3tmp dg.storage run data get storage dg rooms[0].uuid[3]
# compare
scoreboard players set .filter dg.storage 0
execute if score .uuid0 dg.storage = .uuid0tmp dg.storage if score .uuid1 dg.storage = .uuid1tmp dg.storage if score .uuid2 dg.storage = .uuid2tmp dg.storage if score .uuid3 dg.storage = .uuid3tmp dg.storage run scoreboard players set .filter dg.storage 1
# only add to rooms_copy if filter is 0 -> some UUID value did not match
execute if score .filter dg.storage matches 0 run data modify storage dg rooms_copy append from storage dg rooms[0]
data remove storage dg rooms[0]
# repeat until no more rooms
scoreboard players remove .room_count dg.storage 1
execute if score .room_count dg.storage matches 1.. run function s:storage/filter/rooms_by_uuid/loop
