#> Control flow for when someone clicks a game rule in the how to play book
execute if score $gamestate CmdData matches -1 run function mcm:game/rules/rule_update
execute unless score $gamestate CmdData matches -1 run tellraw @s ["",{"text":"Game rules can only be updated during the voting period!","color":"red"}]
scoreboard players reset @a player_rule_update
scoreboard players enable @a player_rule_update