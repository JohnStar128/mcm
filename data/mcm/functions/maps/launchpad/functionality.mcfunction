#> Teleport from bottom to top
execute if block -982 57 -1099 stone_button[powered=true] run fill -983 54 -1098 -983 54 -1098 redstone_block
execute if block -982 57 -1099 stone_button[powered=true] run fill -982 56 -1100 -981 57 -1100 black_wool
execute as @a[predicate=mcm:bounding_boxes/elevator_bottom] at @s if block -982 57 -1099 stone_button[powered=true] run tp @s ~ ~90 ~
execute as @a[predicate=mcm:bounding_boxes/elevator_bottom] at @s if block -982 57 -1099 stone_button[powered=true] run playsound minecraft:entity.zombie_villager.converted block @s -982 147 -1099 1 1.2 0
execute if block -982 57 -1099 stone_button[powered=true] run setblock -982 57 -1099 stone_button[powered=false,facing=east]

#> Teleport from top to bottom
execute if block -982 147 -1099 stone_button[powered=true] run fill -982 56 -1100 -981 57 -1100 air
execute if block -982 147 -1099 stone_button[powered=true] run fill -983 54 -1098 -983 54 -1098 air
execute as @a[predicate=mcm:bounding_boxes/elevator_top] at @s if block -982 147 -1099 stone_button[powered=true] run tp @s ~ ~-90 ~
execute as @a[predicate=mcm:bounding_boxes/elevator_top] at @s if block -982 147 -1099 stone_button[powered=true] run playsound minecraft:entity.zombie_villager.converted block @s -982 57 -1099 1 1.2 0
execute if block -982 147 -1099 stone_button[powered=true] run setblock -982 147 -1099 stone_button[powered=false,facing=east]

#> Call elevator from top to bottom
execute if block -984 57 -1102 stone_button[powered=true] run fill -982 56 -1100 -981 57 -1100 air
execute if block -984 57 -1102 stone_button[powered=true] run fill -983 54 -1098 -983 54 -1098 air
execute if block -984 57 -1102 stone_button[powered=true] run setblock -984 57 -1102 stone_button[powered=false]

#> Rocket launch sequence buttons
execute if block -1035 55 -1266 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -1035 55 -1266 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/9"]
execute if block -1035 55 -1266 stone_button[powered=true] run setblock -1035 55 -1266 air

execute if block -997 52 -1209 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -997 52 -1209 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/9"]
execute if block -997 52 -1209 stone_button[powered=true] run setblock -997 52 -1209 air

execute if block -954 55 -1142 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -954 55 -1142 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/9"]
execute if block -954 55 -1142 stone_button[powered=true] run setblock -954 55 -1142 air

execute if block -933 61 -1055 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -933 61 -1055 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/9"]
execute if block -933 61 -1055 stone_button[powered=true] run setblock -933 61 -1055 air

execute if block -1018 47 -1099 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -1018 47 -1099 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/9"]
execute if block -1018 47 -1099 stone_button[powered=true] run setblock -1018 47 -1099 air

execute if block -1074 60 -1096 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -1074 60 -1096 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/9"]
execute if block -1074 60 -1096 stone_button[powered=true] run setblock -1074 60 -1096 air

execute if block -999 57 -1115 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -999 57 -1115 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/9"]
execute if block -999 57 -1115 stone_button[powered=true] run setblock -999 57 -1115 air

execute if block -1045 50 -1020 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -1045 50 -1020 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/9"]
execute if block -1045 50 -1020 stone_button[powered=true] run setblock -1045 50 -1020 air

execute if block -1076 49 -1086 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -1076 49 -1086 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/9"]
execute if block -1076 49 -1086 stone_button[powered=true] run setblock -1076 49 -1086 air


# If all buttons have been pressed, place a button to unlock the tower and start the countdown
execute if score $launchButton CmdData matches 9 run function mcm:maps/launchpad/rockettemp/launchcountdown
execute if score $launchButton CmdData matches 9 run setblock -984 57 -1102 stone_button[face=wall,facing=north]

#> Start launch
execute if block -1016 158 -1099 lever[powered=false] run setblock -1016 158 -1099 lever[powered=false,face=wall,facing=south]
execute if block -1016 158 -1099 lever[powered=false] if score $launchControl CmdData matches 0 run tellraw @a[tag=queued] ["Go for launch!"]
execute if block -1016 158 -1099 lever[powered=false] if score $launchCountdown CmdData matches 1..1239 run scoreboard players set $launchControl CmdData 1
execute if block -1016 158 -1099 lever[powered=false] if score $launchCountdown CmdData matches 1240 run scoreboard players set $launchControl CmdData 2
execute unless block -1016 158 -1099 lever[powered=false] if score $launchCountdown CmdData matches 1240 run tellraw @a[tag=queued] ["Launch aborted!"]
execute unless block -1016 158 -1099 lever[powered=false] if score $launchCountdown CmdData matches 1240 run setblock -1016 156 -1099 air replace
execute unless block -1016 158 -1099 lever[powered=false] if score $launchCountdown CmdData matches 1240 run setblock -1016 157 -1099 air replace
execute if block -1016 158 -1099 lever[powered=false] if score $launchCountdown CmdData matches 1240 run tellraw @a[tag=queued] ["Liftoff!"]
execute if score $launchControl CmdData matches 2 as @a[predicate=mcm:bounding_boxes/rocket] run tag @s add launch_player
execute if score $launchControl CmdData matches 2 run function mcm:maps/launchpad/rockettemp/launchrocket

#> Landing
execute if score $launchControl CmdData matches 2 run function mcm:maps/launchpad/rockettemp/boosterland
execute if score $launchControl CmdData matches 2 run function mcm:maps/launchpad/rockettemp/capsuleland

#> Kill all players near rocket flames when active
execute if score $launchTime CmdData matches 1..220 as @a[predicate=mcm:bounding_boxes/launchpad_kill] at @s run function mcm:game/playerdeath
execute if score $launchTime CmdData matches 1..220 as @e[type=glow_squid,predicate=mcm:bounding_boxes/launchpad_kill] at @s run kill @s

#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/launchpad] at @s run tellraw @s ["", {"text":"<Gate guard> Can the owner of the purple Tesla get back in bounds.","color":"white"}]
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/launchpad] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=random]