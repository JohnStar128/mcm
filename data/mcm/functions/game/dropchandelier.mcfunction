scoreboard players add $chandelierTime CmdData 1
execute if score $chandelierTime CmdData matches 20 run place template minecraft:chandelier_frame1 971 100 997
execute if score $chandelierTime CmdData matches 30 run place template minecraft:chandelier_frame2 971 100 997
execute if score $chandelierTime CmdData matches 40 run place template minecraft:chandelier_frame3 971 100 997
execute if score $chandelierTime CmdData matches 50 run place template minecraft:chandelier_frame4 971 100 997

#> kill players under the chandelier when it hits the ground
execute if score $chandelierTime CmdData matches 50 as @a[predicate=mcm:bounding_boxes/chandelier_kill] at @s run playsound minecraft:wilhelm_scream ambient @a ~ ~ ~ 1 1 1
execute as @a[predicate=mcm:bounding_boxes/chandelier_kill] at @s if score $chandelierTime CmdData matches 50 run function mcm:game/playerdeath

execute positioned as @e[type=marker,tag=chandelierDropSound] if score $chandelierTime CmdData matches 50 run playsound minecraft:entity.wither.break_block block @a[distance=..150] ~ ~ ~ 1 1 1
execute positioned as @e[type=marker,tag=chandelierDropSound] if score $chandelierTime CmdData matches 50 run playsound minecraft:entity.player.levelup block @a[distance=..150] ~ ~ ~ 1 0 1
execute if score $chandelierTime CmdData matches 60 run setblock 977 111 992 air
execute if score $chandelierTime CmdData matches 60 run tag @e[type=marker,tag=canDropChandelier] remove canDropChandelier
execute if score $chandelierTime CmdData matches 60 run scoreboard players set $chandelierTime CmdData 0