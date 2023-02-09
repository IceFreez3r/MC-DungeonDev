execute if score .debug dg.options matches 1 run tellraw @a {"text":"build/start"}
function dg:build/stop
scoreboard players set .ongoing_run dg.build 1
function dg:build/reset_statistics

# mark other markers to prevent interference
tag @e[type=marker] add dg.inactive

function dg:build/air_template

# if a level is specified, use it, otherwise choose a random level
execute if score .level dg.options matches 1.. run scoreboard players operation .level dg.build = .level dg.options
execute unless score .level dg.options matches 1.. run function dg:build/choose/level

# load the transition matrix for the chosen level
scoreboard players operation .level dg.storage = .level dg.build 
function dg:storage/load/transitions/matrix

# load all rooms from the chosen level
function dg:storage/load/rooms/start

scoreboard players set @e[type=marker,tag=dg.room,tag=dg.active] dg.placed 0

execute if score .seeded dg.options matches 1 if score .seed dg.options matches -2147483647..2147483647 run scoreboard players operation #lcg dg = .seed dg.options
execute if score .seeded dg.options matches 1 unless score .seed dg.options matches -2147483647..2147483647 run scoreboard players operation .seed dg.build = #lcg dg
execute if score .seeded dg.options matches 0 run scoreboard players operation .seed dg.build = #lcg dg

scoreboard players set .rotation dg.build 0
scoreboard players set .mirror dg.build 0
scoreboard players set .depth dg.build 0

# place starting dungeon here
function dg:dungeons/root
