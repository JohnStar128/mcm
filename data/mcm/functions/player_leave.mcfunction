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
tag @s remove autoqueue_spam_prevention

#> Print game rules if voting or queueing
execute if score $gamestate CmdData matches 0..1 run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~
execute if score $gamestate CmdData matches 0..1 run function mcm:game/rules/print_game_rules

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
execute as @s[tag=autoqueue] run item replace entity @s hotbar.8 with warped_fungus_on_a_stick{CustomModelData:1235,NoDrop:1b,Autoqueue:1b,display:{Name:'[{"translate":"mcm.item.autoqueue.disable","italic":false,"color":"green"}]'}}
execute as @s[tag=autoqueue] at @s run function mcm:lobby/queueing/autoqueue
execute as @s[tag=!autoqueue] run item replace entity @s hotbar.8 with warped_fungus_on_a_stick{CustomModelData:1234,NoDrop:1b,Autoqueue:1b,display:{Name:'[{"translate":"mcm.item.autoqueue.enable","italic":false,"color":"green"}]'}}

#> How to play book
item replace entity @s hotbar.4 with written_book{HowToPlay:1b,NoDrop:1b}

#> Update players' colors
scoreboard players set $change_color CmdData 1 
tag @a remove colored
