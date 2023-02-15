execute if score .debug dg.options matches 1 run tellraw @a {"text":"build/clear_48"}
# different clear depending on the rooms height to not collide with the build limit
execute if score @s dg.build matches 296.. run fill ~ ~ ~ ~47 319 ~23 air
execute if score @s dg.build matches 296.. run fill ~ ~ ~24 ~47 319 ~47 air
execute if score @s dg.build matches ..295 run fill ~ ~ ~ ~47 ~23 ~23 air
execute if score @s dg.build matches ..295 run fill ~ ~ ~24 ~47 ~23 ~47 air
execute if score @s dg.build matches 272..295 run fill ~ ~24 ~24 ~47 319 ~47 air
execute if score @s dg.build matches 272..295 run fill ~ ~24 ~24 ~47 319 ~47 air
execute if score @s dg.build matches ..272 run fill ~ ~24 ~ ~47 ~47 ~23 air
execute if score @s dg.build matches ..272 run fill ~ ~24 ~24 ~47 ~47 ~47 air
# fill "fails" if all the blocks are already removed
execute if score @s dg.build matches 296.. store success score .room_removed dg.build if blocks ~ ~ ~ ~47 319 ~23 0 0 0 all if blocks ~ ~ ~24 ~47 319 ~47 0 0 0 all
execute if score @s dg.build matches 272..295 store success score .room_removed dg.build if blocks ~ ~ ~ ~47 319 ~23 0 0 0 all if blocks ~ ~ ~24 ~47 319 ~47 0 0 0 all
execute if score @s dg.build matches ..272 store success score .room_removed dg.build if blocks ~ ~ ~ ~47 ~23 ~23 0 0 0 all if blocks ~ ~ ~24 ~47 ~23 ~47 0 0 0 all if blocks ~ ~24 ~ ~47 ~47 ~23 0 0 0 all if blocks ~ ~24 ~24 ~47 ~47 ~47 0 0 0 all
