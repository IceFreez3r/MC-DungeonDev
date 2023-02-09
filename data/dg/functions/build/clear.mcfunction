execute if score .debug dg.options matches 1 run tellraw @a {"text":"build/clear"}
# different clear depending on the rooms height to not collide with the build limit
execute if score @s dg.build matches 288.. store success score .room_removed dg.build run fill ~ ~ ~ ~31 319 ~31 air
execute if score @s dg.build matches ..287 store success score .room_removed dg.build run fill ~ ~ ~ ~31 ~31 ~31 air
# fill "fails" if all the blocks are already removed
execute if score .room_removed dg.build matches 0 if score @s dg.build matches 288.. store success score .room_removed dg.build if blocks ~ ~ ~ ~31 319 ~31 -32 -64 -32 all
execute if score .room_removed dg.build matches 0 if score @s dg.build matches ..287 store success score .room_removed dg.build if blocks ~ ~ ~ ~31 ~31 ~31 -32 -64 -32 all
execute if score .room_removed dg.build matches 1 run kill @s
# retry after 5 seconds
execute if score .room_removed dg.build matches 0 run scoreboard players set @s dg.cooldown 100
