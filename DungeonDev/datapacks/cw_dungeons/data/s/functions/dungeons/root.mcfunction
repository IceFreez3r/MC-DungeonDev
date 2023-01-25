execute if score .debug dg.options matches 1 run tellraw @a {"text":"dungeons/root"}
execute if score .level dg.build matches 0 as @e[type=marker,tag=dg.active,nbt={data:{CustomName:'{"text":"hallway0"}'}}] align xyz run function s:dungeons/place

execute align xyz run summon marker ~ ~ ~ {Tags:["dg", "dg.min_corner", "dg.active"], data:{CustomName:'{"text":"Min Corner"}'}}
