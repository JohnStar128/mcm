#> Leave game stuff

#> Lobby team
team join nametags @s
#> in case they logged out in spectator
gamemode adventure @s
#> Teleport to lobby
tp @s -1 1 69 0 0
#> Clear any game effects (normal ones get re-applied)
effect clear @s

# Tags
tag @s remove WonLast
tag @s remove innocent
tag @s remove gunner
tag @s remove murderer
tag @s remove spectating
tag @s remove shotGun
tag @s remove retrieved
tag @s remove queued
tag @s remove lostGun
tag @s remove HoldKnife
tag @s remove viewbossbar
tag @s remove Voted
tag @s remove testing_range
tag @s remove launch_player
tag @s remove autoqueue

#> Print game rules if voting or queueing
execute if score $gamestate CmdData matches 0..1 run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~
execute if score $gamestate CmdData matches 0..1 run function mcm:lobby/print_game_rules

#> Revoke advancements players shouldn't have but failsafe anyways
advancement revoke @s only mcm:hit_detection/gun_hit
advancement revoke @s only mcm:hit_detection/knife_hit
advancement revoke @s only mcm:hit_detection/knife_melee_hit
advancement revoke @s only mcm:hit_detection/innocent_killed
advancement revoke @s only mcm:hit_detection/killed_player
advancement revoke @s only mcm:item_counts/books
advancement revoke @s only mcm:item_counts/scrap
advancement revoke @s only mcm:lobby/arcade_credits
advancement revoke @s only mcm:lobby/arcade_out_of_order
advancement revoke @s only mcm:lobby/arcade_parkour
advancement revoke @s only mcm:lobby/arcade_tutorial
advancement revoke @s only mcm:lobby/start_credits
advancement revoke @s only mcm:lobby/start
advancement revoke @s only mcm:lobby/testing_range_gun
advancement revoke @s only mcm:map_votes/map_random
advancement revoke @s only mcm:map_votes/map1
advancement revoke @s only mcm:map_votes/map2
advancement revoke @s only mcm:map_votes/map3
advancement revoke @s only mcm:map_votes/map4
advancement revoke @s only mcm:map_votes/map5
advancement revoke @s only mcm:map_votes/map6

# Scores
scoreboard players reset @s flipmap
scoreboard players reset @s books
scoreboard players reset @s leave
scoreboard players set @s autoqueue_delay 0
scoreboard players operation @s gameID = $gameID CmdData
scoreboard players reset @s droppedGun
scoreboard players reset @s knifeRetrieval
scoreboard players reset @s knifeRetrieve
scoreboard players reset @s stuck
scoreboard players reset @s teleporterClick
scoreboard players reset @s droppedBook
scoreboard players reset @s droppedScrap
scoreboard players reset @s popcorndelay
scoreboard players reset @s launchButton
scoreboard players reset @s droppedRetrieve
scoreboard players reset @s dead
scoreboard players reset @s autoqueue
scoreboard players reset @s hatchange
scoreboard players reset @s scrapCount
scoreboard players reset @s canPickupGun
scoreboard players reset @s deferred_queue
scoreboard players reset @s gundist
scoreboard players reset @s gunclick
scoreboard players reset @s canGetRetrieval
scoreboard players reset @s carrotClick
scoreboard players reset @s RainbowHat
execute store result score @s playerUUID run data get entity @s UUID[0]
scoreboard players reset @s droppedSpyglass
scoreboard players reset @s adrenalineClick
scoreboard players reset @s RingBell
scoreboard players reset @s current_vote

