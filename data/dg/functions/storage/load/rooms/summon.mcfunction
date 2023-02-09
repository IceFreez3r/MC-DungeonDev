summon marker ~ ~ ~ {Tags:["dg", "dg.room", "dg.active", "dg.new"]}
data modify entity @e[type=marker,tag=dg.new,limit=1] data.room set from storage dg rooms_copy[0]

data remove storage dg rooms_copy[0]
tag @e[type=marker,tag=dg.new,limit=1] remove dg.new

scoreboard players remove .room_count dg.storage 1
execute if score .room_count dg.storage matches 1.. run function dg:storage/load/rooms/loop
