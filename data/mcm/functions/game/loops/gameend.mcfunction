#> When the game is over, have a moment of respite before teleporting back to lobby

scoreboard players set $didGameEnd CmdData 1

execute if score $gameEndTimer CmdData matches 200 run title @a clear
execute as @e[type=item,tag=KeyItem] at @s run data modify entity @s Owner set from entity @e[type=marker,tag=gameID,limit=1] UUID
execute if score $gameEndTimer CmdData matches 200 run tellraw @a ["", {"text":"Returning to lobby in 10 seconds...","color":"yellow"}]
execute if score $gameEndTimer CmdData matches 200 if score $innocentWin CmdData matches 1 run tag @a[tag=innocent,gamemode=adventure,tag=!murderer] add WonLast
execute if score $gameEndTimer CmdData matches 200 if score $innocentWin CmdData matches 1 run title @a title ["", {"text":"Innocents win!","color":"green"}]
execute if score $gameEndTimer CmdData matches 200 if score $murderWin CmdData matches 1 run tag @a[tag=murderer,gamemode=adventure] add WonLast
execute if score $gameEndTimer CmdData matches 200 if score $murderWin CmdData matches 1 run title @a title ["", {"text":"Murderer wins!","color":"red"}]
execute if score $gameEndTimer CmdData matches 200 if score $innocentWin CmdData matches 1 run playsound minecraft:ui.toast.challenge_complete ambient @a ~ ~ ~ 1 1 1
execute if score $gameEndTimer CmdData matches 200 if score $murderWin CmdData matches 1 run playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 1 2 1

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
execute if score $gameEndTimer CmdData matches 199 as @a[tag=queued] run clear @s
execute if score $gameEndTimer CmdData matches 199 as @a[tag=queued] run function mcm:cosmetics/change_hat

