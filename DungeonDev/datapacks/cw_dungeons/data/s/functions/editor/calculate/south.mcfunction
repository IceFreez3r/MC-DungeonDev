execute if score .debug dg.options matches 1 run tellraw @a {"text": "editor/calculate/south"}
execute store result score .dX dg run data get entity @s Pos[0]
execute store result score .dY dg run data get entity @s Pos[1]
execute store result score .dZ dg run data get entity @s Pos[2]

# door position - origin = blocks to the right of the door
scoreboard players operation @s dg.door.right = .dX dg
scoreboard players operation @s dg.door.right -= .oX dg

# (origin + size - 1) = opposite corner
# opposite corner - door position = blocks to the left of the door
scoreboard players operation @s dg.door.left = .oX dg
scoreboard players operation @s dg.door.left += .sX dg
scoreboard players remove @s dg.door.left 1
scoreboard players operation @s dg.door.left -= .dX dg

# (origin + size - 1) = opposite corner
# opposite corner - door position = blocks above the door
scoreboard players operation @s dg.door.up = .oY dg
scoreboard players operation @s dg.door.up += .sY dg
scoreboard players remove @s dg.door.up 1
scoreboard players operation @s dg.door.up -= .dY dg

# door position - origin = blocks below the door
scoreboard players operation @s dg.door.down = .dY dg
scoreboard players operation @s dg.door.down -= .oY dg

# door position - origin = perpendicular axis to the door
scoreboard players operation @s dg.door.perpendicular = .dZ dg
scoreboard players operation @s dg.door.perpendicular -= .oZ dg

# if all 4 directions are above 0 and the perpendicular axis is between 0 and
# the size the door actually belongs to the room
execute if score @s dg.door.right matches 0.. if score @s dg.door.left matches 0.. if score @s dg.door.up matches 0.. if score @s dg.door.down matches 0.. if score @s dg.door.perpendicular matches 0.. if score @s dg.door.perpendicular < .sZ dg run function s:storage/store/door
execute if score @s dg.door.right matches 0.. if score @s dg.door.left matches 0.. if score @s dg.door.up matches 0.. if score @s dg.door.down matches 0.. if score @s dg.door.perpendicular matches 0.. if score @s dg.door.perpendicular < .sZ dg run tag @s add dg.current_room
execute if score @s dg.door.right matches 0.. if score @s dg.door.left matches 0.. if score @s dg.door.up matches 0.. if score @s dg.door.down matches 0.. if score @s dg.door.perpendicular matches 0.. if score @s dg.door.perpendicular < .sZ dg run tellraw @p [{"text":" | S=["},{"score":{"name":"@s","objective":"dg.door.left"}},{"text":","},{"score":{"name":"@s","objective":"dg.door.right"}},{"text":","},{"score":{"name":"@s","objective":"dg.door.up"}},{"text":","},{"score":{"name":"@s","objective":"dg.door.down"}},{"text":","},{"score":{"name":"@s","objective":"dg.door.perpendicular"}},{"text":"]"}]
