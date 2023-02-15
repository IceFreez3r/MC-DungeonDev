# create air template (48x48x48), then shield it with barrier blocks
# split into four pieces to avoid the 32768 block limit
fill 0 -64 0 47 -41 23 air
fill 0 -64 24 47 -41 47 air
fill 0 -40 0 47 -17 23 air
fill 0 -40 24 47 -17 47 air
# north
fill 0 -64 -1 47 -17 -1 barrier
# east
fill 48 -64 0 48 -17 47 barrier
# south
fill 0 -64 48 47 -17 48 barrier
# west
fill -1 -64 0 -1 -17 47 barrier
# top
fill 0 -16 0 47 -16 47 barrier
