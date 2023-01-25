execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/room/choose/select"}
execute as @e[type=marker,tag=dg.valid,tag=!dg.not_this,limit=1] run scoreboard players operation out dg -= @s dg.weight
execute if score out dg matches ..0 run tag @e[type=marker,tag=dg.valid,tag=!dg.not_this,limit=1] add dg.room.choice
execute if score out dg matches 1.. run tag @e[type=marker,tag=dg.valid,tag=!dg.not_this,limit=1] add dg.not_this
execute if score out dg matches 1.. run function s:build/room/choose/select
