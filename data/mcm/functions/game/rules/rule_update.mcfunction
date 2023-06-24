#> Game timer
execute if entity @a[scores={player_rule_update=1}] run scoreboard players add $roundtimer GameRules 1
execute if entity @a[scores={player_rule_update=2}] run scoreboard players remove $roundtimer GameRules 1
execute if score $roundtimer GameRules matches ..4 run tellraw @s {"translate":"mcm.game.rules.timer.min","color":"red","italic":true}
execute if score $roundtimer GameRules matches ..4 run scoreboard players set $roundtimer GameRules 5
execute if score $roundtimer GameRules matches 11.. run tellraw @s {"translate":"mcm.game.rules.timer.max","color":"red","italic":true}
execute if score $roundtimer GameRules matches 11.. run scoreboard players set $roundtimer GameRules 10

#> Murderer selection
execute if entity @a[scores={player_rule_update=3}] run scoreboard players add $murderers GameRules 1
execute if entity @a[scores={player_rule_update=4}] run scoreboard players remove $murderers GameRules 1
execute if entity @a[scores={player_rule_update=3..4}] run scoreboard players set $smart_murderers GameRules 0
execute if entity @a[scores={player_rule_update=11}] run scoreboard players set $smart_murderers GameRules 1
execute if score $murderers GameRules matches ..0 run tellraw @s {"translate":"mcm.game.rules.murderers.min","color":"red","italic":true}
execute if score $murderers GameRules matches ..0 run scoreboard players set $murderers GameRules 1
execute if score $murderers GameRules matches 4.. run tellraw @s {"translate":"mcm.game.rules.murderers.max","color":"red","italic":true}
execute if score $murderers GameRules matches 4.. run scoreboard players set $murderers GameRules 3

#> Start with scrap
execute if entity @a[scores={player_rule_update=5}] run scoreboard players set $startscrap GameRules 1
execute if entity @a[scores={player_rule_update=6}] run scoreboard players set $startscrap GameRules 0

#> Game animations
execute if entity @a[scores={player_rule_update=7}] run scoreboard players set $animate GameRules 1
execute if entity @a[scores={player_rule_update=8}] run scoreboard players set $animate GameRules 0

#> Autostart
execute if entity @a[scores={player_rule_update=9}] run scoreboard players set $autostart GameRules 1
execute if entity @a[scores={player_rule_update=10}] run scoreboard players set $autostart GameRules 0

#> Murderer friendly fire
execute if entity @a[scores={player_rule_update=12}] run scoreboard players set $murderer_ff GameRules 1
execute if entity @a[scores={player_rule_update=13}] run scoreboard players set $murderer_ff GameRules 0
