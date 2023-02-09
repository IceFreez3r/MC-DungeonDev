execute if score .debug dg.options matches 1 run tellraw @a [{"text": "storage/load/transitions/sublevel/start, "}, {"text": "Level ", "color": "blue"}, {"score": {"name": ".level", "objective": "dg.build"}, "color": "blue"}, {"text": ", Sublevel ", "color": "blue"}, {"score": {"name": ".sublevel", "objective": "dg.storage"}, "color": "blue"}]
# Loads the array corresponding to .sublevel in dg.storage from dg level into dg sublevel
data modify storage dg tmp_level set from storage dg level
scoreboard players set .counter dg.storage 1
execute if score .counter dg.storage < .sublevel dg.storage run function dg:storage/load/transitions/sublevel/loop
data modify storage dg sublevel set from storage dg tmp_level[0]
data remove storage dg tmp_level
