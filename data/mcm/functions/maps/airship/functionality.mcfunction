#>Floating Island Telepads
execute positioned -707 62 26 if block -707 62 26 minecraft:crimson_pressure_plate[powered=true] run tp @a[distance=..2,limit=1,sort=nearest] -695 76 46
execute positioned -636 52 46 if block -636 52 46 minecraft:crimson_pressure_plate[powered=true] run tp @a[distance=..2,limit=1,sort=nearest] -695 76 46

#>Floating Island Waterwheel Animation
scoreboard players add $wheeltimer CmdData 1
execute positioned -693 56 40 if score $wheeltimer CmdData matches 1 run playsound minecraft:block.chest.close block @a -693 56 40 2.5 0 0.0
execute positioned -693 56 40 if score $wheeltimer CmdData matches 1 run playsound minecraft:block.chest.open block @a -693 56 40 2.5 0 0.0
execute if score $wheeltimer CmdData matches 1 run setblock -707 49 36 redstone_block
execute if score $wheeltimer CmdData matches 1 run setblock -707 48 36 structure_block{mode:"LOAD",name:"mcm:waterwheel_2",posX:11,posY:3,posZ:-1} destroy
execute if score $wheeltimer CmdData matches 2 run setblock -707 49 36 air
execute positioned -693 56 40 if score $wheeltimer CmdData matches 40 run playsound minecraft:block.chest.close block @a -693 56 40 2.5 0 0.0
execute positioned -693 56 40 if score $wheeltimer CmdData matches 40 run playsound minecraft:block.chest.open block @a -693 56 40 2.5 0 0.0
execute if score $wheeltimer CmdData matches 40 run setblock -707 49 36 redstone_block
execute if score $wheeltimer CmdData matches 40 run setblock -707 48 36 structure_block{mode:"LOAD",name:"mcm:waterwheel_1",posX:11,posY:3,posZ:-1} destroy
execute if score $wheeltimer CmdData matches 41 run setblock -707 49 36 air
execute if score $wheeltimer CmdData matches 80.. run scoreboard players set $wheeltimer CmdData 0
