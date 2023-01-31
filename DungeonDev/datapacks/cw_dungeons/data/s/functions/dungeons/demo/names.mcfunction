execute if score .debug dg.options matches 1 run tellraw @a {"text":"dungeons/demo/names"}
# hardcoded list of named markers linked to their respective functions
# Sublevel 1
execute if entity @s[nbt={data:{CustomName:'{"text":"demo/quad"}'}}] run function s:dungeons/demo/quad
execute if entity @s[nbt={data:{CustomName:'{"text":"demo/hallway0"}'}}] run function s:dungeons/demo/hallway0
execute if entity @s[nbt={data:{CustomName:'{"text":"demo/hallway1"}'}}] run function s:dungeons/demo/hallway1
execute if entity @s[nbt={data:{CustomName:'{"text":"demo/stairway0"}'}}] run function s:dungeons/demo/stairway0
execute if entity @s[nbt={data:{CustomName:'{"text":"demo/quad1"}'}}] run function s:dungeons/demo/quad1
execute if entity @s[nbt={data:{CustomName:'{"text":"demo/stairway1"}'}}] run function s:dungeons/demo/stairway1

# Sublevel 2
execute if entity @s[nbt={data:{CustomName:'{"text":"demo/2/quad"}'}}] run function s:dungeons/demo/2/quad
execute if entity @s[nbt={data:{CustomName:'{"text":"demo/2/hallway0"}'}}] run function s:dungeons/demo/2/hallway0
execute if entity @s[nbt={data:{CustomName:'{"text":"demo/2/hallway1"}'}}] run function s:dungeons/demo/2/hallway1
execute if entity @s[nbt={data:{CustomName:'{"text":"demo/2/stairway0"}'}}] run function s:dungeons/demo/2/stairway0
execute if entity @s[nbt={data:{CustomName:'{"text":"demo/2/quad1"}'}}] run function s:dungeons/demo/2/quad1
execute if entity @s[nbt={data:{CustomName:'{"text":"demo/2/stairway1"}'}}] run function s:dungeons/demo/2/stairway1
