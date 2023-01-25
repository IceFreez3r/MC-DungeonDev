execute if score .debug dg.options matches 1 run tellraw @a {"text": "storage/filter/rooms_by_level/loop"}
# load level into scoreboard
execute store result score .level dg.storage run data get storage dg rooms_copy[0].level
# compare
scoreboard players set .filter dg.storage 0
execute if score .level dg.build = .level dg.storage run scoreboard players set .filter dg.storage 1
# only add to rooms_copy if filter is 1 -> level did match
execute if score .filter dg.storage matches 1 run data modify storage dg rooms_copy_copy append from storage dg rooms_copy[0]
data remove storage dg rooms_copy[0]
# repeat until no more rooms
scoreboard players remove .room_count dg.storage 1
execute if score .room_count dg.storage matches 1.. run function s:storage/filter/rooms_by_level/loop
