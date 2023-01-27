execute as @e[type=marker,tag=dg.room,tag=!dg.active,distance=..1,limit=1] run function s:storage/filter/rooms_by_uuid/start
kill @e[tag=dg,distance=..1]
setblock ~ ~ ~ air
