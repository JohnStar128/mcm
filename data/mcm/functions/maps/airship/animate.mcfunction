#>Floating Island Waterwheel Animation
scoreboard players add $wheeltimer CmdData 1
execute if score $wheeltimer CmdData matches 1 run playsound minecraft:block.chest.close block @a -693 56 40 2.25 0 0.0
execute if score $wheeltimer CmdData matches 1 run playsound minecraft:block.chest.open block @a -693 56 40 2.25 0 0.0
execute if score $wheeltimer CmdData matches 1 run place template mcm:waterwheel_2 -696 51 35
execute if score $wheeltimer CmdData matches 40 run playsound minecraft:block.chest.close block @a -693 56 40 2.25 0 0.0
execute if score $wheeltimer CmdData matches 40 run playsound minecraft:block.chest.open block @a -693 56 40 2.25 0 0.0
execute if score $wheeltimer CmdData matches 40 run place template mcm:waterwheel_1 -696 51 35
execute if score $wheeltimer CmdData matches 80.. run scoreboard players set $wheeltimer CmdData 0

#> Propeller animation
scoreboard players operation $temp math = $gametimer CmdData
scoreboard players operation $temp math %= $two_hundred math

execute if score $temp math matches 0 run place template mcm:airship_propeller_1 -649 41 -17
execute if score $temp math matches 100 run place template mcm:airship_propeller_2 -649 41 -17