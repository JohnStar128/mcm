#> Store count of online players to score in CmdData board
execute store result score $onlinePlayers CmdData run execute if entity @a

#> Give everyone saturation because "Murder isn't peaceful"
#And resistance because arrows hurt :(
effect give @a saturation 1000000 100 true
effect give @a resistance 1000000 100 true
effect give @a weakness 1000000 100 true
effect clear @a[tag=HoldKnife] weakness

#> Commands for various stages of gameplay flow will branch into their own directories from this file

#> If all players leave, reset the game entirely
execute if score $onlinePlayers CmdData matches 0 run function mcm:reseteverything

#> Game control
#Vote countdown
execute if score $gamestate CmdData matches -1 run function mcm:lobby/countdown
#Join game + game start countdown loop
execute if score $gamestate CmdData matches 0 run function mcm:game/loops/gamestart
#Ingame loop
execute if score $gamestate CmdData matches 1 run function mcm:game/loops/ingame
#Game end loop
execute if score $gamestate CmdData matches 2 run function mcm:game/loops/gameend

#> Player UUID
execute as @a store result score @s playerUUID run data get entity @s UUID[0]

#> Debug room only accessible to test4
execute as @a[predicate=mcm:bounding_boxes/debug,team=!test4] at @s run particle minecraft:witch ~ ~ ~ .7 .7 .7 1 100
execute as @a[predicate=mcm:bounding_boxes/debug,team=!test4] at @s run tellraw @s ["", {"text":"<Bouncer> You're not on "}, {"text":"[","color":"gold"}, {"text":"The","color":"white"}, {"text":"]","color":"gold"}, {"text":" list.","color":"white"}]
execute as @a[predicate=mcm:bounding_boxes/debug,team=!test4] at @s run playsound minecraft:entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[predicate=mcm:bounding_boxes/debug,team=!test4] at @s run tp @s 15 8 103 0 0


#> Popcorn
function mcm:lobby/popcorn

#> Hats
scoreboard players enable @a hatchange
execute as @a[scores={hatchange=-1}] run function mcm:cosmetics/removehat
execute as @e[scores={hatchange=1}] run function mcm:cosmetics/rainbowhat
execute as @a[scores={hatchange=2}] run function mcm:cosmetics/lance

#> NoDrop module
function mcm:game/nodrop

#> Chandelier
execute if entity @e[tag=Brain,tag=dropChandelier] run function mcm:game/dropchandelier

#> Knife
tag @a[nbt={SelectedItem:{id:"minecraft:snowball",Count:1b}}] add HoldKnife
tag @a[nbt=!{SelectedItem:{id:"minecraft:snowball",Count:1b}}] remove HoldKnife

#> Add every player to the no nametag team unless they are on the development team
team join nametags @a[team=!test4,team=!nametags]

#> A chair is a piece of furniture with a raised surface supported by legs, commonly used to seat a single person. Chairs are supported most often by four legs and have a back;[1][2] however, a chair can have three legs or can have a different shape.[3]
effect give @e[tag=chair] invisibility 999999 1 true

#> Guns
function mcm:game/items/gun/shoot

#> Lobby elevator
function mcm:game/loops/lobbyelevator

#> Dead players
scoreboard players add @e[tag=BoneDeco,nbt={OnGround:1b}] CmdData 1
execute as @e[tag=BoneDeco,scores={CmdData=20..}] at @s run particle item bone ~ ~ ~ 0 0 0 0.1 4 force
kill @e[tag=BoneDeco,scores={CmdData=20..}]

#> Secret related stuff
execute as @a[scores={RingBell=1..},advancements={mcm:secrets/ring_bell=false},predicate=mcm:secrets/lobby_bell] at @s run advancement grant @s only mcm:secrets/ring_bell
execute as @a[scores={RingBell=1..}] at @s run scoreboard players reset @s RingBell

#> Scoreboards
scoreboard players reset @a[scores={gunclick=1..}] gunclick

#> Update queued players constantly
execute store result score $queued CmdData run execute if entity @e[tag=queued]

#> Cosmetics (?)
function mcm:cosmetics/rainbowhat
scoreboard players reset @e[tag=!RainbowHat] RainbowHat
#clear @a[tag=!RainbowHat] #mcm:glass

