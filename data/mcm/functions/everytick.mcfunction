#> Versioning system
execute as @a unless score @s version = $current_version version run function mcm:first_join
execute as @a unless score @s version = $current_version version run scoreboard players operation @s version = $current_version version

#> What to do if a player disconnects and rejoins
execute as @a[scores={leave=1..}] unless score @s gameID = $gameID CmdData run function mcm:player_leave

#> Reset voting if no one is on the server
execute as @a[scores={leave=1..}] run tag @a[limit=1] add one_player

execute as @a[scores={leave=1..}] unless entity @a[tag=!one_player] if score $gamestate CmdData matches -1 run function mcm:lobby/voting/reset_voting_period
execute as @a[scores={leave=1..}] unless entity @a[tag=!one_player] if score $gamestate CmdData matches 0 run function mcm:lobby/voting/reset_voting_period

execute as @a[scores={leave=1..}] run tag @a remove one_player

scoreboard players reset @a[scores={leave=1..}] leave

#> Give everyone saturation because "Murder isn't peaceful"
#And resistance because arrows hurt :(
effect give @a saturation infinite 100 true
effect give @a resistance infinite 100 true
effect give @a weakness infinite 100 true
effect clear @a[tag=HoldKnife] weakness

#> Run lobby-related code only if people are actually there
execute if entity @a[predicate=mcm:bounding_boxes/lobby] run function mcm:lobby/lobby_functions

#> Commands for various stages of gameplay flow will branch into their own directories from this file
#> Game control
#Vote countdown
execute if score $gamestate CmdData matches -1 run function mcm:lobby/voting/voting_period
#Join game + game start countdown loop
execute if score $gamestate CmdData matches 0 run function mcm:lobby/queueing/queueing_period
#Ingame loop
execute if score $gamestate CmdData matches 1 run function mcm:game/loops/ingame
#Game end loop
execute if score $gamestate CmdData matches 2 run function mcm:game/loops/gameend
#Ingame Bossbar
execute if score $gamestate CmdData matches 1..2 run function mcm:game/loops/updatebossbar

#> NoDrop module
function mcm:util/nodrop

#> Mark whether someone's holding a knife or not (lets you hit stuff)
tag @a[tag=murderer,nbt={SelectedItem:{id:"minecraft:snowball",Count:1b}}] add HoldKnife
tag @a[nbt=!{SelectedItem:{id:"minecraft:snowball",Count:1b}}] remove HoldKnife

#> Knife throwing
execute as @e[type=snowball] at @s run function mcm:game/items/knife/throw
#> Guns
function mcm:game/items/gun/shoot

#> Dead players
scoreboard players add @e[type=item,tag=BoneDeco,nbt={OnGround:1b}] CmdData 1
execute as @e[type=item,tag=BoneDeco,nbt={OnGround:0b}] at @s if block ~ ~-0.2 ~ water run scoreboard players add @s CmdData 1
execute as @e[type=item,tag=BoneDeco,scores={CmdData=20..}] at @s run particle item bone ~ ~ ~ 0 0 0 0.1 4 force
kill @e[type=item,tag=BoneDeco,scores={CmdData=20..}]

#> Scoreboards
scoreboard players reset @a[scores={gunclick=1..}] gunclick

#> Update queued players constantly
execute store result score $queued CmdData if entity @a[tag=queued]

#> Disable tips
scoreboard players enable @a disableTips
execute as @a[scores={disableTips=1..},tag=!NoTip] run tellraw @s ["", {"text":"You will no longer receive tips.","color":"green"}]
execute as @a[scores={disableTips=1..},tag=!NoTip] run tellraw @s ["", {"text":"Re-enable tips in the How To Play book","color":"green"}]
execute as @a[scores={disableTips=1..},tag=!NoTip] run tag @s add NoTip
execute as @a[scores={disableTips=0},tag=NoTip] run tellraw @s ["", {"text":"You will now receive tips.","color":"green"}]
execute as @a[scores={disableTips=0},tag=NoTip] run tag @s remove NoTip

#> Teleport players not in match & outside of lobby bounding box back to lobby unless on Developer Team (escape prevention)
execute as @a[tag=!queued,tag=!spectating,predicate=!mcm:bounding_boxes/lobby,team=!test4] run tp @s -1 1 70

#> Remove the Ushers trades when they come back
execute as @e[type=villager,tag=Usher] store result score $usheroffers CmdData run data get entity @s Offers.Recipes
execute as @e[type=villager,tag=credits_usher] store result score $creditsusheroffers CmdData run data get entity @s Offers.Recipes

execute as @e[type=villager,tag=Usher] if score $usheroffers CmdData matches 1.. run data modify entity @s Offers set value {}
execute as @e[type=villager,tag=credits_usher] if score $creditsusheroffers CmdData matches 1.. run data modify entity @s Offers set value {}
