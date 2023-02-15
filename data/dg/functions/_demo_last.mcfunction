scoreboard players set .seeded dg.options 1
scoreboard players operation .seed dg.options = .seed dg.build
execute positioned 0 64 0 run function dg:build/start
