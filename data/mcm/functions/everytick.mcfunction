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

#> Popcorn
function mcm:lobby/popcorn

#> NoDrop module
function mcm:game/nodrop

#> Chandelier
execute if entity @e[tag=Brain,tag=dropChandelier] run function mcm:game/dropchandelier

#> Knife
tag @a[nbt={SelectedItem:{id:"minecraft:snowball",Count:1b}}] add HoldKnife
tag @a[nbt=!{SelectedItem:{id:"minecraft:snowball",Count:1b}}] remove HoldKnife

#> Add every player to the no nametag team unless they are on the development team
team join nametags @a[team=!test4,team=!nametags]

#> Guns
function mcm:game/items/gun/shoot

#> Dead players
scoreboard players add @e[tag=BoneDeco,nbt={OnGround:1b}] CmdData 1
execute as @e[tag=BoneDeco,scores={CmdData=20..}] at @s run particle item bone ~ ~ ~ 0 0 0 0.1 4 force
kill @e[tag=BoneDeco,scores={CmdData=20..}]

#> Scoreboards
scoreboard players reset @a[scores={gunclick=1..}] gunclick

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
execute as @a[scores={leave=1..}] at @s run scoreboard players reset @s leave