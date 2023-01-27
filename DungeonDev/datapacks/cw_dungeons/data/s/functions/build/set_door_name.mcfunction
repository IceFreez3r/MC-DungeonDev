execute if score @s dg.door.direction matches 0 run data merge entity @s {data:{CustomName:'{"text":"N"}'}}
execute if score @s dg.door.direction matches 1 run data merge entity @s {data:{CustomName:'{"text":"E"}'}}
execute if score @s dg.door.direction matches 2 run data merge entity @s {data:{CustomName:'{"text":"S"}'}}
execute if score @s dg.door.direction matches 3 run data merge entity @s {data:{CustomName:'{"text":"W"}'}}
