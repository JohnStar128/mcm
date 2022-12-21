# $launchTime is still gonna be increasing from the launchrocket function
execute if score $launchTime CmdData matches 400 as @a[tag=launch_player,tag=!spectating] at @s run effect give @s minecraft:darkness 5 5 true
execute if score $launchTime CmdData matches 401 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~-93 ~147 ~149
execute if score $launchTime CmdData matches 400 run place template minecraft:sensibly_named_landing_frame -1122 174 -963

execute if score $launchTime CmdData matches 421 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-19 ~
execute if score $launchTime CmdData matches 420 run place template minecraft:sensibly_named_landing_frame -1122 155 -963

execute if score $launchTime CmdData matches 441 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-10 ~
execute if score $launchTime CmdData matches 440 run place template minecraft:sensibly_named_landing_frame -1122 145 -963

execute if score $launchTime CmdData matches 461 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-10 ~
execute if score $launchTime CmdData matches 460 run place template minecraft:sensibly_named_landing_frame -1122 135 -963

execute if score $launchTime CmdData matches 481 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-10 ~
execute if score $launchTime CmdData matches 480 run place template minecraft:sensibly_named_landing_frame -1122 125 -963

execute if score $launchTime CmdData matches 501 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-10 ~
execute if score $launchTime CmdData matches 500 run place template minecraft:sensibly_named_landing_frame -1122 115 -963

execute if score $launchTime CmdData matches 521 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-10 ~
execute if score $launchTime CmdData matches 520 run place template minecraft:sensibly_named_landing_frame -1122 105 -963

execute if score $launchTime CmdData matches 541 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-10 ~
execute if score $launchTime CmdData matches 540 run place template minecraft:sensibly_named_landing_frame -1122 95 -963

execute if score $launchTime CmdData matches 561 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-10 ~
execute if score $launchTime CmdData matches 560 run place template minecraft:sensibly_named_landing_frame -1122 85 -963

execute if score $launchTime CmdData matches 581 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-10 ~
execute if score $launchTime CmdData matches 580 run place template minecraft:sensibly_named_landing_frame -1122 75 -963

execute if score $launchTime CmdData matches 601 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-10 ~
execute if score $launchTime CmdData matches 600 run place template minecraft:sensibly_named_landing_frame -1122 65 -963

execute if score $launchTime CmdData matches 621 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-5 ~
execute if score $launchTime CmdData matches 620 run place template minecraft:sensibly_named_landing_frame -1122 60 -963

execute if score $launchTime CmdData matches 641 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-5 ~
execute if score $launchTime CmdData matches 640 run place template minecraft:sensibly_named_landing_frame -1122 55 -963

execute if score $launchTime CmdData matches 661 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-5 ~
execute if score $launchTime CmdData matches 660 run place template minecraft:sensibly_named_landing_frame -1122 50 -963

execute if score $launchTime CmdData matches 680 run fill -1122 73 -962 -1096 76 -934 air
execute if score $launchTime CmdData matches 681 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-4 ~
execute if score $launchTime CmdData matches 681 as @a[tag=launch_player,tag=!spectating] at @s run playsound minecraft:entity.player.splash.high_speed block @s ~ ~ ~ 5 0.5
execute if score $launchTime CmdData matches 680 run place template minecraft:crewdragonlanding1 -1122 46 -963
execute if score $launchTime CmdData matches 700 run place template minecraft:crewdragonlanding2 -1122 46 -963

execute if score $launchTime CmdData matches 720 run place template minecraft:crewdragonlanded -1122 46 -963
execute if score $launchTime CmdData matches 620 as @a[tag=launch_player,tag=!spectating] at @s run effect give @s minecraft:darkness 5 5 true
execute if score $launchTime CmdData matches 720 as @a[tag=launch_player,tag=!spectating] at @s run function mcm:maps/tptospawn
