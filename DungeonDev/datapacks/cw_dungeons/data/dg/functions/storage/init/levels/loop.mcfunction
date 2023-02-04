# initialize with 1x1 matrix
data modify storage dg levels append value [[1]]
execute store result score .levels dg.storage run data get storage dg levels
execute if score .levels dg.storage < .levels dg.options run function dg:storage/init/levels/loop
