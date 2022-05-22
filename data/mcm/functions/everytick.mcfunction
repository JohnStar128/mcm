# Store count of online players to score in CmdData board
execute if entity @a store result score $onlinePlayers CmdData 

# Commands for various stages of gameplay flow will branch into their own directories from this file

# If all players leave, reset the game entirely
execute if score $onlinePlayers CmdData matches 0 run function mcm:reseteverything

# Join Pad QuestioNMarK
#execute as @a at @s if predicate mcm:bounding_boxes/join_pad at @s run title @a actionbar {"text":"in join pad","color":"green"}

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

#> Add every player to the no nametag team
team join nametags @a[team=!test4]