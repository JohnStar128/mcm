scoreboard players add $chandelierTime CmdData 1
execute if score $chandelierTime CmdData matches 20 run setblock 977 111 992 air
execute if score $chandelierTime CmdData matches 20 run setblock 977 110 992 structure_block{mode:"LOAD",name:"minecraft:chandelier_frame1",posX:-6,posY:-10,posZ:5} destroy
execute if score $chandelierTime CmdData matches 20 run setblock 977 111 992 redstone_block
execute if score $chandelierTime CmdData matches 40 run setblock 977 111 992 air
execute if score $chandelierTime CmdData matches 40 run setblock 977 110 992 structure_block{mode:"LOAD",name:"minecraft:chandelier_frame2",posX:-6,posY:-10,posZ:5} destroy
execute if score $chandelierTime CmdData matches 40 run setblock 977 111 992 redstone_block
execute if score $chandelierTime CmdData matches 60 run setblock 977 111 992 air
execute if score $chandelierTime CmdData matches 60 run setblock 977 110 992 structure_block{mode:"LOAD",name:"minecraft:chandelier_frame3",posX:-6,posY:-10,posZ:5} destroy
execute if score $chandelierTime CmdData matches 60 run setblock 977 111 992 redstone_block
execute if score $chandelierTime CmdData matches 80 run setblock 977 111 992 air
execute if score $chandelierTime CmdData matches 80 run setblock 977 110 992 structure_block{mode:"LOAD",name:"minecraft:chandelier_frame4",posX:-6,posY:-10,posZ:5} destroy
execute if score $chandelierTime CmdData matches 80 run setblock 977 111 992 redstone_block
execute if score $chandelierTime CmdData matches 80 run playsound minecraft:wilhelm_scream ambient @a ~ ~ ~ 1 1 1
execute as @e[tag=chandelierDropSound] at @s if score $chandelierTime CmdData matches 80 run playsound minecraft:entity.wither.break_block ambient @a[distance=..150] ~ ~ ~ 1 1 1
execute as @e[tag=chandelierDropSound] at @s if score $chandelierTime CmdData matches 80 run playsound minecraft:entity.player.levelup ambient @a[distance=..150] ~ ~ ~ 1 0 1
execute if score $chandelierTime CmdData matches 100 run setblock 977 111 992 air
execute if score $chandelierTime CmdData matches 100 run tag @e[tag=dropChandelier] remove dropChandelier
execute if score $chandelierTime CmdData matches 100 run scoreboard players set $chandelierTime CmdData 0