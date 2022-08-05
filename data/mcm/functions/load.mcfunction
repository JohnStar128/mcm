#> Make sure 0,0 is loaded, this is where all the ✨ magic ✨ happens
setworldspawn -1 1 69
forceload add 0 0
spawnpoint @a -1 1 69

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

execute unless entity @a run function mcm:respawn_entities