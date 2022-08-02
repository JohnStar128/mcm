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

#> Prevent water spread
execute if block -694 60 45 dark_oak_trapdoor[waterlogged=true] run setblock -694 60 45 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -693 60 45 dark_oak_trapdoor[waterlogged=true] run setblock -693 60 45 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -692 60 45 dark_oak_trapdoor[waterlogged=true] run setblock -692 60 45 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -694 58 46 dark_oak_trapdoor[waterlogged=true] run setblock -694 58 46 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -693 58 46 dark_oak_trapdoor[waterlogged=true] run setblock -693 58 46 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -692 58 46 dark_oak_trapdoor[waterlogged=true] run setblock -692 58 46 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -694 56 46 dark_oak_trapdoor[waterlogged=true] run setblock -694 56 46 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -693 56 46 dark_oak_trapdoor[waterlogged=true] run setblock -693 56 46 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -692 56 46 dark_oak_trapdoor[waterlogged=true] run setblock -692 56 46 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -694 54 46 dark_oak_trapdoor[waterlogged=true] run setblock -694 54 46 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -693 54 46 dark_oak_trapdoor[waterlogged=true] run setblock -693 54 46 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -692 54 46 dark_oak_trapdoor[waterlogged=true] run setblock -692 54 46 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -694 52 45 dark_oak_trapdoor[waterlogged=true] run setblock -694 52 45 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -693 52 45 dark_oak_trapdoor[waterlogged=true] run setblock -693 52 45 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace
execute if block -692 52 45 dark_oak_trapdoor[waterlogged=true] run setblock -692 52 45 dark_oak_trapdoor[open=true,waterlogged=false,powered=false,half=top,facing=south] replace

#> Respawn players who fall out of the void during grace period, kill them if grace period has expired
#also doubles as escape prevention
execute as @a[tag=queued,predicate=!mcm:bounding_boxes/airship] at @s if score $selectedMap CmdData matches 2 if score $graceperiod CmdData matches 1.. run tp @s @e[tag=PlayerSpawn,limit=1,sort=nearest]
execute as @a[tag=queued,predicate=!mcm:bounding_boxes/airship] at @s if score $selectedMap CmdData matches 2 if score $graceperiod CmdData matches ..0 run function mcm:game/playerdeath