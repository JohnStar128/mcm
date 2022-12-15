#> Teleport from bottom to top
scoreboard players remove $button_delay CmdData 1

execute if score $button_delay CmdData matches ..0 if block -982 57 -1099 stone_button[powered=true] run fill -983 54 -1098 -983 54 -1098 redstone_block
execute if score $button_delay CmdData matches ..0 if block -982 57 -1099 stone_button[powered=true] run fill -982 56 -1100 -981 57 -1100 black_wool
execute if score $button_delay CmdData matches ..0 as @a[predicate=mcm:bounding_boxes/elevator_bottom] at @s if block -982 57 -1099 stone_button[powered=true] run tp @s ~ ~90 ~
execute if score $button_delay CmdData matches ..0 as @a[predicate=mcm:bounding_boxes/elevator_bottom] at @s if block -982 57 -1099 stone_button[powered=true] run playsound minecraft:entity.zombie_villager.converted block @s -982 147 -1099 1 1.2 0
execute if score $button_delay CmdData matches ..0 if block -982 57 -1099 stone_button[powered=true] run scoreboard players set $button_delay CmdData 10
execute if block -982 57 -1099 stone_button[powered=true] run setblock -982 57 -1099 stone_button[powered=false,facing=east]

#> Teleport from top to bottom
execute if score $button_delay CmdData matches ..0 if block -982 147 -1099 stone_button[powered=true] run fill -982 56 -1100 -981 57 -1100 air
execute if score $button_delay CmdData matches ..0 if block -982 147 -1099 stone_button[powered=true] run fill -983 54 -1098 -983 54 -1098 air
execute if score $button_delay CmdData matches ..0 as @a[predicate=mcm:bounding_boxes/elevator_top] at @s if block -982 147 -1099 stone_button[powered=true] run tp @s ~ ~-90 ~
execute if score $button_delay CmdData matches ..0 as @a[predicate=mcm:bounding_boxes/elevator_top] at @s if block -982 147 -1099 stone_button[powered=true] run playsound minecraft:entity.zombie_villager.converted block @s -982 57 -1099 1 1.2 0
execute if score $button_delay CmdData matches ..0 if block -982 57 -1099 stone_button[powered=true] run scoreboard players set $button_delay CmdData 10
execute if block -982 147 -1099 stone_button[powered=true] run setblock -982 147 -1099 stone_button[powered=false,facing=east]


#> Call elevator from top to bottom
execute if block -984 57 -1102 stone_button[powered=true] run fill -982 56 -1100 -981 57 -1100 air
execute if block -984 57 -1102 stone_button[powered=true] run fill -983 54 -1098 -983 54 -1098 air
execute if block -984 57 -1102 stone_button[powered=true] run setblock -984 57 -1102 stone_button[powered=false]

#> Rocket launch sequence buttons
execute if block -1035 55 -1266 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -1035 55 -1266 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/10"]
execute if block -1035 55 -1266 stone_button[powered=true] run setblock -1035 55 -1266 air

execute if block -997 52 -1209 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -997 52 -1209 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/10"]
execute if block -997 52 -1209 stone_button[powered=true] run setblock -997 52 -1209 air

execute if block -954 55 -1142 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -954 55 -1142 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/10"]
execute if block -954 55 -1142 stone_button[powered=true] run setblock -954 55 -1142 air

execute if block -933 61 -1055 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -933 61 -1055 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/10"]
execute if block -933 61 -1055 stone_button[powered=true] run setblock -933 61 -1055 air

execute if block -1018 47 -1099 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -1018 47 -1099 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/10"]
execute if block -1018 47 -1099 stone_button[powered=true] run setblock -1018 47 -1099 air

execute if block -1074 60 -1096 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -1074 60 -1096 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/10"]
execute if block -1074 60 -1096 stone_button[powered=true] run setblock -1074 60 -1096 air

execute if block -999 57 -1114 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -999 57 -1114 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/10"]
execute if block -999 57 -1114 stone_button[powered=true] run setblock -999 57 -1114 air

execute if block -1045 50 -1020 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -1045 50 -1020 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/10"]
execute if block -1045 50 -1020 stone_button[powered=true] run setblock -1045 50 -1020 air

execute if block -1081 49 -1104 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -1081 49 -1104 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/10"]
execute if block -1081 49 -1104 stone_button[powered=true] run setblock -1081 49 -1104 air

execute if block -965 51 -1097 stone_button[powered=true] run scoreboard players add $launchButton CmdData 1
execute if block -965 51 -1097 stone_button[powered=true] run tellraw @a[tag=queued] ["",{"score":{"objective":"CmdData","name":"$launchButton"},"color":"gold"},"/10"]
execute if block -965 51 -1097 stone_button[powered=true] run setblock -965 51 -1097 air

