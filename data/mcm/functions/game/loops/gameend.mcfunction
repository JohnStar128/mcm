#> When the game is over, have a moment of respite before teleporting back to lobby

scoreboard players set $didGameEnd CmdData 1

execute if score $gameEndTimer CmdData matches 200 run title @a clear
execute as @e[type=item,tag=KeyItem] at @s run data modify entity @s Owner set from entity @e[type=marker,tag=gameID,limit=1] UUID
execute if score $gameEndTimer CmdData matches 200 run tellraw @a ["", {"text":"Returning to lobby in 10 seconds...","color":"yellow"}]
execute if score $gameEndTimer CmdData matches 200 if score $innocentWin CmdData matches 1 run tag @a[tag=innocent,gamemode=adventure,tag=!murderer] add WonLast
execute if score $gameEndTimer CmdData matches 200 if score $innocentWin CmdData matches 1 run title @a title ["", {"text":"Innocents win!","color":"green"}]
execute if score $gameEndTimer CmdData matches 200 if score $murderWin CmdData matches 1 run tag @a[tag=murderer,gamemode=adventure] add WonLast
execute if score $gameEndTimer CmdData matches 200 if score $murderWin CmdData matches 1 run title @a title ["", {"text":"Murderer wins!","color":"red"}]
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

# kill player skulls
execute if score $gameEndTimer CmdData matches ..1 run kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}}]

execute if score $gameEndTimer CmdData matches ..1 run effect clear @a

# remove spawnpoints
execute if score $gameEndTimer CmdData matches ..1 as @e[type=marker,tag=!available,tag=map_marker] run function mcm:util/dealloc_entity
execute if score $gameEndTimer CmdData matches ..1 as @e[type=marker,tag=PlayerSpawn] run tag @s remove Occupied
execute if score $gameEndTimer CmdData matches ..1 as @e[type=marker,tag=sound_marker] run data merge entity @s {Tags:["available","sound_marker","map_marker"]}
execute if score $gameEndTimer CmdData matches ..1 run kill @e[tag=MapEntity]
execute if score $gameEndTimer CmdData matches ..1 run kill @e[type=item,tag=KeyItem]

# remove items
execute as @a[tag=queued] run clear @s
execute if score $gameEndTimer CmdData matches ..1 as @a[tag=queued] run function mcm:cosmetics/change_cosmetics

# AutoQueue items and how to play book
execute if score $gameEndTimer CmdData matches ..1 run item replace entity @a[tag=queued,tag=autoqueue] hotbar.8 with warped_fungus_on_a_stick{CustomModelData:1235,NoDrop:1b,Autoqueue:1b,display:{Name:'[{"translate":"mcm.item.autoqueue.disable","italic":false,"color":"red"}]'}}
execute if score $gameEndTimer CmdData matches ..1 run item replace entity @a[tag=queued,tag=!autoqueue] hotbar.8 with warped_fungus_on_a_stick{CustomModelData:1234,NoDrop:1b,Autoqueue:1b,display:{Name:'[{"translate":"mcm.item.autoqueue.enable","italic":false,"color":"green"}]'}}
execute if score $gameEndTimer CmdData matches ..1 run item replace entity @a[tag=queued] hotbar.4 with written_book{HowToPlay:1b,NoDrop:1b}
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

# Reset the maps
execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 1 run function mcm:maps/library/reset
execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 2 run function mcm:maps/airship/reset
execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/reset
execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 4 run function mcm:maps/launchpad/reset

#give popcorn
execute if score $gameEndTimer CmdData matches ..1 run item replace entity @a[tag=WonLast] hotbar.0 with warped_fungus_on_a_stick{NoDrop:1b,CustomModelData:1114,display:{Name:'[{"text":"Victory Popcorn","italic":false,"color":"yellow"}]',Lore:['[{"text":"","italic":false}]','[{"text":"The snack that\'s worth dying for!","italic":true,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:3,HideFlags:3}
execute if score $gameEndTimer CmdData matches ..1 run tag @a[tag=WonLast] remove WonLast

# reset map specific stuff that changes during the game
execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 1 run function mcm:maps/library/reset
execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 2 run function mcm:maps/airship/reset
execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/reset
execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 4 run function mcm:maps/launchpad/reset

#> Count AFK people so they don't autoqueue
execute if score $gameEndTimer CmdData matches ..1 run tag @a add afk
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a[tag=afk] walk
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a[tag=afk] sprint
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a[tag=afk] crouch
execute if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a[tag=afk] jump

#> Reset the lobby
execute if score $gameEndTimer CmdData matches ..1 run function mcm:lobby/lobby_reset

# set $gamestate to 0 (pregame, post vote)
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