#> Items
clear @s
function mcm:cosmetics/change_cosmetics
execute run item replace entity @s hotbar.8 with warped_fungus_on_a_stick{CustomModelData:1234,NoDrop:1b,display:{Name:'[{"translate":"mcm.item.autoqueue.enable","italic":false,"color":"green"}]'}}
#> How to play book
item replace entity @s hotbar.4 with written_book{NoDrop:1b,"pages":['["",{"text": "Table of Contents\\n\\n","color": "dark_gray","bold": true},{"text": "What is This?\\n","color": "dark_aqua","underlined": true,"clickEvent": {"action": "change_page","value": 2}},{"text": "How to Play\\n","color": "dark_aqua","underlined": true,"clickEvent": {"action": "change_page","value": 3}},{"text": "Game Options\\n","color": "dark_aqua","underlined": true,"clickEvent": {"action": "change_page","value": 17}},{"text": "Player Cosmetics\\n\\n\\n\\n","color": "dark_aqua","underlined": true,"clickEvent": {"action": "change_page","value": 19}},{"text": "Back to the Cinema","color": "dark_green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger stuck"}}]','["",{"text": "What is Backstabbed?\\n\\n","color": "dark_gray","bold": true},{"text": "Backstabbed! is a murder mystery minigame that aims to reimagine the PlayMCM version of Murder Mystery with our own little tweaks to modernize the game and just make things more enjoyable all around.\\n"}]','[{"text": "Roles\\n\\n","color": "dark_gray","bold": true},{"text": "The Innocent","color": "light_purple","bold": false},{"text": ": Starts with a ","color": "black","bold": false},{"text": "spyglass","color": "gold","bold": false},{"text": ", and on default settings, one ","color": "black","bold": false},{"text": "scrap","color": "gold","bold": false},{"text": ". Your goal is to survive until the timer runs out or the ","color": "black","bold": false},{"text": "murderer","color": "red","bold": false},{"text": " is killed. You can also collect 10 scrap to craft a ","color": "black","bold": false},{"text": "gun","color": "gold","bold": false},{"text": " to defend yourself.\\n","color": "black","bold": false}]','["",{"text": "The Gunner","color": "dark_aqua"},{"text": ": Starts with a ","color": "black"},{"text": "spyglass","color": "gold"},{"text": " and a ","color": "black"},{"text": "gun","color": "gold"},{"text": ". Your goal is to shoot the ","color": "black"},{"text": "murderer","color": "red"},{"text": ". Shooting the wrong player results in you dropping your gun and getting debuffed for awhile","color": "dark_red"},{"text": ", so don\'t make the wrong choice! Additionally, any scrap you pick up will disappear from your inventory.","color": "black"}]','["",{"text": "The Murderer","color": "red"},{"text": ": Starts with a ","color": "black"},{"text": "spyglass","color": "gold"},{"text": " , a ","color": "black"},{"text": "knife","color": "gold"},{"text": ", and various other tools. Your goal is to kill everybody before the clock runs out, and avoid getting shot. ","color": "black"},{"text": "If you are playing with multiple murderers, friendly fire is on. \\n\\n","color": "dark_red"},{"text": "Other tools are on the next pages ->","color": "dark_gray"}]','["",{"text": "As murderer, your tools include:\\n\\n","color": "dark_gray"},{"text": "Player Tracker","color": "gold"},{"text": ": Tracks the nearest innocent player and tells you how far you are from them, but not in which direction.\\n\\n","color": "black"},{"text": "Adrenaline","color": "gold"},{"text": ": Gives you a short burst of speed and jump boost","color": "black"},{"text": " (One Time Use).\\n","color": "dark_red"}]','["",{"text": "Player Teleporter","color": "gold"},{"text": ": Teleports all innocent players back to random map spawnpoints ","color": "black"},{"text": " (One Time Use).\\n\\n","color": "dark_red"},{"text": "Scrap","color": "gold"},{"text": ": The murderer can also collect scrap, and starts with one.","color": "black"},{"text": " Collecting 10 scrap will give you an additional knife recall charge.\\n","color": "dark_green"}]','["",{"text": "Knife Recall","color": "gold"},{"text": ": Only appears when you throw your knife. You can use it to recall the knife if you are unable to pick it back up ","color": "black"},{"text": "(One Time Use, can be refilled but does not stack).\\n","color": "dark_red"}]','["",{"text": "Other Considerations\\n\\n","color": "dark_gray","bold": true},{"text": "We recommend that living players be allowed to discuss amongst themselves and identify the murderer if observed. This however is not enforced by the game and is only a suggestion.\\n","color": "black"}]','["",{"text": "We don\'t recommend turning on hitboxes.","color": "dark_red"},{"text": " While this may make it easier to find players, we find it takes away from the experience.\\n\\nIf custom sounds are too loud or quiet, you can adjust the ","color": "black"},{"text": " \'blocks\' ","color": "dark_gray"},{"text": "category of your volume settings.\\n","color": "black"}]','["",{"text": "Voting and Queueing\\n\\n","color": "dark_gray","bold": true},{"text": "Upon logging in to the server, you will be dropped in the ","color": "black"},{"text": "Cinema","color": "dark_purple"},{"text": ", which is the hub for voting for maps and queueing.\\n","color": "black"}]','["",{"text": "Head to the left to view the ","color": "black"},{"text": "movie posters","color": "dark_purple"},{"text": " for each map. ","color": "black"},{"text": "Right clicking on a poster ","color": "dark_purple"},{"text": "will let you vote for that map provided that there is no map selected for a round yet.\\n","color": "black"}]','["",{"text": "Once voting is done, enter the ","color": "black"},{"text": "theater room","color": "dark_purple"},{"text": " to the right of the posters and ","color": "black"},{"text": "seat yourself","color": "dark_purple"},{"text": " to queue up. You\'ll be wearing ","color": "black"},{"text": "white 3D glasses","color": "dark_purple"},{"text": " if you are queued.\\n","color": "black"}]','["",{"text": "Alternatively, right clicking your ","color": "black"},{"text": "ticket","color": "dark_purple"},{"text": " will enable your ","color": "black"},{"text": "AutoQueue","color": "dark_purple"},{"text": ", which will automatically put you in the queue for every game. Right click your","color": "black"},{"text": " ticket again","color": "dark_purple"},{"text": " to toggle off.\\n","color": "black"}]','["",{"text": "If ","color": "black"},{"text": "AutoStart","color": "light_purple"},{"text": " is enabled, the game will automatically start once a map is selected and at least 4 players are queued. Otherwise, you can start the game by right clicking the ","color": "black"},{"text": "Usher.\\n","color": "dark_purple"}]','["",{"text": "To ","color": "black"},{"text": "spectate","color": "dark_purple"},{"text": " a game, head to the end of the hall with the movie posters and ","color": "black"},{"text": "enter the elevator.","color": "dark_purple"},{"text": " Pressing the up button will bring you the second floor, where you can take a","color": "black"},{"text": " seat in the balcony","color": "dark_purple"},{"text": " above the theater to spectate.\\n","color": "black"}]','["",{"text": "Game Options\\n","color": "dark_gray","bold": true},{"text": "Auto Start Game\\n","color": "black"},{"text": "[On] ","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 9"}},{"text": "[Off]\\n\\n","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 10"}},{"text": "Number of Murderers\\n","color": "black"},{"text": "[1] ","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 3"}},{"text": "[2] ","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 4"}},{"text": "[Smart]\\n\\n","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 11"},"hoverEvent": {"action": "show_text","contents": {"text": "Automatically determine whether \\nto use 1 or 2 murderers. \\nUses 1 if there are 7 or less \\nplayers, and 2 otherwise."}}},{"text": "Round Timer Length\\n","color": "black"},{"text": "[5 min] ","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 1"}},{"text": "[10 min]\\n\\n","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 2"}},{"text": "Map Animations\\n","color": "black"},{"text": "[On] ","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 7"}},{"text": "[Off]\\n\\n","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 8"}}]','["",{"text": "Start with Scrap\\n","color": "black"},{"text": "[Yes] ","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 5"}},{"text": "[No]\\n\\n","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 6"}},{"text": "Murderer Friendly Fire\\n","color": "black"},{"text": "[Yes] ","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 12"}},{"text": "[No]\\n\\n","color": "dark_green","clickEvent": {"action": "run_command","value": "/trigger player_rule_update set 13"}}]','["",{"text": "Player Cosmetics\\n\\n","color": "dark_gray","bold": true},{"text": "[Equip Rainbow Hat]\\n","color": "dark_green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger hatchange set 1"}},{"text": "[Equip Lance\'s Hat]\\n","color": "dark_green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger hatchange set 2"}},{"text": "[Equip Space Helmet]\\n","color": "dark_green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger hatchange set 3"}},{"text": "[Equip 3D Glasses (Dark)]\\n","color": "dark_green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger hatchange set 4"}},{"text": "[Remove Hat]","color": "dark_green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger hatchange set -1"}}]'],author:"Bagel Buddies",title:"How to Play","display":{Name:'[ {"text":"How to Play","italic":false,"color":"green"} ]' } }
