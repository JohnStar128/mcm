# Store count of online players to score in CmdData board
execute if entity @a store result score $onlinePlayers CmdData 

# Commands for various stages of gameplay flow will branch into their own directories from this file

# If all players leave, reset the game entirely
execute if score $onlinePlayers CmdData matches 0 run function mcm:reseteverything

#> Game control
#Vote countdown
execute if score $gamestate CmdData matches -1 run function mcm:lobby/countdown
#Join game + game start countdown loop
execute if score $gamestate CmdData matches 0 run function mcm:game/loop/gamestart
#Ingame loop
execute if score $gamestate CmdData matches 1 run function mcm:game/loop/ingame
#Game end loop
execute if score $gamestate CmdData matches 2 run function mcm:game/loop/gameend

#> Chandelier
execute if entity @e[tag=Brain,tag=dropChandelier] run function mcm:game/dropchandelier