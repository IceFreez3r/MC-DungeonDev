execute if score .debug dg.options matches 1 run tellraw @a {"text": "build/room/base_rotation"}
# @s is the door that gets expanded, @e[type=marker,tag=dg.door.choice,limit=1] is the door that is chosen
# rotation = ((direction-@s - 2 + direction-@e) * 90) % 360
scoreboard players operation .rotation dg.build = @s dg.door.direction
scoreboard players add .rotation dg.build 2
scoreboard players operation .rotation dg.build -= @e[type=marker,tag=dg.door.choice,limit=1] dg.door.direction
scoreboard players operation .rotation dg.build *= #90 constant
scoreboard players operation .rotation dg.build %= #360 constant

execute if score .debug dg.options matches 1 run tellraw @a [{"text": "base rotation: ", "color": "blue"},{"score": {"name": ".rotation", "objective": "dg.build"}, "color": "blue"}]
