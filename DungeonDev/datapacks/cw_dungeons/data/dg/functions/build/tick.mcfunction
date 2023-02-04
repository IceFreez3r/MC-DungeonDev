# TODO: Distance back to 32
execute at @a[gamemode=!spectator] as @e[type=marker,tag=dg.door.open,distance=..2,sort=nearest,limit=1] at @s run function dg:build/place
