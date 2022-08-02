
execute if score $gamestate CmdData matches -1 if entity @a[scores={player_rule_update=1}] run scoreboard players set $roundtimer GameRules 1
execute if score $gamestate CmdData matches -1 if entity @a[scores={player_rule_update=2}] run scoreboard players set $roundtimer GameRules 2

execute if score $gamestate CmdData matches -1 if entity @a[scores={player_rule_update=3}] run scoreboard players set $murderers GameRules 1
execute if score $gamestate CmdData matches -1 if entity @a[scores={player_rule_update=4}] run scoreboard players set $murderers GameRules 2
execute if score $gamestate CmdData matches -1 if entity @a[scores={player_rule_update=3}] run scoreboard players set $smart_murderers GameRules 0
execute if score $gamestate CmdData matches -1 if entity @a[scores={player_rule_update=4}] run scoreboard players set $smart_murderers GameRules 0

execute if score $gamestate CmdData matches -1 if entity @a[scores={player_rule_update=5}] run scoreboard players set $startscrap GameRules 1
execute if score $gamestate CmdData matches -1 if entity @a[scores={player_rule_update=6}] run scoreboard players set $startscrap GameRules 0

execute if score $gamestate CmdData matches -1 if entity @a[scores={player_rule_update=7}] run scoreboard players set $animate GameRules 1
execute if score $gamestate CmdData matches -1 if entity @a[scores={player_rule_update=8}] run scoreboard players set $animate GameRules 0

execute if score $gamestate CmdData matches -1 if entity @a[scores={player_rule_update=9}] run scoreboard players set $autostart GameRules 1
execute if score $gamestate CmdData matches -1 if entity @a[scores={player_rule_update=10}] run scoreboard players set $autostart GameRules 0

execute if score $gamestate CmdData matches -1 if entity @a[scores={player_rule_update=11}] run scoreboard players set $smart_murderers GameRules 1

execute unless score $gamestate CmdData matches -1 run tellraw @s ["",{"text":"Game rules can only be updated during the voting period!","color":"red"}]

scoreboard players reset @a player_rule_update
scoreboard players enable @a player_rule_update