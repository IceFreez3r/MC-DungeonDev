execute if entity @s[tag=!dg.door.exit] if score @s dg.door.direction matches 0 run data merge entity @s {data:{CustomName:'{"text":"N"}'}}
execute if entity @s[tag=!dg.door.exit] if score @s dg.door.direction matches 1 run data merge entity @s {data:{CustomName:'{"text":"E"}'}}
execute if entity @s[tag=!dg.door.exit] if score @s dg.door.direction matches 2 run data merge entity @s {data:{CustomName:'{"text":"S"}'}}
execute if entity @s[tag=!dg.door.exit] if score @s dg.door.direction matches 3 run data merge entity @s {data:{CustomName:'{"text":"W"}'}}
execute if entity @s[tag=dg.door.exit] if score @s dg.door.direction matches 0 run data merge entity @s {data:{CustomName:'{"text":"Exit N"}'}}
execute if entity @s[tag=dg.door.exit] if score @s dg.door.direction matches 1 run data merge entity @s {data:{CustomName:'{"text":"Exit E"}'}}
execute if entity @s[tag=dg.door.exit] if score @s dg.door.direction matches 2 run data merge entity @s {data:{CustomName:'{"text":"Exit S"}'}}
execute if entity @s[tag=dg.door.exit] if score @s dg.door.direction matches 3 run data merge entity @s {data:{CustomName:'{"text":"Exit W"}'}}
