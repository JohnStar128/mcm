#> Make sure 0,0 and spawn are loaded, this is where all the ✨ magic ✨ happens
setworldspawn -1 1 69
forceload add -64 16 47 184
forceload add 0 0
spawnpoint @a -1 1 69

execute as @a[team=test4] at @s run function mcm:dev/storeinv

#> Scoreboards
scoreboard objectives add CmdData dummy
scoreboard objectives add mapvote trigger
scoreboard objectives add MapValues dummy
scoreboard objectives add throwKnife minecraft.used:minecraft.snowball
scoreboard objectives add dead deathCount
scoreboard objectives add knifeRetrieval minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add adrenalineClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add teleporterClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add autoqueue minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add popcornClick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add gunclick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add gundist dummy
scoreboard objectives add canPickupGun dummy
scoreboard objectives add canGetRetrieval dummy
scoreboard objectives add launchButton minecraft.used:minecraft.stone_button
scoreboard objectives add GameRules dummy
scoreboard objectives add gundelay dummy
scoreboard objectives add scrapCount dummy
scoreboard objectives add scrapRNG dummy
scoreboard objectives add RainbowHat dummy
scoreboard objectives add gameID dummy
scoreboard objectives add hatchange trigger
scoreboard objectives add flipmap trigger
scoreboard objectives add dontfliplibrary trigger
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add droppedGun minecraft.dropped:minecraft.warped_fungus_on_a_stick
scoreboard objectives add droppedKnife minecraft.dropped:minecraft.snowball
scoreboard objectives add droppedScrap minecraft.dropped:minecraft.netherite_scrap
scoreboard objectives add droppedRetrieve minecraft.dropped:minecraft.carrot_on_a_stick
scoreboard objectives add droppedSpyglass minecraft.dropped:minecraft.spyglass
scoreboard objectives add droppedBook minecraft.dropped:minecraft.book
scoreboard objectives add RingBell minecraft.custom:minecraft.bell_ring
scoreboard players set $one CmdData 1
scoreboard players set $start CmdData 0
scoreboard players set $startcountdown CmdData 200
scoreboard objectives add popcorndelay dummy
scoreboard objectives add playerUUID dummy
scoreboard objectives add selected_hat dummy
scoreboard objectives add deferred_queue dummy
scoreboard objectives add stuck trigger
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add autoqueue_delay dummy
scoreboard objectives add available_entities dummy
scoreboard objectives add current_vote dummy
scoreboard objectives add player_color dummy
scoreboard objectives add math dummy
scoreboard objectives add cyberpunk dummy
scoreboard objectives add dev dummy
scoreboard objectives add retrieval_delay dummy
scoreboard objectives add motion_x dummy
scoreboard objectives add motion_y dummy
scoreboard objectives add motion_z dummy
scoreboard objectives add game_stats dummy
scoreboard objectives add time_alive dummy
scoreboard objectives add vineyard_secret minecraft.used:minecraft.bone_meal
scoreboard objectives add riverboat dummy
scoreboard objectives add card1 dummy
scoreboard objectives add card8 dummy
scoreboard objectives add dropped_card minecraft.dropped:minecraft.stick

#> Math values
scoreboard players set $minus_one math -1
scoreboard players set $one math 1
scoreboard players set $two math 2
scoreboard players set $three math 3
scoreboard players set $four math 4
scoreboard players set $five math 5
scoreboard players set $six math 6
scoreboard players set $seven math 7
scoreboard players set $eight math 9
scoreboard players set $nine math 9
scoreboard players set $ten math 10
scoreboard players set $eleven math 11
scoreboard players set $twelve math 12
scoreboard players set $thirteen math 13
scoreboard players set $fourteen math 14
scoreboard players set $fifteen math 15
scoreboard players set $sixteen math 16
scoreboard players set $seventeen math 17
scoreboard players set $eighteen math 18
scoreboard players set $nineteen math 19
scoreboard players set $twenty math 20
scoreboard players set $thirty math 30
scoreboard players set $forty math 40 
scoreboard players set $fifty math 50
scoreboard players set $sixty math 60 
scoreboard players set $seventy math 70 
scoreboard players set $eighty math 80 
scoreboard players set $ninety math 90 
scoreboard players set $one_hundred math 100
scoreboard players set $two_hundred math 200
scoreboard players set $three_hundred math 300
scoreboard players set $four_hundred math 400
scoreboard players set $five_hundred math 500
scoreboard players set $one_thousand math 1000
scoreboard players set $pi math 3141

