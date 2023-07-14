#> When the game is over, have a moment of respite before teleporting back to lobby

scoreboard players set $didGameEnd CmdData 1

execute if score $gameEndTimer CmdData matches 200 run tag @a remove WonLast

execute if score $gameEndTimer CmdData matches 200 run title @a clear
execute as @e[type=item,tag=KeyItem] at @s run data modify entity @s Owner set from entity @e[type=marker,tag=gameID,limit=1] UUID
execute if score $gameEndTimer CmdData matches 200 run function mcm:game/game_end_stats
execute if score $gameEndTimer CmdData matches 200 as @a[tag=queued] run scoreboard players reset @s game_stats
execute if score $gameEndTimer CmdData matches 200 as @a[tag=queued] run scoreboard players reset @s time_alive
execute if score $gameEndTimer CmdData matches 200 run tellraw @a {"translate":"mcm.game.lobby.return","color":"yellow"}
execute if score $gameEndTimer CmdData matches 200 if score $innocentWin CmdData matches 1 run tag @a[tag=innocent,gamemode=adventure,tag=!murderer] add WonLast
execute if score $gameEndTimer CmdData matches 200 if score $innocentWin CmdData matches 1 run title @a[tag=queued] title {"translate":"mcm.game.innocent.win","color":"green"}
execute if score $gameEndTimer CmdData matches 200 if score $murderWin CmdData matches 1 run tag @a[tag=murderer,gamemode=adventure] add WonLast
execute if score $gameEndTimer CmdData matches 200 if score $murderWin CmdData matches 1 run title @a[tag=queued] title {"translate":"mcm.game.murderer.win","color":"red"}
execute if score $gameEndTimer CmdData matches 200 if score $innocentWin CmdData matches 1 run playsound minecraft:ui.toast.challenge_complete ambient @a[tag=!murderer] ~ ~ ~ 1 1 1
execute if score $gameEndTimer CmdData matches 200 if score $innocentWin CmdData matches 1 run playsound minecraft:entity.wither.spawn ambient @a[tag=murderer] ~ ~ ~ 1 2 1
execute if score $gameEndTimer CmdData matches 200 if score $murderWin CmdData matches 1 run playsound minecraft:entity.wither.spawn ambient @a[tag=!murderer] ~ ~ ~ 1 2 1
execute if score $gameEndTimer CmdData matches 200 if score $murderWin CmdData matches 1 run playsound minecraft:ui.toast.challenge_complete ambient @a[tag=murderer] ~ ~ ~ 1 1 1
execute if score $gameEndTimer CmdData matches 200 run bossbar remove minecraft:gamedisplay

# disable friendly fire
execute if score $gameEndTimer CmdData matches 199 run team join nametags @a[tag=queued,team=!nametags]

scoreboard players remove $gameEndTimer CmdData 1

# teleport
execute if score $gameEndTimer CmdData matches ..1 run tp @a[team=!test4,tag=queued] -1 1 69 0 0
execute if score $gameEndTimer CmdData matches ..1 run tp @a[team=!test4,tag=spectating] -1 1 69 0 0

execute if score $gameEndTimer CmdData matches ..1 run time set 13850
execute if score $gameEndTimer CmdData matches ..1 run gamerule doDaylightCycle false

# gamemode
execute if score $gameEndTimer CmdData matches ..1 run gamemode adventure @a[team=!test4,tag=queued]
execute if score $gameEndTimer CmdData matches ..1 run gamemode adventure @a[team=!test4,tag=spectating]

# Reset the maps
execute if score $gameEndTimer CmdData matches ..1 run function mcm:maps/reset

# kill player skulls
execute if score $gameEndTimer CmdData matches ..1 run kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}}]

execute if score $gameEndTimer CmdData matches ..1 run effect clear @a

# remove spawnpoints
#execute if score $gameEndTimer CmdData matches ..1 as @e[type=marker,tag=!available,tag=map_marker] run function mcm:util/dealloc_entity
#execute if score $gameEndTimer CmdData matches ..1 as @e[type=marker,tag=PlayerSpawn] run tag @s remove Occupied
#execute if score $gameEndTimer CmdData matches ..1 as @e[type=marker,tag=sound_marker] run data merge entity @s {Tags:["available","sound_marker","map_marker"]}
execute if score $gameEndTimer CmdData matches ..1 run kill @e[tag=MapEntity]
execute if score $gameEndTimer CmdData matches ..1 run kill @e[type=item,tag=KeyItem]

