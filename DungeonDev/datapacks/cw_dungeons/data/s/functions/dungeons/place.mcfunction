execute if score .debug dg.options matches 1 run tellraw @a {"text":"dungeons/place"}
# directory to find what room to place
tag @s remove dg.room.choice

# add your own levels here
execute if score @s dg.level matches 0 run function s:dungeons/demo/names

execute as @e[type=marker,tag=dg.door,tag=!dg.inactive,tag=!dg.active] at @s run function s:build/flag_new_door
