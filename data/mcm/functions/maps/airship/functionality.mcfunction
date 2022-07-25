#>Floating Island Telepads
execute positioned -707 62 26 if block -707 62 26 minecraft:crimson_pressure_plate[powered=true] run tp @a[distance=..2,limit=1,sort=nearest] -695 76 46
execute positioned -636 52 46 if block -636 52 46 minecraft:crimson_pressure_plate[powered=true] run tp @a[distance=..2,limit=1,sort=nearest] -695 76 46

#>Floating Island Waterwheel Animation
execute if score $animate GameRules matches 1.. run scoreboard players add $wheeltimer CmdData 1
execute if score $animate GameRules matches 1.. run execute positioned -693 56 40 if score $wheeltimer CmdData matches 1 run playsound minecraft:block.chest.close block @a -693 56 40 2.25 0 0.0
execute if score $animate GameRules matches 1.. run execute positioned -693 56 40 if score $wheeltimer CmdData matches 1 run playsound minecraft:block.chest.open block @a -693 56 40 2.25 0 0.0
execute if score $animate GameRules matches 1.. run execute if score $wheeltimer CmdData matches 1 run place template mcm:waterwheel_2 -696 51 35
execute if score $animate GameRules matches 1.. run execute positioned -693 56 40 if score $wheeltimer CmdData matches 40 run playsound minecraft:block.chest.close block @a -693 56 40 2.25 0 0.0
execute if score $animate GameRules matches 1.. run execute positioned -693 56 40 if score $wheeltimer CmdData matches 40 run playsound minecraft:block.chest.open block @a -693 56 40 2.25 0 0.0
execute if score $animate GameRules matches 1.. run execute if score $wheeltimer CmdData matches 40 run place template mcm:waterwheel_1 -696 51 35
execute if score $animate GameRules matches 1.. run execute if score $wheeltimer CmdData matches 80.. run scoreboard players set $wheeltimer CmdData 0
