execute if score .debug dg.options matches 1 run tellraw @a {"text":"dungeons/demo/names"}
# hardcoded list of named markers linked to their respective functions
execute if entity @s[nbt={data:{CustomName:'{"text":"quad"}'}}] run function s:dungeons/demo/quad
execute if entity @s[nbt={data:{CustomName:'{"text":"hallway0"}'}}] run function s:dungeons/demo/hallway0
execute if entity @s[nbt={data:{CustomName:'{"text":"hallway1"}'}}] run function s:dungeons/demo/hallway1
execute if entity @s[nbt={data:{CustomName:'{"text":"stairway0"}'}}] run function s:dungeons/demo/stairway0
execute if entity @s[nbt={data:{CustomName:'{"text":"quad1"}'}}] run function s:dungeons/demo/quad1
execute if entity @s[nbt={data:{CustomName:'{"text":"stairway1"}'}}] run function s:dungeons/demo/stairway1
