execute if score .debug dg.options matches 1 run tellraw @a {"text": "storage/load/doors/loop"}
summon marker ~ ~ ~ {Tags:["dg", "dg.door", "dg.active", "dg.new", "dg.door.options"]}
data modify entity @e[type=marker,tag=dg.new,limit=1] data.door set from storage dg doors_copy[0]
execute as @e[type=marker,tag=dg.new,limit=1] run function dg:storage/load/door
data remove storage dg doors_copy[0]
tag @e[type=marker,tag=dg.new,limit=1] remove dg.new

scoreboard players remove .door_count dg.storage 1
execute if score .door_count dg.storage matches 1.. run function dg:storage/load/doors/loop
