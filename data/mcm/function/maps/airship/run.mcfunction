
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

#> Crystal code
function mcm:maps/airship/crystals/control

execute if score $wheel timers matches 0 run playsound block.chest.open master @a -693 56 40 2.25 0 0
execute if score $wheel timers matches 0 run playsound block.chest.close master @a -693 56 40 2.25 0 0

# Activate Captain's Room
execute if block -633 53 -6 lever[powered=true] unless score $captain_room vars matches 1 run summon marker -636 56 -5 {Tags:["airship_teleport_beacon","captains_room","prop"]}
execute if block -633 53 -6 lever[powered=true] unless score $captain_room vars matches 1 positioned -633 53 -6 run playsound block.conduit.activate block @a[distance=..3] ~ ~ ~ 3 2 1
execute if block -633 53 -6 lever[powered=true] unless score $captain_room vars matches 1 run scoreboard players set $captain_room vars 1

#> Fans
execute as @a[tag=queued,tag=!spectator] at @s if entity @e[type=marker,tag=airship_fan,distance=..1.5] run effect give @s jump_boost 1 15 true
execute as @a[tag=queued,tag=!spectator] at @s if entity @e[type=marker,tag=airship_fan,distance=..1.5] run effect give @s slow_falling 1 1 true
