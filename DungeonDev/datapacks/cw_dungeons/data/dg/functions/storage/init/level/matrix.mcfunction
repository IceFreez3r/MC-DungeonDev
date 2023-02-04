data modify storage dg level append from storage dg sublevel
execute store result score .entries dg.storage run data get storage dg level
execute if score .entries dg.storage < @s dg.sublevel run function dg:storage/init/level/matrix
