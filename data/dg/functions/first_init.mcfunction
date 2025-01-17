# total number of levels, randomly chosen, set .level to use a specific level
scoreboard players set .levels dg.options 1

# whether to use a set seed, also requires .seed to function
# the seed without a set seed can be found in .seed of dg.build
# note that the layout of the dungeons depends on the order that rooms are placed
# which again depends on the positions of the players during the run
scoreboard players set .seeded dg.options 0

# number of tries to find a room that fits before a door is marked as a deadend
# higher numbers mean less deadends, but also a higher performance cost
scoreboard players set .tries dg.options 3

# tons of debug output if used
scoreboard players set .debug dg.options 0

# the maximum depth of the dungeon, set to -1 for infinite
scoreboard players set .maxdepth dg.options -1
