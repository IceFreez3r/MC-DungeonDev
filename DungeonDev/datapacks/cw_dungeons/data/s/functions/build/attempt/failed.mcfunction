execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/room/failed_attempt"}
kill @e[type=marker,tag=dg.new]
kill @e[type=marker,tag=dg.door.options]
tag @e[type=marker,tag=dg.room.choice] remove dg.room.choice
kill @e[type=marker,tag=dg.door.placeholder]

scoreboard players add .try dg.build 1
execute if score .try dg.build < .tries dg.options run kill @e[type=marker,tag=dg.new]
execute if score .try dg.build < .tries dg.options run function s:build/loop
execute if score .try dg.build >= .tries dg.options run function s:build/deadend
