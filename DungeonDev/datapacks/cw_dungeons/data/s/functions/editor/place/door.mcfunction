setblock ~ ~ ~ air

# delete old door marker + armor stand display
kill @e[type=marker,tag=dg.door,distance=..1]
kill @e[type=armor_stand,tag=dg.display,distance=..1]

summon marker ~ ~ ~ {Tags:["dg.door","dg", "dg.new"]}
execute as @p if entity @s[y_rotation=135..-135] run scoreboard players set @e[type=marker,tag=dg.door,distance=..1,limit=1] dg.door.direction 0
execute as @p if entity @s[y_rotation=-135..-45] run scoreboard players set @e[type=marker,tag=dg.door,distance=..1,limit=1] dg.door.direction 1
execute as @p if entity @s[y_rotation=-45..45] run scoreboard players set @e[type=marker,tag=dg.door,distance=..1,limit=1] dg.door.direction 2
execute as @p if entity @s[y_rotation=45..135] run scoreboard players set @e[type=marker,tag=dg.door,distance=..1,limit=1] dg.door.direction 3

execute as @e[type=marker,tag=dg.door,tag=dg.new] run function s:build/set_door_name
tag @e[type=marker,tag=dg.door,tag=dg.new] remove dg.new
