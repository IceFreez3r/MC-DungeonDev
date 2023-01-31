data modify entity @s data.room set from storage dg rooms_copy[0]
# Name
data modify entity @s data.CustomName set from entity @s data.room.name
# Roomsettings
execute store result score @s dg.level run data get entity @s data.room.level
execute store result score @s dg.sublevel run data get entity @s data.room.sublevel
execute store result score @s dg.weight run data get entity @s data.room.weight
execute store result score @s dg.max run data get entity @s data.room.max
execute store result score @s dg.min_depth run data get entity @s data.room.min_depth
