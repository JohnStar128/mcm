#> Set the start game grace period to 15 seconds
scoreboard players set $graceperiod CmdData 300

time set 6000

tellraw @a ["\n",{"text":"Assigning roles in 15 seconds...","color":"yellow"},"\n"]

#> Start 5 minute clock
execute if score $roundtimer GameRules matches 1 run scoreboard players set $gametimer CmdData 6000
execute if score $roundtimer GameRules matches 2 run scoreboard players set $gametimer CmdData 12000

#> Turn friendly fire off (legacy)
# team modify nametags friendlyFire false

#> Make queued players join ingame team (this allows friendly fire)
team join ingame_players @a[tag=queued]

#> Teleport players to spawnpoints within the map
execute as @a[team=!test4,tag=queued] at @s run function mcm:maps/library/tptospawn

#> Set everyone that's not on the developer team to adventure mode
gamemode adventure @a[team=!test4,tag=queued]

#> Set gamestate to playing ($gamestate CmdData=1)
scoreboard players set $gamestate CmdData 1