# AutoQueue items and how to play book
execute if score $gameEndTimer CmdData matches ..1 run item replace entity @a[tag=queued,tag=autoqueue] hotbar.8 with warped_fungus_on_a_stick{CustomModelData:1235,NoDrop:1b,display:{Name:'[{"translate":"mcm.item.autoqueue.disable","italic":false,"color":"red"}]'}}
execute if score $gameEndTimer CmdData matches ..1 run item replace entity @a[tag=queued,tag=!autoqueue] hotbar.8 with warped_fungus_on_a_stick{CustomModelData:1234,NoDrop:1b,display:{Name:'[{"translate":"mcm.item.autoqueue.enable","italic":false,"color":"green"}]'}}
execute if score $gameEndTimer CmdData matches ..1 run item replace entity @a[tag=queued] hotbar.4 with written_book{NoDrop:1b,"pages":['["",{"text": "Table of Contents\\n\\n","color": "dark_gray","bold": true},{"text": "What is This?\\n","color": "dark_aqua","underlined": true,"clickEvent": {"action": "change_page","value": 2}},{"text": "How to Play\\n","color": "dark_aqua","underlined": true,"clickEvent": {"action": "change_page","value": 3}},{"text": "Game Options\\n","color": "dark_aqua","underlined": true,"clickEvent": {"action": "change_page","value": 17}},{"text": "Player Cosmetics\\n\\n\\n\\n","color": "dark_aqua","underlined": true,"clickEvent": {"action": "change_page","value": 19}},{"text": "Back to the Cinema","color": "dark_green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger stuck"}}]','["",{"text": "What is Backstabbed?\\n\\n","color": "dark_gray","bold": true},{"text": "Backstabbed! is a murder mystery minigame that aims to reimagine the PlayMCM version of Murder Mystery with our own little tweaks to modernize the game and just make things more enjoyable all around.\\n"}]','[{"text": "Roles\\n\\n","color": "dark_gray","bold": true},{"text": "The Innocent","color": "light_purple","bold": false},{"text": ": Starts with a ","color": "black","bold": false},{"text": "spyglass","color": "gold","bold": false},{"text": ", and on default settings, one ","color": "black","bold": false},{"text": "scrap","color": "gold","bold": false},{"text": ". Your goal is to survive until the timer runs out or the ","color": "black","bold": false},{"text": "murderer","color": "red","bold": false},{"text": " is killed. You can also collect 10 scrap to craft a ","color": "black","bold": false},{"text": "gun","color": "gold","bold": false},{"text": " to defend yourself.\\n","color": "black","bold": false}]','["",{"text": "The Gunner","color": "dark_aqua"},{"text": ": Starts with a ","color": "black"},{"text": "spyglass","color": "gold"},{"text": " and a ","color": "black"},{"text": "gun","color": "gold"},{"text": ". Your goal is to shoot the ","color": "black"},{"text": "murderer","color": "red"},{"text": ". Shooting the wrong player results in you dropping your gun and getting debuffed for awhile","color": "dark_red"},{"text": ", so don\'t make the wrong choice! Additionally, any scrap you pick up will disappear from your inventory.","color": "black"}]','["",{"text": "The Murderer","color": "red"},{"text": ": Starts with a ","color": "black"},{"text": "spyglass","color": "gold"},{"text": " , a ","color": "black"},{"text": "knife","color": "gold"},{"text": ", and various other tools. Your goal is to kill everybody before the clock runs out, and avoid getting shot. ","color": "black"},{"text": "If you are playing with multiple murderers, friendly fire is on. \\n\\n","color": "dark_red"},{"text": "Other tools are on the next pages ->","color": "dark_gray"}]','["",{"text": "As murderer, your tools include:\\n\\n","color": "dark_gray"},{"text": "Player Tracker","color": "gold"},{"text": ": Tracks the nearest innocent player and tells you how far you are from them, but not in which direction.\\n\\n","color": "black"},{"text": "Adrenaline","color": "gold"},{"text": ": Gives you a short burst of speed and jump boost","color": "black"},{"text": " (One Time Use).\\n","color": "dark_red"}]','["",{"text": "Player Teleporter","color": "gold"},{"text": ": Teleports all innocent players back to random map spawnpoints ","color": "black"},{"text": " (One Time Use).\\n\\n","color": "dark_red"},{"text": "Scrap","color": "gold"},{"text": ": The murderer can also collect scrap, and starts with one.","color": "black"},{"text": " Collecting 10 scrap will give you an additional knife recall charge.\\n","color": "dark_green"}]','["",{"text": "Knife Recall","color": "gold"},{"text": ": Only appears when you throw your knife. You can use it to recall the knife if you are unable to pick it back up ","color": "black"},{"text": "(One Time Use, can be refilled but does not stack).\\n","color": "dark_red"}]','["",{"text": "Other Considerations\\n\\n","color": "dark_gray","bold": true},{"text": "We recommend that living players be allowed to discuss amongst themselves and identify the murderer if observed. This however is not enforced by the game and is only a suggestion.\\n","color": "black"}]','["",{"text": "We don\'t recommend turning on hitboxes.","color": "dark_red"},{"text": " While this may make it easier to find players, we find it takes away from the experience.\\n\\nIf custom sounds are too loud or quiet, you can adjust the ","color": "black"},{"text": " \'blocks\' ","color": "dark_gray"},{"text": "category of your volume settings.\\n","color": "black"}]','["",{"text": "Voting and Queueing\\n\\n","color": "dark_gray","bold": true},{"text": "Upon logging in to the server, you will be dropped in the ","color": "black"},{"text": "Cinema","color": "dark_purple"},{"text": ", which is the hub for voting for maps and queueing.\\n","color": "black"}]','["",{"text": "Head to the left to view the ","color": "black"},{"text": "movie posters","color": "dark_purple"},{"text": " for each map. ","color": "black"},{"text": "Right clicking on a poster ","color": "dark_purple"},{"text": "will let you vote for that map provided that there is no map selected for a round yet.\\n","color": "black"}]','["",{"text": "Once voting is done, enter the ","color": "black"},{"text": "theater room","color": "dark_purple"},{"text": " to the right of the posters and ","color": "black"},{"text": "seat yourself","color": "dark_purple"},{"text": " to queue up. You\'ll be wearing ","color": "black"},{"text": "white 3D glasses","color": "dark_purple"},{"text": " if you are queued.\\n","color": "black"}]','["",{"text": "Alternatively, right clicking your ","color": "black"},{"text": "ticket","color": "dark_purple"},{"text": " will enable your ","color": "black"},{"text": "AutoQueue","color": "dark_purple"},{"text": ", which will automatically put you in the queue for every game. Right click your","color": "black"},{"text": " ticket again","color": "dark_purple"},{"text": " to toggle off.\\n","color": "black"}]','["",{"text": "If ","color": "black"},{"text": "AutoStart","color": "light_purple"},{"text": " is enabled, the game will automatically start once a map is selected and at least 4 players are queued. Otherwise, you can start the game by right clicking the ","color": "black"},{"text": "Usher.\\n","color": "dark_purple"}]','["",{"text": "To ","color": "black"},{"text": "spectate","color": "dark_purple"},{"text": " a game, head to the end of the hall with the movie posters and ","color": "black"},{"text": "enter the elevator.","color": "dark_purple"},{"text": " Pressing the up button will bring you the second floor, where you can take a","color": "black"},{"text": " seat in the balcony","color": "dark_purple"},{"text": " above the theater to spectate.\\n","color": "black"}]','["",{"text": "Game Options\\n","color": "dark_gray","bold": true},{"text": "Auto Start Game\\n","color": "black"},{"text": "[On] ","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 9"}},{"text": "[Off]\\n\\n","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 10"}},{"text": "Number of Murderers\\n","color": "black"},{"text": "[1] ","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 3"}},{"text": "[2] ","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 4"}},{"text": "[Smart]\\n\\n","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 11"},"hoverEvent": {"action": "show_text","contents": {"text": "Automatically determine whether \\nto use 1 or 2 murderers. \\nUses 1 if there are 7 or less \\nplayers, and 2 otherwise."}}},{"text": "Round Timer Length\\n","color": "black"},{"text": "[5 min] ","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 1"}},{"text": "[10 min]\\n\\n","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 2"}},{"text": "Map Animations\\n","color": "black"},{"text": "[On] ","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 7"}},{"text": "[Off]\\n\\n","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 8"}}]','["",{"text": "Start with Scrap\\n","color": "black"},{"text": "[Yes] ","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 5"}},{"text": "[No]\\n\\n","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 6"}}]','["",{"text": "Player Cosmetics\\n\\n","color": "dark_gray","bold": true},{"text": "[Equip Rainbow Hat]\\n","color": "dark_green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger hatchange set 1"}},{"text": "[Equip Lance\'s Hat]\\n","color": "dark_green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger hatchange set 2"}},{"text": "[Equip Space Helmet]\\n","color": "dark_green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger hatchange set 3"}},{"text": "[Equip 3D Glasses (Dark)]\\n","color": "dark_green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger hatchange set 4"}},{"text": "[Remove Hat]","color": "dark_green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger hatchange set -1"}}]'],author:"Bagel Buddies",title:"How to Play","display":{Name:'[ {"text":"How to Play","italic":false,"color":"green"} ]' } }

# clear old tags
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove murderer
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove murderer1
execute if score $gameEndTimer CmdData matches ..1 run tag @a remove murderer2
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

# disable friendly fire
team join nametags @a[tag=queued,team=!nametags]

#> re-autoqueue people
execute if score $gameEndTimer CmdData matches ..1 as @a[tag=autoqueue] at @s run function mcm:lobby/queueing/autoqueue

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