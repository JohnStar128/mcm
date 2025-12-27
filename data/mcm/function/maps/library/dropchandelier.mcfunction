scoreboard players add $chandelierTime vars 1
execute if score $chandelierTime vars matches 20 run place template minecraft:chandelier_frame1 971 100 997
execute if score $chandelierTime vars matches 30 run place template minecraft:chandelier_frame2 971 100 997
execute if score $chandelierTime vars matches 40 run place template minecraft:chandelier_frame3 971 100 997
execute if score $chandelierTime vars matches 50 run place template minecraft:chandelier_frame4 971 100 997

#> kill players under the chandelier when it hits the ground
execute if score $chandelierTime vars matches 50 as @a[predicate=mcm:map_bounds/library/chandelier_kill] at @s run playsound minecraft:wilhelm_scream ambient @a[tag=queued] ~ ~ ~ 1 1 1
execute if score $chandelierTime vars matches 50 as @a[predicate=mcm:map_bounds/library/chandelier_kill,tag=!spectator] run function mcm:summary/add_event {translate:"mcm.game.events.killed_by_chandelier", color:"green",type:1}
execute as @a[predicate=mcm:map_bounds/library/chandelier_kill,tag=!spectator] at @s if score $chandelierTime vars matches 50 run function mcm:player_state/death {msg:"mcm.library.chandelier",color:"red",bold:false,italic:true,arg1:""}

execute positioned as @e[type=marker,tag=chandelierDropSound] if score $chandelierTime vars matches 50 run playsound entity.wither.break_block block @a[tag=queued,distance=..150] ~ ~ ~ 1 1 1
execute positioned as @e[type=marker,tag=chandelierDropSound] if score $chandelierTime vars matches 50 run playsound entity.player.levelup block @a[tag=queued,distance=..150] ~ ~ ~ 1 0 1
execute if score $chandelierTime vars matches 60 run setblock 977 111 992 air
execute if score $chandelierTime vars matches 60 run tag @e[type=marker,tag=canDropChandelier] remove canDropChandelier
execute if score $chandelierTime vars matches 60 run scoreboard players reset $chandelierTime vars