#> Colors
scoreboard players set $red_offset player_color 65536
scoreboard players set $green_offset player_color 256
scoreboard players set $max_rgb player_color 256
scoreboard players set $max_angle player_color 360

execute as @e[type=villager,tag=Usher] run data modify entity @s Offers set value {}
execute as @e[type=villager,tag=credits_usher] run data modify entity @s Offers set value {}

#> Add the team which hides nametags
team add nametags
team add test4
team modify test4 prefix ["", {"text":"[","color":"gold"}, {"text":"The","color":"white"},{"text":"] ","color":"gold"}]
team add posters
team modify nametags nametagVisibility never
team add chair
team modify chair collisionRule never
team modify posters collisionRule never
team join chair @e[type=pig,tag=chair]
team join posters @e[type=villager,tag=MapVoteEntity]
team add ingame_players
team modify ingame_players friendlyFire true
team modify ingame_players nametagVisibility never
team modify nametags color gray
team modify ingame_players color green 

scoreboard players enable @a player_rule_update

execute if entity @a run function mcm:respawn_entities

#> Generate a game ID to force anyone who logs in to be reset to a default state
kill @e[tag=gameID]
summon marker 0 100 0 {Tags:["gameID"]}
execute store result score $gameID CmdData run data get entity @e[tag=gameID,limit=1,sort=nearest] UUID[0]
scoreboard players operation @a gameID = $gameID CmdData

#> Revoke advancements players shouldn't have but failsafe anyways
advancement revoke @a[advancements={mcm:hit_detection/gun_hit=true}] only mcm:hit_detection/gun_hit
advancement revoke @a[advancements={mcm:hit_detection/knife_hit=true}] only mcm:hit_detection/knife_hit
advancement revoke @a[advancements={mcm:hit_detection/knife_melee_hit=true}] only mcm:hit_detection/knife_melee_hit
advancement revoke @a[advancements={mcm:map_functions/cyberpunk_secret_1=true}] only mcm:map_functions/cyberpunk_secret_1
advancement revoke @a[advancements={mcm:map_functions/cyberpunk_secret_2=true}] only mcm:map_functions/cyberpunk_secret_2
advancement revoke @a[advancements={mcm:map_functions/cyberpunk_secret_3=true}] only mcm:map_functions/cyberpunk_secret_3

#execute unless entity @e[type=marker,tag=Gumdrop] run summon marker 0 -49 70 {Tags:["MapVote","Gumdrop"]}
#scoreboard players set @e[type=marker,tag=Gumdrop] MapValues 6
execute unless entity @e[type=marker,tag=Cyberpunk] run summon marker 0 -49 70 {Tags:["MapVote","Cyberpunk"]}
scoreboard players set @e[type=marker,tag=Cyberpunk] MapValues 5

#> Reset players back to a known default state
execute as @a run function mcm:player_leave

#> Load default game rules
scoreboard players set $roundtimer GameRules 10
scoreboard players set $animate GameRules 1
scoreboard players set $autostart GameRules 1
scoreboard players set $murderers GameRules 1
scoreboard players set $smart_murderers GameRules 1
scoreboard players set $murderer_ff GameRules 0
scoreboard players set $startscrap GameRules 1

#> Remove bossbar if reloading during game (which you still shouldn't do!)
bossbar remove minecraft:gamedisplay

function mcm:lobby/voting/start

#> Restore devs to previous state
execute as @a[scores={dev=1}] run function mcm:dev
execute as @e[type=llama,tag=inventory_helper] at @s rotated as @s run function mcm:dev/restoreinv
