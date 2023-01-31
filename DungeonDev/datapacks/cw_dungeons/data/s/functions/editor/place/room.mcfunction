kill @e[type=marker,tag=dg.room,distance=..1]
kill @e[type=armor_stand,tag=dg.display,distance=..1]
summon marker ~ ~ ~ {Tags:["dg.room","dg"]}
data modify entity @e[type=marker,tag=dg.room,distance=..1,limit=1] data.CustomName set from block ~ ~ ~ CustomName
setblock ~ ~ ~ comparator
scoreboard players set @e[type=marker,tag=dg.room,distance=..1,limit=1] dg.level 1
scoreboard players set @e[type=marker,tag=dg.room,distance=..1,limit=1] dg.sublevel 1
scoreboard players set @e[type=marker,tag=dg.room,distance=..1,limit=1] dg.weight 1
scoreboard players set @e[type=marker,tag=dg.room,distance=..1,limit=1] dg.max -1
scoreboard players set @e[type=marker,tag=dg.room,distance=..1,limit=1] dg.min_depth 0
