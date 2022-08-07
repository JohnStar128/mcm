#> Set the start game grace period to 15 seconds
scoreboard players set $graceperiod CmdData 300

execute if score $selectedMap CmdData matches 1 run time set 6000
execute if score $selectedMap CmdData matches 2 run time set 6000
execute if score $selectedMap CmdData matches 3 run time set 12500
execute if score $selectedMap CmdData matches 4 run time set 9000
execute if score $selectedMap CmdData matches 4 run gamerule doDaylightCycle true

tellraw @a ["\n",{"text":"Assigning roles in 15 seconds...","color":"yellow"},"\n"]

#> Start 5 minute clock
execute if score $roundtimer GameRules matches 1 run scoreboard players set $gametimer CmdData 6000
execute if score $roundtimer GameRules matches 2 run scoreboard players set $gametimer CmdData 12000

#> Make queued players join ingame team (this allows friendly fire)
team join ingame_players @a[tag=queued]
team join murderers @a[tag=queued,tag=murderer]

#> Teleport players to spawnpoints within the map
execute as @a[team=!test4,tag=queued] at @s run function mcm:maps/tptospawn

#> Set everyone that's not on the developer team to adventure mode
gamemode adventure @a[team=!test4,tag=queued]

#> Set gamestate to playing ($gamestate CmdData=1)
scoreboard players set $gamestate CmdData 1