particle block minecraft:red_concrete 32.5 2.3 30.5 0 0.3 0 1 1
particle block minecraft:light_blue_concrete 32.5 2.3 29.5 0 0.3 0 1 1
particle block minecraft:lime_concrete 32.5 2.3 28.5 0 0.3 0 1 1

#> Auto queue stuff
execute as @a[scores={autoqueue=1..},tag=!autoqueue,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1234}}}] run tellraw @s ["", {"text":"You will now automatically join every game","color":"green"}]
execute as @a[scores={autoqueue=1..},tag=!autoqueue,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1234}}}] at @s run tag @s add autoqueue

execute as @a[scores={autoqueue=1..},tag=autoqueue,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1235}}}] run tellraw @s ["", {"text":"You will no longer automatically join every game","color":"red"}]
execute as @a[scores={autoqueue=1..},tag=autoqueue,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1235}}}] at @s run tag @s remove queued
execute as @a[scores={autoqueue=1..},tag=autoqueue,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1235}}}] at @s run tag @s remove autoqueue

execute as @a[scores={autoqueue=1..},tag=autoqueue,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1234}}}] run item replace entity @s weapon with warped_fungus_on_a_stick{CustomModelData:1235,NoDrop:1b,display:{Name:'[{"text":"Disable AutoQueue","italic":false,"color":"red"}]'}}
execute as @a[scores={autoqueue=1..},tag=!autoqueue,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1235}}}] run item replace entity @s weapon with warped_fungus_on_a_stick{CustomModelData:1234,NoDrop:1b,display:{Name:'[{"text":"Enable AutoQueue","italic":false,"color":"green"}]'}}


execute as @a[scores={autoqueue=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1234}}}] at @s run playsound minecraft:entity.arrow.hit_player hostile @s ~ ~ ~ 1 0 0
execute as @a[scores={autoqueue=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1235}}}] at @s run playsound minecraft:entity.arrow.hit_player hostile @s ~ ~ ~ 1 0 0
execute as @a[scores={autoqueue=1..}] at @s run scoreboard players reset @s autoqueue


#> Auto queue
execute as @a[tag=autoqueue,tag=!queued] run tag @s add queued

function mcm:maps/launchpad/functionality


#> Leave game stuff
# Tags
execute as @a[scores={leave=1..}] at @s run tag @s remove WonLast
execute as @a[scores={leave=1..}] at @s run tag @s remove innocent
execute as @a[scores={leave=1..}] at @s run tag @s remove gunner
execute as @a[scores={leave=1..}] at @s run tag @s remove murderer
execute as @a[scores={leave=1..}] at @s run tag @s remove spectating
execute as @a[scores={leave=1..}] at @s run tag @s remove shotGun
execute as @a[scores={leave=1..}] at @s run tag @s remove retrieved
execute as @a[scores={leave=1..}] at @s run tag @s remove queued
execute as @a[scores={leave=1..}] at @s run tag @s remove lostGun
# Clearing items
execute as @a[scores={leave=1..}] at @s run clear @s warped_fungus_on_a_stick
execute as @a[scores={leave=1..}] at @s run clear @s snowball
execute as @a[scores={leave=1..}] at @s run clear @s carrot_on_a_stick
execute as @a[scores={leave=1..}] at @s run clear @s spyglass
execute as @a[scores={leave=1..}] at @s run clear @s netherite_scrap
# The rest
execute as @a[scores={leave=1..}] at @s run effect clear @s
execute as @a[scores={leave=1..}] at @s run tp @s -1 1 69 0 0
execute as @a[scores={leave=1..},tag=autoqueue] at @s run item replace entity @s hotbar.8 with warped_fungus_on_a_stick{CustomModelData:1235,NoDrop:1b,display:{Name:'[{"translate":"mcm.item.autoqueue.disable","italic":false,"color":"red"}]'}}
execute as @a[scores={leave=1..},tag=!autoqueue] at @s run item replace entity @s hotbar.8 with warped_fungus_on_a_stick{CustomModelData:1234,NoDrop:1b,display:{Name:'[{"translate":"mcm.item.autoqueue.enable","italic":false,"color":"green"}]'}}
execute as @a[scores={leave=1..}] at @s run scoreboard players reset @s leave