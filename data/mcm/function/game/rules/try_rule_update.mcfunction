#> Control flow for when someone clicks a game rule in the how to play book
execute if score $gamestate CmdData matches -1 unless score $restricted GameRules matches 1 run function mcm:game/rules/rule_update
execute unless score $gamestate CmdData matches -1 run tellraw @s {"translate":"mcm.game.rules.ingame","color":"red"}
execute if score $restricted GameRules matches 1 run tellraw @s {"translate":"mcm.game.rules.restricted","color":"red"}
scoreboard players reset @a player_rule_update
scoreboard players enable @a player_rule_update