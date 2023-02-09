execute if score .debug dg.options matches 1 run tellraw @a [{"text": "storage/store/level/loop, "}, {"text": "Levels: ", "color": "blue"},{"score":{"name":".current_level","objective":"dg.storage"}, "color": "blue"}, {"text": ", "}, {"score":{"name":".level","objective":"dg.build"}, "color": "blue"}]
execute unless score .current_level dg.storage = .level dg.storage run data modify storage dg levels_new append from storage dg levels[0]
execute if score .current_level dg.storage = .level dg.storage run data modify storage dg levels_new append from storage dg level
data remove storage dg levels[0]
scoreboard players add .current_level dg.storage 1
execute if score .current_level dg.storage <= .levels dg.options run function dg:storage/store/level/loop
