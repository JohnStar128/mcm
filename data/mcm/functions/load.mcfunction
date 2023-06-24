#> Make sure 0,0 and spawn are loaded, this is where all the ✨ magic ✨ happens
setworldspawn -1 1 69
forceload add -64 16 47 184
forceload add 0 0
spawnpoint @a -1 1 69


# Reset the maps
execute if score $selectedMap CmdData matches 1 run function mcm:maps/library/reset
execute if score $selectedMap CmdData matches 2 run function mcm:maps/airship/reset
execute if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/reset
execute if score $selectedMap CmdData matches 4 run function mcm:maps/launchpad/reset
execute if score $selectedMap CmdData matches 5 run function mcm:maps/cyberpunk/reset
#gumdrop - execute if score $selectedMap CmdData matches 6 run function mcm:maps/gumdrop/reset
execute if score $selectedMap CmdData matches 6 run function mcm:maps/riverboat/reset
execute if score $selectedMap CmdData matches 7 run function mcm:maps/industry/reset
execute if score $selectedMap CmdData matches 8 run function mcm:maps/train/reset
execute if score $selectedMap CmdData matches 9 run function mcm:maps/cabin/reset

#> Scoreboards
scoreboard objectives add CmdData dummy
scoreboard objectives add mapvote dummy
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
scoreboard objectives add vote_position dummy
scoreboard objectives add vote_map_id dummy
scoreboard objectives add vote_count dummy
scoreboard objectives add display_scrolling dummy
scoreboard objectives add display_scaling dummy
scoreboard objectives add display_coord dummy
scoreboard objectives add facing dummy
scoreboard objectives add targetUUID dummy
scoreboard objectives add crystalClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add airship_crystal_growth dummy
scoreboard objectives add item_management dummy
scoreboard objectives add airship dummy
scoreboard objectives add disableTips trigger
scoreboard objectives add spyglass minecraft.used:minecraft.spyglass
scoreboard objectives add player_count dummy
scoreboard objectives add freezing dummy
scoreboard objectives add chair_entityUUID dummy

#schedule function mcm:lobby/update_lobby_displays_loop 5s replace
function mcm:lobby/update_lobby_displays_loop

function mcm:math/init

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

schedule function mcm:respawn_entities 1s

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

execute as @e[type=marker,tag=MapVote] run tag @s remove selected

#> Reset players back to a known default state
execute as @a[team=!test4] run function mcm:player_leave

#> Load default game rules
scoreboard players set $roundtimer GameRules 10
scoreboard players set $animate GameRules 1
scoreboard players set $autostart GameRules 1
scoreboard players set $murderers GameRules 1
scoreboard players set $smart_murderers GameRules 1
scoreboard players set $murderer_ff GameRules 0
scoreboard players set $startscrap GameRules 1

#> Load current version (hardcoded)
scoreboard players set $current_version version 2

#> Remove bossbar if reloading during game (which you still shouldn't do!)
bossbar remove minecraft:gamedisplay

schedule function mcm:lobby/voting/start 21t

#> Restore devs to previous state


#> Refresh lobby lectern book
item modify block -1 -1 79 container.0 mcm:refresh_book 

#> Set weather
weather clear