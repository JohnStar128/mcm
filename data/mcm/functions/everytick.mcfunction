#> Store count of online players to score in CmdData board
execute store result score $onlinePlayers CmdData run execute if entity @a 

#> Give everyone saturation because "Murder isn't peaceful"
#And resistance because arrows hurt :(
effect give @a saturation 1000000 100 true
effect give @a resistance 1000000 100 true

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

#> Chandelier
execute if entity @e[tag=Brain,tag=dropChandelier] run function mcm:game/dropchandelier

#> Add every player to the no nametag team unless they are on the development team
team join nametags @a[team=!test4,team=!nametags]

#> Raycasting
execute as @a[scores={knifeclick=1..}] at @s anchored eyes run function mcm:game/loops/kniferay

#> Guns
function mcm:game/items/gun/shoot

#> Dead players
scoreboard players add @e[tag=BoneDeco,nbt={OnGround:1b}] CmdData 1
execute as @e[tag=BoneDeco,scores={CmdData=20..}] at @s run particle item bone ~ ~ ~ 0 0 0 0.1 4 force
kill @e[tag=BoneDeco,scores={CmdData=20..}]

#> Scoreboards
scoreboard players reset @a[scores={gunclick=1..}] gunclick