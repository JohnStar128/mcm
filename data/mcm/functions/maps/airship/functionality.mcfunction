#>Floating Island Telepads
execute positioned -707 62 26 if block ~ ~ ~ minecraft:crimson_pressure_plate[powered=true] run tp @a[distance=..2,limit=1,sort=nearest] -695 76 46
execute positioned -636 52 46 if block ~ ~ ~ minecraft:crimson_pressure_plate[powered=true] run tp @a[distance=..2,limit=1,sort=nearest] -692 76 46
execute positioned -591 59 5 if block ~ ~ ~ minecraft:crimson_pressure_plate[powered=true] run tp @a[distance=..2,limit=1,sort=nearest] -694 77 50

execute if score $animate GameRules matches 1.. run function mcm:maps/airship/animate

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
execute as @a[tag=queued,predicate=!mcm:bounding_boxes/airship,tag=!spectating] at @s if score $graceperiod CmdData matches 1.. run tp @s @e[tag=PlayerSpawn,limit=1,sort=nearest]
execute as @a[tag=queued,predicate=!mcm:bounding_boxes/airship,tag=!spectating] at @s if score $selectedMap CmdData matches 2 if score $graceperiod CmdData matches ..0 run function mcm:game/playerdeath

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 2 unless predicate mcm:bounding_boxes/airship run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 2 unless predicate mcm:bounding_boxes/airship run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0

#> Crystal code
function mcm:maps/airship/crystals/control
#> Particles when holding the crystal
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1114}}}] at @s run particle minecraft:portal ~ ~1 ~ 0 0.5 0 1 1

# Activate Captain's Room
execute if block -633 53 -6 lever[powered=true] if score $captain_room CmdData matches 0 run summon marker -636 56 -5 {Tags:["airship_teleport_beacon","captains_room"]}
execute if block -633 53 -6 lever[powered=true] if score $captain_room CmdData matches 0 positioned -633 53 -6 run playsound minecraft:block.conduit.activate block @a[distance=..3] ~ ~ ~ 3 2 1
execute if block -633 53 -6 lever[powered=true] if score $captain_room CmdData matches 0 run scoreboard players set $captain_room CmdData 1

#> Fans
execute as @a at @s if entity @e[type=marker,tag=airship_fan,distance=..1.5] run effect give @s jump_boost 1 15 true
execute as @a at @s if entity @e[type=marker,tag=airship_fan,distance=..1.5] run effect give @s slow_falling 1 1 true
