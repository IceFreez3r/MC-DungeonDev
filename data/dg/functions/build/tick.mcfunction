execute unless score .debug dg.options matches 1 at @a[gamemode=!spectator] as @e[type=marker,tag=dg.door.open,distance=..32,sort=nearest,limit=1] at @s run function dg:build/place
execute if score .debug dg.options matches 1 at @a[gamemode=!spectator] as @e[type=marker,tag=dg.door.open,distance=..2,sort=nearest,limit=1] at @s run function dg:build/place
