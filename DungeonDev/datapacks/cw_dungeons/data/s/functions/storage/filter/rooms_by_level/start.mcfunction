execute if score .debug dg.options matches 1 run tellraw @a {"text": "storage/filter/rooms_by_level/start"}
# Removes all rooms from the rooms_copy storage with the wrong level
# .level in dg.build needs to be set

data modify storage dg rooms_copy_copy set value []
execute store result score .room_count dg.storage run data get storage dg rooms_copy
execute if score .room_count dg.storage matches 1.. run function s:storage/filter/rooms_by_level/loop
data modify storage dg rooms_copy set from storage dg rooms_copy_copy
data remove storage dg rooms_copy_copy
