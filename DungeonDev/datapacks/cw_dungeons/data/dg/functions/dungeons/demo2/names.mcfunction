execute if score .debug dg.options matches 1 run tellraw @a {"text":"dungeons/demo2/names"}
# hardcoded list of named markers linked to their respective functions
# Sublevel 1
execute if entity @s[nbt={data:{CustomName:'{"text":"demo2/quad"}'}}] run function dg:dungeons/demo2/quad
execute if entity @s[nbt={data:{CustomName:'{"text":"demo2/hallway0"}'}}] run function dg:dungeons/demo2/hallway0
execute if entity @s[nbt={data:{CustomName:'{"text":"demo2/hallway1"}'}}] run function dg:dungeons/demo2/hallway1
execute if entity @s[nbt={data:{CustomName:'{"text":"demo2/stairway0"}'}}] run function dg:dungeons/demo2/stairway0
execute if entity @s[nbt={data:{CustomName:'{"text":"demo2/quad1"}'}}] run function dg:dungeons/demo2/quad1
execute if entity @s[nbt={data:{CustomName:'{"text":"demo2/stairway1"}'}}] run function dg:dungeons/demo2/stairway1

# Sublevel 2
execute if entity @s[nbt={data:{CustomName:'{"text":"demo2/2/quad"}'}}] run function dg:dungeons/demo2/2/quad
execute if entity @s[nbt={data:{CustomName:'{"text":"demo2/2/hallway0"}'}}] run function dg:dungeons/demo2/2/hallway0
execute if entity @s[nbt={data:{CustomName:'{"text":"demo2/2/hallway1"}'}}] run function dg:dungeons/demo2/2/hallway1
execute if entity @s[nbt={data:{CustomName:'{"text":"demo2/2/stairway0"}'}}] run function dg:dungeons/demo2/2/stairway0
execute if entity @s[nbt={data:{CustomName:'{"text":"demo2/2/quad1"}'}}] run function dg:dungeons/demo2/2/quad1
execute if entity @s[nbt={data:{CustomName:'{"text":"demo2/2/stairway1"}'}}] run function dg:dungeons/demo2/2/stairway1
