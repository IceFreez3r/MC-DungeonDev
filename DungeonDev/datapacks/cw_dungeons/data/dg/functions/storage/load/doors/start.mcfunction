execute if score .debug dg.options matches 1 run tellraw @a {"text": "storage/load/doors/start"}
# creates a marker for every door in the data.room.doors field of the current marker and fills it with data
data modify storage dg doors_copy set from entity @s data.room.doors

execute store result score .door_count dg.storage run data get storage dg doors_copy
execute if score .door_count dg.storage matches 1.. run function dg:storage/load/doors/loop
data remove storage dg doors_copy
