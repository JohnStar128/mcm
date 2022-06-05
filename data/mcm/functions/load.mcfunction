#> Make sure 0,0 is loaded, this is where all the ✨ magic ✨ happens
setworldspawn 0 0 0
forceload add 0 0

#> First time load only (ideally), spawn the marker entity used to hold game flags and whatnot
execute unless entity @e[type=marker,tag=Brain] run summon marker 0 0 0 {Tags:["Brain"]}

#> Scoreboards
scoreboard objectives add CmdData dummy
scoreboard objectives add mapvote trigger
scoreboard objectives add MapValues dummy
scoreboard objectives add throwKnife minecraft.used:minecraft.snowball
scoreboard objectives add dead deathCount
scoreboard objectives add knifeRetrieve minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add gunclick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add gundist dummy
scoreboard objectives add canPickupGun dummy
scoreboard objectives add GameRules dummy
scoreboard objectives add gundelay dummy
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add droppedGun minecraft.dropped:minecraft.warped_fungus_on_a_stick
scoreboard objectives add droppedKnife minecraft.dropped:minecraft.snowball
scoreboard objectives add droppedScrap minecraft.dropped:minecraft.netherite_scrap
scoreboard objectives add droppedRetrieve minecraft.dropped:minecraft.carrot_on_a_stick
scoreboard objectives add droppedSpyglass minecraft.dropped:minecraft.spyglass
scoreboard players set $one CmdData 1
scoreboard players set $start CmdData 0
scoreboard players set $startcountdown CmdData 200

#> Add the team which hides nametags
team add nametags
team modify nametags nametagVisibility never