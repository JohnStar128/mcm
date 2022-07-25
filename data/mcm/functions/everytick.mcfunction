#> Store count of online players to score in CmdData board
#execute store result score $onlinePlayers CmdData if entity @a

#> Detect first joins to fix spawning on the roof
execute as @a[tag=!first_join] run effect give @s blindness 3 1 true
execute as @a[tag=!first_join,scores={jump=1..}] run function mcm:first_join
execute as @a[tag=!first_join,scores={walk=1..}] run function mcm:first_join
execute as @a[tag=!first_join,scores={sprint=1..}] run function mcm:first_join
execute as @a[tag=!first_join,scores={crouch=1..}] run function mcm:first_join

#> Give everyone saturation because "Murder isn't peaceful"
#And resistance because arrows hurt :(
effect give @a saturation 1000000 100 true
effect give @a resistance 1000000 100 true
effect give @a weakness 1000000 100 true
effect clear @a[tag=HoldKnife] weakness

#> Auto queue
execute as @a[tag=first_join,scores={autoqueue=1..},tag=!autoqueue,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1234}}}] at @s run function mcm:lobby/autoqueue
execute as @a[tag=first_join,scores={autoqueue=1..},tag=autoqueue,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1235}}}] at @s run function mcm:lobby/deautoqueue

#> If all players leave, reset the game entirely
#execute if score $onlinePlayers CmdData matches 0 run function mcm:reseteverything

#> Commands for various stages of gameplay flow will branch into their own directories from this file

#> Game control
#Vote countdown
execute if score $gamestate CmdData matches -1 run function mcm:lobby/countdown
#Join game + game start countdown loop
execute if score $gamestate CmdData matches 0 run function mcm:game/loops/gamestart
#Ingame loop
execute if score $gamestate CmdData matches 1 run function mcm:game/loops/ingame
#Game end loop
execute if score $gamestate CmdData matches 2 run function mcm:game/loops/gameend

#> Player UUID - what do we use this for? (apparently NoDrop)
execute as @a store result score @s playerUUID run data get entity @s UUID[0]

#> Debug room only accessible to test4
execute as @a[predicate=mcm:bounding_boxes/debug,team=!test4] at @s run particle minecraft:witch ~ ~ ~ .7 .7 .7 1 100
execute as @a[predicate=mcm:bounding_boxes/debug,team=!test4] at @s run tellraw @s ["", {"text":"<Bouncer> You're not on "}, {"text":"[","color":"gold"}, {"text":"The","color":"white"}, {"text":"]","color":"gold"}, {"text":" list.","color":"white"}]
execute as @a[predicate=mcm:bounding_boxes/debug,team=!test4] at @s run playsound minecraft:entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[predicate=mcm:bounding_boxes/debug,team=!test4] at @s run tp @s 15 8 103 0 0

#> Popcorn
execute if score $gamestate CmdData matches -1..0 run function mcm:lobby/popcorn

#> Reset warped fungus on a stick related scoreboards so they don't mess with eachother
scoreboard players reset @a[scores={autoqueue=1..}] autoqueue

