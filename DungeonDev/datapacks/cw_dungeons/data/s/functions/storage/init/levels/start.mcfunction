execute store result score .levels dg.storage run data get storage dg levels
execute if score .levels dg.storage < .levels dg.options run function s:storage/init/levels/loop
