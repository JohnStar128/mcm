scoreboard players add $launchCountdown CmdData 1
execute if score $launchCountdown CmdData matches 1 run tellraw @a[tag=queued] ["Countdown started! The elevator is now open!"]
execute if score $launchCountdown CmdData matches 40..1260 run title @a[tag=queued] actionbar ["", {"text":"=-> T-","color":"red"},{"score":{"objective":"CmdData","name":"$launchTitle"},"color":"gold"}, {"text":" <-=","color":"red"}]
execute if score $launchCountdown CmdData matches 900 run playsound minecraft:launchbuildup block @a -1015 56 -1096 10 1 1

execute if score $launchCountdown CmdData matches 40 run place template minecraft:countdown30 -1061 51 -1061
execute if score $launchCountdown CmdData matches 40 run scoreboard players set $launchTitle CmdData 30
execute if score $launchCountdown CmdData matches 80 run place template minecraft:countdown29 -1061 51 -1061
execute if score $launchCountdown CmdData matches 80 run scoreboard players set $launchTitle CmdData 29
execute if score $launchCountdown CmdData matches 120 run place template minecraft:countdown28 -1061 51 -1061
execute if score $launchCountdown CmdData matches 120 run scoreboard players set $launchTitle CmdData 28
execute if score $launchCountdown CmdData matches 160 run place template minecraft:countdown27 -1061 51 -1061
execute if score $launchCountdown CmdData matches 160 run scoreboard players set $launchTitle CmdData 27
execute if score $launchCountdown CmdData matches 200 run place template minecraft:countdown26 -1061 51 -1061
execute if score $launchCountdown CmdData matches 200 run scoreboard players set $launchTitle CmdData 26
execute if score $launchCountdown CmdData matches 240 run place template minecraft:countdown25 -1061 51 -1061
execute if score $launchCountdown CmdData matches 240 run scoreboard players set $launchTitle CmdData 25
execute if score $launchCountdown CmdData matches 280 run place template minecraft:countdown24 -1061 51 -1061
execute if score $launchCountdown CmdData matches 280 run scoreboard players set $launchTitle CmdData 24
execute if score $launchCountdown CmdData matches 320 run place template minecraft:countdown23 -1061 51 -1061
execute if score $launchCountdown CmdData matches 320 run scoreboard players set $launchTitle CmdData 23
execute if score $launchCountdown CmdData matches 360 run place template minecraft:countdown22 -1061 51 -1061
execute if score $launchCountdown CmdData matches 360 run scoreboard players set $launchTitle CmdData 22
execute if score $launchCountdown CmdData matches 400 run place template minecraft:countdown21 -1061 51 -1061
execute if score $launchCountdown CmdData matches 400 run scoreboard players set $launchTitle CmdData 21
execute if score $launchCountdown CmdData matches 440 run place template minecraft:countdown20 -1061 51 -1061
execute if score $launchCountdown CmdData matches 440 run scoreboard players set $launchTitle CmdData 20
execute if score $launchCountdown CmdData matches 480 run place template minecraft:countdown19 -1061 51 -1061
execute if score $launchCountdown CmdData matches 480 run scoreboard players set $launchTitle CmdData 19
execute if score $launchCountdown CmdData matches 520 run place template minecraft:countdown18 -1061 51 -1061
execute if score $launchCountdown CmdData matches 520 run scoreboard players set $launchTitle CmdData 18
execute if score $launchCountdown CmdData matches 560 run place template minecraft:countdown17 -1061 51 -1061
execute if score $launchCountdown CmdData matches 560 run scoreboard players set $launchTitle CmdData 17
execute if score $launchCountdown CmdData matches 600 run place template minecraft:countdown16 -1061 51 -1061
execute if score $launchCountdown CmdData matches 600 run scoreboard players set $launchTitle CmdData 16
execute if score $launchCountdown CmdData matches 640 run place template minecraft:countdown15 -1061 51 -1061
execute if score $launchCountdown CmdData matches 640 run scoreboard players set $launchTitle CmdData 15
execute if score $launchCountdown CmdData matches 680 run place template minecraft:countdown14 -1061 51 -1061
execute if score $launchCountdown CmdData matches 680 run scoreboard players set $launchTitle CmdData 14
execute if score $launchCountdown CmdData matches 720 run place template minecraft:countdown13 -1061 51 -1061
execute if score $launchCountdown CmdData matches 720 run scoreboard players set $launchTitle CmdData 13
execute if score $launchCountdown CmdData matches 760 run place template minecraft:countdown12 -1061 51 -1061
execute if score $launchCountdown CmdData matches 760 run scoreboard players set $launchTitle CmdData 12
execute if score $launchCountdown CmdData matches 800 run place template minecraft:countdown11 -1061 51 -1061
execute if score $launchCountdown CmdData matches 800 run scoreboard players set $launchTitle CmdData 11
execute if score $launchCountdown CmdData matches 840 run place template minecraft:countdown10 -1061 51 -1061
execute if score $launchCountdown CmdData matches 840 run scoreboard players set $launchTitle CmdData 10
execute if score $launchCountdown CmdData matches 880 run place template minecraft:countdown9 -1061 51 -1061
execute if score $launchCountdown CmdData matches 880 run scoreboard players set $launchTitle CmdData 9
execute if score $launchCountdown CmdData matches 920 run place template minecraft:countdown8 -1061 51 -1061
execute if score $launchCountdown CmdData matches 920 run scoreboard players set $launchTitle CmdData 8
execute if score $launchCountdown CmdData matches 960 run place template minecraft:countdown7 -1061 51 -1061
execute if score $launchCountdown CmdData matches 960 run scoreboard players set $launchTitle CmdData 7
execute if score $launchCountdown CmdData matches 1000 run place template minecraft:countdown6 -1061 51 -1061
execute if score $launchCountdown CmdData matches 1000 run scoreboard players set $launchTitle CmdData 6
execute if score $launchCountdown CmdData matches 1040 run place template minecraft:countdown5 -1061 51 -1061
execute if score $launchCountdown CmdData matches 1040 run scoreboard players set $launchTitle CmdData 5
execute if score $launchCountdown CmdData matches 1080 run place template minecraft:countdown4 -1061 51 -1061
execute if score $launchCountdown CmdData matches 1080 run scoreboard players set $launchTitle CmdData 4
execute if score $launchCountdown CmdData matches 1120 run place template minecraft:countdown3 -1061 51 -1061
execute if score $launchCountdown CmdData matches 1120 run scoreboard players set $launchTitle CmdData 3
execute if score $launchCountdown CmdData matches 1160 run place template minecraft:countdown2 -1061 51 -1061
execute if score $launchCountdown CmdData matches 1160 run scoreboard players set $launchTitle CmdData 2
execute if score $launchCountdown CmdData matches 1200 run place template minecraft:countdown1 -1061 51 -1061
execute if score $launchCountdown CmdData matches 1200 run scoreboard players set $launchTitle CmdData 1
execute if score $launchCountdown CmdData matches 1240 run place template minecraft:countdown0 -1061 51 -1061
execute if score $launchCountdown CmdData matches 1240 run scoreboard players set $launchTitle CmdData 0