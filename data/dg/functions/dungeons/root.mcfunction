execute if score .debug dg.options matches 1 run tellraw @a {"text":"dungeons/root"}
execute if score .level dg.build matches 1 as @e[type=marker,tag=dg.active,nbt={data:{CustomName:'{"text":"demo/hallway0"}'}}] align xyz run function dg:dungeons/place
execute if score .level dg.build matches 2 as @e[type=marker,tag=dg.active,nbt={data:{CustomName:'{"text":"demo2/hallway0"}'}}] align xyz run function dg:dungeons/place

execute align xyz run summon marker ~ ~ ~ {Tags:["dg", "dg.min_corner", "dg.active"], data:{CustomName:'{"text":"Min Corner"}'}}
