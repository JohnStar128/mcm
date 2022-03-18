# Store count of online players to score in CmdData board
execute if entity @a store result score $onlinePlayers CmdData 

# Commands for various stages of gameplay flow will branch into their own directories from this file

# If all players leave, reset the game entirely
execute if score $onlinePlayers CmdData matches 0 run function mcm:reseteverything

# Lobby control
execute if score $onlinePlayers CmdData matches 1.. if entity @e[tag=Brain,tag=LobbyPeriod] run function mcm:lobby/voting

execute if entity @e[tag=Brain,tag=dropChandelier] run function mcm:game/dropchandelier