execute if score .debug dg.options matches 1 run tellraw @a {"text":"dungeons/place"}
# directory to find what room to place
tag @s remove dg.room.choice

# add your own levels here
execute if score @s dg.level matches 1 run function dg:dungeons/demo/names
execute if score @s dg.level matches 2 run function dg:dungeons/demo2/names

execute as @e[type=marker,tag=dg.door,tag=!dg.inactive,tag=!dg.active] at @s unless entity @e[type=marker,tag=dg.door.placeholder,distance=..1] run function dg:build/flag_new_door
execute as @e[type=marker,tag=dg.door,tag=!dg.inactive,tag=!dg.active] at @s if entity @e[type=marker,tag=dg.door.placeholder,distance=..1] run kill @s

# remove room if maximum number of rooms of this type have been placed
scoreboard players add @s dg.placed 1
execute if score @s dg.max matches 1.. if score @s dg.placed >= @s dg.max run kill @s
