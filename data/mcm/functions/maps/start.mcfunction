#> Set the start game grace period to 15 seconds
scoreboard players set $graceperiod CmdData 300

#> Clear credits music if players are still there but autoqueue
stopsound @a master

execute if score $selectedMap CmdData matches 1 run time set 6000
execute if score $selectedMap CmdData matches 2 run time set 6000
execute if score $selectedMap CmdData matches 3 run time set 12500
execute if score $selectedMap CmdData matches 4 run time set 9000
execute if score $selectedMap CmdData matches 4 run gamerule doDaylightCycle true
execute if score $selectedMap CmdData matches 5 run time set midnight
execute if score $selectedMap CmdData matches 6 run time set 6000
execute if score $selectedMap CmdData matches 7 run time set 12500
execute if score $selectedMap CmdData matches 8 run time set 6000
execute if score $selectedMap CmdData matches 9 run time set 12500

tellraw @a ["\n",{"translate":"mcm.game.role.assign","color":"yellow"},"\n"]

#> Make queued players join ingame team (this allows friendly fire)
team join ingame_players @a[team=nametags,tag=queued]

#> Teleport players to spawnpoints within the map
execute as @a[team=!test4,tag=queued] at @s run function mcm:maps/tptospawn

#> Set everyone that's not on the developer team to adventure mode
gamemode adventure @a[team=!test4,tag=queued]

#> Set gamestate to playing ($gamestate CmdData=1)
scoreboard players set $gamestate CmdData 1