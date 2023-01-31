# defines the behaviour when coming to a dead end based on the .level of the dungeon
# if nothing is defined the hallways just stop with open air
# the function is called at the position of the last door facing the open air
execute if score .level dg.build matches 1 run function s:dungeons/demo/deadend
execute if score .level dg.build matches 2 run function s:dungeons/demo2/deadend
