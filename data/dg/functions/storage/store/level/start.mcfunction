execute if score .debug dg.options matches 1 run tellraw @a {"text": "storage/store/level/start"}

execute store result storage dg level[0][0] int 1 run scoreboard players get .sublevel_0_0 dg.sublevel
execute store result storage dg level[0][1] int 1 run scoreboard players get .sublevel_0_1 dg.sublevel
execute store result storage dg level[0][2] int 1 run scoreboard players get .sublevel_0_2 dg.sublevel
execute store result storage dg level[0][3] int 1 run scoreboard players get .sublevel_0_3 dg.sublevel
execute store result storage dg level[0][4] int 1 run scoreboard players get .sublevel_0_4 dg.sublevel
execute store result storage dg level[1][0] int 1 run scoreboard players get .sublevel_1_0 dg.sublevel
execute store result storage dg level[1][1] int 1 run scoreboard players get .sublevel_1_1 dg.sublevel
execute store result storage dg level[1][2] int 1 run scoreboard players get .sublevel_1_2 dg.sublevel
execute store result storage dg level[1][3] int 1 run scoreboard players get .sublevel_1_3 dg.sublevel
execute store result storage dg level[1][4] int 1 run scoreboard players get .sublevel_1_4 dg.sublevel
execute store result storage dg level[2][0] int 1 run scoreboard players get .sublevel_2_0 dg.sublevel
execute store result storage dg level[2][1] int 1 run scoreboard players get .sublevel_2_1 dg.sublevel
execute store result storage dg level[2][2] int 1 run scoreboard players get .sublevel_2_2 dg.sublevel
execute store result storage dg level[2][3] int 1 run scoreboard players get .sublevel_2_3 dg.sublevel
execute store result storage dg level[2][4] int 1 run scoreboard players get .sublevel_2_4 dg.sublevel
execute store result storage dg level[3][0] int 1 run scoreboard players get .sublevel_3_0 dg.sublevel
execute store result storage dg level[3][1] int 1 run scoreboard players get .sublevel_3_1 dg.sublevel
execute store result storage dg level[3][2] int 1 run scoreboard players get .sublevel_3_2 dg.sublevel
execute store result storage dg level[3][3] int 1 run scoreboard players get .sublevel_3_3 dg.sublevel
execute store result storage dg level[3][4] int 1 run scoreboard players get .sublevel_3_4 dg.sublevel
execute store result storage dg level[4][0] int 1 run scoreboard players get .sublevel_4_0 dg.sublevel
execute store result storage dg level[4][1] int 1 run scoreboard players get .sublevel_4_1 dg.sublevel
execute store result storage dg level[4][2] int 1 run scoreboard players get .sublevel_4_2 dg.sublevel
execute store result storage dg level[4][3] int 1 run scoreboard players get .sublevel_4_3 dg.sublevel
execute store result storage dg level[4][4] int 1 run scoreboard players get .sublevel_4_4 dg.sublevel

data modify storage dg levels_new set value []
scoreboard players set .current_level dg.storage 1
function dg:storage/store/level/loop
data modify storage dg levels set from storage dg levels_new
data remove storage dg levels_new
