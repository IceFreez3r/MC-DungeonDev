tellraw @a {"text":"DONE!","color":"green"}

execute if score .tunnels dg.build matches 1 run function s:build/tunnel/start

kill @e[type=marker,tag=dg.door,scores={dg.depth=0..}]