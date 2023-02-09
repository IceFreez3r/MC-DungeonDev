data modify storage dg sublevel append value 1
execute store result score .entries dg.storage run data get storage dg sublevel
execute if score .entries dg.storage < @s dg.sublevel run function dg:storage/init/level/row