# If all buttons have been pressed, place a button to unlock the tower and start the countdown
execute if score $launchButton CmdData matches 10 run function mcm:maps/launchpad/rockettemp/launchcountdown
execute if score $launchButton CmdData matches 10 run setblock -984 57 -1102 stone_button[face=wall,facing=north]

#> Start launch
execute if block -1016 156 -1095 stone_button[powered=true] if score $launchControl CmdData matches 0 run tellraw @a[tag=queued] ["Go for launch!"]
execute if block -1016 156 -1095 stone_button[powered=true] if score $launchCountdown CmdData matches 1..1239 run scoreboard players set $launchControl CmdData 1
execute if score $launchCountdown CmdData matches 1240 if score $launchControl CmdData matches 1.. run scoreboard players set $launchControl CmdData 2
execute if score $launchCountdown CmdData matches 1240 if score $launchControl CmdData matches 0 run tellraw @a[tag=queued] ["Launch aborted!"]
execute if score $launchCountdown CmdData matches 1240 if score $launchControl CmdData matches 2 run tellraw @a[tag=queued] ["Liftoff!"]
execute if score $launchControl CmdData matches 2 as @a[predicate=mcm:bounding_boxes/rocket] run tag @s add launch_player
execute if score $launchControl CmdData matches 2 run function mcm:maps/launchpad/rockettemp/launchrocket

#> Landing
execute if score $launchControl CmdData matches 2 run function mcm:maps/launchpad/rockettemp/boosterland
execute if score $launchControl CmdData matches 2 run function mcm:maps/launchpad/rockettemp/capsuleland

#> Kill all players near rocket flames when active
execute if score $launchTime CmdData matches 1..220 as @a[predicate=mcm:bounding_boxes/launchpad_kill,tag=!spectating] at @s run function mcm:game/playerdeath
execute if score $launchTime CmdData matches 1..220 as @e[type=glow_squid,predicate=mcm:bounding_boxes/launchpad_kill] at @s run kill @s

#> Tunnel Elevators
function mcm:maps/launchpad/lc_elevator

#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/launchpad] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=random]

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 4 unless predicate mcm:bounding_boxes/launchpad run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 4 unless predicate mcm:bounding_boxes/launchpad run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0

#> Forklift license check
execute as @a[tag=forkliftlicense] if predicate mcm:bounding_boxes/forklift if block -1029 53 -1267 lever[powered=true] if score $forkliftup CmdData matches 0..1 run scoreboard players add $forkliftup CmdData 1
execute as @a[tag=forkliftlicense] at @s if predicate mcm:bounding_boxes/forklift if block -1029 53 -1267 lever[powered=true] if score $forkliftup CmdData matches 0..1 run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1 0.8 0
execute as @a[tag=forkliftlicense] at @s if predicate mcm:bounding_boxes/forklift if block -1029 53 -1267 lever[powered=true] if score $forkliftup CmdData matches 0..1 run playsound minecraft:entity.iron_golem.attack block @a ~ ~ ~ 1 0 0
execute as @a[tag=forkliftlicense] if predicate mcm:bounding_boxes/forklift if block -1029 53 -1267 lever[powered=true] if score $forkliftup CmdData matches 1 run place template mcm:forklift_up -1030 51 -1270
execute as @a[tag=queued,tag=!spectating,predicate=mcm:bounding_boxes/forklift_kill] if block -1029 53 -1267 lever[powered=true] if score $forkliftup CmdData matches 1 run scoreboard players set @s dead 1
execute as @a[tag=forkliftlicense] if predicate mcm:bounding_boxes/forklift if block -1029 53 -1267 lever[powered=false] if score $forkliftup CmdData matches 1..2 run scoreboard players remove $forkliftup CmdData 1
execute as @a[tag=forkliftlicense] at @s if predicate mcm:bounding_boxes/forklift if block -1029 53 -1267 lever[powered=false] if score $forkliftup CmdData matches 1..2 run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1 0.8 0
execute as @a[tag=forkliftlicense] at @s if predicate mcm:bounding_boxes/forklift if block -1029 53 -1267 lever[powered=false] if score $forkliftup CmdData matches 1..2 run playsound minecraft:entity.iron_golem.attack block @a ~ ~ ~ 1 0 0
execute as @a[tag=forkliftlicense] if predicate mcm:bounding_boxes/forklift if block -1029 53 -1267 lever[powered=false] if score $forkliftup CmdData matches 1 run place template mcm:forklift_down -1030 51 -1270
execute as @a[tag=queued,tag=!spectating,predicate=mcm:bounding_boxes/forklift_kill] if block -1029 53 -1267 lever[powered=false] if score $forkliftup CmdData matches 1 run scoreboard players set @s dead 1