#> Testing range item frames
execute as @a[advancements={mcm:lobby/testing_range_knife=true},nbt=!{Inventory:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] run give @s snowball{NoDrop:1b,Unbreakable:1,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"translate":"mcm.item.knife","italic":false}]',Lore:['[{"translate":"mcm.item.knife.lore","italic":false}]']}} 
execute as @a[advancements={mcm:lobby/testing_range_gun=true},nbt=!{Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}]}] run give @s warped_fungus_on_a_stick{NoDrop:1b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.gun","italic":false}]'}} 
execute as @a[advancements={mcm:lobby/testing_range_knife=true}] run advancement revoke @s only mcm:lobby/testing_range_knife
execute as @a[advancements={mcm:lobby/testing_range_gun=true}] run advancement revoke @s only mcm:lobby/testing_range_gun

execute as @e[tag=kniferange,nbt=!{ItemRotation:2b}] run data merge entity @s {ItemRotation:2b}
execute as @e[tag=gunrange,nbt=!{ItemRotation:0b}] run data merge entity @s {ItemRotation:0b}

#> Hats
scoreboard players enable @a hatchange
execute as @a[scores={hatchange=-1}] run function mcm:cosmetics/change_hat
execute as @a[scores={hatchange=1..}] run function mcm:cosmetics/change_hat

#> NoDrop module
function mcm:game/nodrop

#> Tp players who use the book to go back to spawnpoint
scoreboard players enable @a[tag=!queued] stuck
execute as @a[scores={stuck=1..},tag=!queued] run tp @s -1 1 69
execute as @a[scores={stuck=1..},tag=!queued] run clear @s warped_fungus_on_a_stick
execute as @a[scores={stuck=1..},tag=!queued] run clear @s snowball
execute as @a[scores={stuck=1..},tag=!queued] run scoreboard players reset @s stuck

#> Add every player to the no nametag team unless they are on the development team
team join nametags @a[tag=!queued,team=!test4,team=!nametags]

#> A chair is a piece of furniture with a raised surface supported by legs, commonly used to seat a single person. Chairs are supported most often by four legs and have a back;[1][2] however, a chair can have three legs or can have a different shape.[3]
execute if score $gamestate CmdData matches -1..0 as @e[type=pig,tag=chair] run effect give @s invisibility 999999 1 true
execute if score $gamestate CmdData matches -1..0 as @e[type=pig,tag=spectatorchair] run effect give @s invisibility 999999 1 true
execute if score $gamestate CmdData matches -1..0 as @e[type=villager,tag=MapVoteEntity] run effect give @s invisibility 999999 1 true
execute if score $gamestate CmdData matches -1..0 as @e[type=villager,tag=arcade] run effect give @s invisibility 999999 1 true

#> Knife
tag @a[nbt={SelectedItem:{id:"minecraft:snowball",Count:1b}}] add HoldKnife
tag @a[nbt=!{SelectedItem:{id:"minecraft:snowball",Count:1b}}] remove HoldKnife

#> Guns
function mcm:game/items/gun/shoot

#> Lobby elevator
function mcm:game/loops/lobbyelevator

#> Dead players
scoreboard players add @e[type=item,tag=BoneDeco,nbt={OnGround:1b}] CmdData 1
execute as @e[type=item,tag=BoneDeco,scores={CmdData=20..}] at @s run particle item bone ~ ~ ~ 0 0 0 0.1 4 force
kill @e[type=item,tag=BoneDeco,scores={CmdData=20..}]

#> Secret related stuff
execute as @a[scores={RingBell=1..},advancements={mcm:secrets/ring_bell=false},predicate=mcm:secrets/lobby_bell] at @s run advancement grant @s only mcm:secrets/ring_bell
execute as @a[scores={RingBell=1..}] at @s run scoreboard players reset @s RingBell

#> Scoreboards
scoreboard players reset @a[scores={gunclick=1..}] gunclick

#> Update queued players constantly
# TODO change this to @a when we don't use armor stands for testing anymore
execute store result score $queued CmdData if entity @a[tag=queued]

#> Guessing this is for that one store in the lobby with the hglllhshglgl - Topaz
particle block minecraft:red_concrete 32.5 2.3 30.5 0 0.3 0 1 1
particle block minecraft:light_blue_concrete 32.5 2.3 29.5 0 0.3 0 1 1
particle block minecraft:lime_concrete 32.5 2.3 28.5 0 0.3 0 1 1

execute store result score $pickupdelay test run data get entity @e[type=item,tag=knifeCosmetic,limit=1,sort=nearest] PickupDelay

#> Auto Start signs
execute if score $autostart GameRules matches 1 run data merge block 11 4 104 {Color:"black",GlowingText:0b,Text1:'{"color":"green","clickEvent":{"action":"run_command","value":"scoreboard players set $autostart GameRules 0"},"text":"[AutoStart]"}',Text2:'{"text":""}',Text3:'{"text":"On","color":"white","bold":"true"}',Text4:'{"text":""}'}
execute if score $autostart GameRules matches 0 run data merge block 11 4 104 {Color:"black",GlowingText:0b,Text1:'{"color":"green","clickEvent":{"action":"run_command","value":"scoreboard players set $autostart GameRules 1"},"text":"[AutoStart]"}',Text2:'{"text":""}',Text3:'{"text":"Off","color":"white","bold":"true"}',Text4:'{"text":""}'} 

#> What to do if a player disconnects and rejoins
execute as @a[scores={leave=1..}] run function mcm:player_leave

#> Let people use the test range in the lobby
function mcm:lobby/test_range

#> Lobby arcade machines
function mcm:lobby/arcade

#> Credits room
function mcm:lobby/credits/credits

#> Rule updates
execute if entity @a[scores={player_rule_update=1..}] run function mcm:lobby/rule_update