# remove items
execute as @a[tag=queued] run clear @s
execute if score $gameEndTimer CmdData matches ..1 as @a[tag=queued] run function mcm:cosmetics/change_cosmetics
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players set $change_color CmdData 1
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove colored

# Stop leftover sound effects
execute if score $gameEndTimer CmdData matches ..1 as @a[tag=empty_hand] run stopsound @a[tag=queued]

# AutoQueue items and how to play book
clear @a[team=!test4] spyglass
execute if score $gameEndTimer CmdData matches ..1 as @a[tag=queued] run function mcm:lobby/give_lobby_items
execute if score $gameEndTimer CmdData matches ..1 as @a[tag=spectating] run function mcm:lobby/give_lobby_items

# clear old tags
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove murderer
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove innocent
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove gunner
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove spectating
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove usedAdrenaline
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove usedTeleport
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove queued
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove retrieved
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove shotGun
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove lostGun
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove gunner_stat
execute if score $gameEndTimer CmdData matches ..1 as @a[tag=hold_card1] run tag @s remove hold_card1
execute if score $gameEndTimer CmdData matches ..1 as @a[tag=hold_card2] run tag @s remove hold_card2
execute if score $gameEndTimer CmdData matches ..1 as @a[tag=empty_hand] run tag @s remove empty_hand


# remove death related scores
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a dead
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a canGetRetrieval
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a books
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players set $gametimer CmdData 0
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players set $scrapclock CmdData 0
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players set $pickedroles CmdData 0
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players set $start CmdData 0
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players set $startcountdown CmdData 200
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a knifeRetrieval 
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a throwKnife
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a scrapCount
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a canPickupGun
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a retrieval_delay

#> disable friendly fire
execute if score $gameEndTimer CmdData matches 199 run team join nametags @a[tag=queued,team=!nametags]

#> Send disable tips message
execute if score $gameEndTimer CmdData matches ..1 run tellraw @a[tag=!NoTip] {"translate":"mcm.tip.disable.option", "color":"dark_gray", "with":[{"translate":"mcm.tip.click.here","color":"dark_aqua","bold":"true","clickEvent":{"action":"run_command","value":"/trigger disableTips"}}]}

#> Count AFK people so they don't autoqueue
execute if score $gameEndTimer CmdData matches ..1 run tag @a add afk
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a[tag=afk] walk
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a[tag=afk] sprint
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a[tag=afk] crouch
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a[tag=afk] jump

#> Reset the lobby
execute if score $gameEndTimer CmdData matches ..1 run function mcm:lobby/lobby_reset

# set $gamestate to -1 (voting period)
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players set $gamestate CmdData -1
execute if score $gameEndTimer CmdData matches ..1 run function mcm:lobby/voting/start
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players set $gameEndTimer CmdData 200
execute if score $gamestate CmdData matches -1 run scoreboard players set $murderWin CmdData 0
execute if score $gamestate CmdData matches -1 run scoreboard players set $innocentWin CmdData 0
execute if score $gamestate CmdData matches -1 run scoreboard players set $didGameEnd CmdData 0

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 if score $library_flip CmdData matches 0 unless predicate mcm:bounding_boxes/library run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 if score $library_flip CmdData matches 0 unless predicate mcm:bounding_boxes/library run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 if score $library_flip CmdData matches 1 unless predicate mcm:bounding_boxes/library_flipped run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 if score $library_flip CmdData matches 1 unless predicate mcm:bounding_boxes/library_flipped run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 2 unless predicate mcm:bounding_boxes/airship run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 2 unless predicate mcm:bounding_boxes/airship run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 3 unless predicate mcm:bounding_boxes/vineyard run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 3 unless predicate mcm:bounding_boxes/vineyard run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 4 unless predicate mcm:bounding_boxes/launchpad run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 4 unless predicate mcm:bounding_boxes/launchpad run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 5 unless predicate mcm:bounding_boxes/cyberpunk run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 5 unless predicate mcm:bounding_boxes/cyberpunk run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 6 unless predicate mcm:bounding_boxes/riverboat run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 6 unless predicate mcm:bounding_boxes/riverboat run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
