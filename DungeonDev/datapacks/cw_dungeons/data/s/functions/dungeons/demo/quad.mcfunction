execute if score .debug dg.options matches 1 run tellraw @a {"text":"dungeons/demo/quad"}
execute if score .rotation dg.build matches 0 if score .mirror dg.build matches 0 run place template s:dg/demo/quad ~ ~ ~ none none
execute if score .rotation dg.build matches 0 if score .mirror dg.build matches 1 run place template s:dg/demo/quad ~ ~ ~ none left_right
execute if score .rotation dg.build matches 90 if score .mirror dg.build matches 0 run place template s:dg/demo/quad ~ ~ ~ clockwise_90 none
execute if score .rotation dg.build matches 90 if score .mirror dg.build matches 1 run place template s:dg/demo/quad ~ ~ ~ clockwise_90 left_right
execute if score .rotation dg.build matches 180 if score .mirror dg.build matches 0 run place template s:dg/demo/quad ~ ~ ~ 180 none
execute if score .rotation dg.build matches 180 if score .mirror dg.build matches 1 run place template s:dg/demo/quad ~ ~ ~ 180 left_right
execute if score .rotation dg.build matches 270 if score .mirror dg.build matches 0 run place template s:dg/demo/quad ~ ~ ~ counterclockwise_90 none
execute if score .rotation dg.build matches 270 if score .mirror dg.build matches 1 run place template s:dg/demo/quad ~ ~ ~ counterclockwise_90 left_right