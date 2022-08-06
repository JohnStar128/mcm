#> What to do if a player disconnects and rejoins
execute as @a[scores={leave=1..}] unless score @s gameID = $gameID CmdData run function mcm:player_leave
scoreboard players reset @a[scores={leave=1..}] leave

#> Give everyone saturation because "Murder isn't peaceful"
#And resistance because arrows hurt :(
effect give @a saturation 1000000 100 true
effect give @a resistance 1000000 100 true
effect give @a weakness 1000000 100 true
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

#> NoDrop module
function mcm:util/nodrop

#> Mark whether someone's holding a knife or not (lets you hit stuff)
tag @a[tag=murderer,nbt={SelectedItem:{id:"minecraft:snowball",Count:1b}}] add HoldKnife
tag @a[nbt=!{SelectedItem:{id:"minecraft:snowball",Count:1b}}] remove HoldKnife

#> Guns
function mcm:game/items/gun/shoot

#> Dead players
scoreboard players add @e[type=item,tag=BoneDeco,nbt={OnGround:1b}] CmdData 1
execute as @e[type=item,tag=BoneDeco,scores={CmdData=20..}] at @s run particle item bone ~ ~ ~ 0 0 0 0.1 4 force
kill @e[type=item,tag=BoneDeco,scores={CmdData=20..}]

#> Scoreboards
scoreboard players reset @a[scores={gunclick=1..}] gunclick

#> Update queued players constantly
execute store result score $queued CmdData if entity @a[tag=queued]

#> Teleport players not in match & outside of lobby bounding box back to lobby unless on Developer Team (escape prevention)
execute as @a[tag=!queued,tag=!spectating,predicate=!mcm:bounding_boxes/lobby,team=!test4] run tp @s -1 1 70