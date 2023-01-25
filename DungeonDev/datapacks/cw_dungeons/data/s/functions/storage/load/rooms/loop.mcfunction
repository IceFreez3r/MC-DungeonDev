summon marker ~ ~ ~ {Tags:["dg", "dg.room", "dg.active", "dg.new"]}
execute as @e[type=marker,tag=dg.new,limit=1] run function s:storage/load/room
data remove storage dg rooms_copy[0]
tag @e[type=marker,tag=dg.new,limit=1] remove dg.new

scoreboard players remove .room_count dg.storage 1
execute if score .room_count dg.storage matches 1.. run function s:storage/load/rooms/loop

