# add the dg.room.choice tag to the marker that you want to be the starting room
execute if score .level dg.build matches 1 run tag @e[type=marker,tag=dg.active,nbt={data:{CustomName:'{"text":"demo/hallway0"}'}}] add dg.room.choice
execute if score .level dg.build matches 2 run tag @e[type=marker,tag=dg.active,nbt={data:{CustomName:'{"text":"demo2/hallway0"}'}}] add dg.room.choice
