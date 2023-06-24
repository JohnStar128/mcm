#> Title message
tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.game.rules","underlined":true,"color":"green", "bold":false}]
#> Number of murderers
tellraw @s [{"text":"| ","bold":true,"color":"dark_gray"}, {"translate":"mcm.game.rules.murderers", "color":"gray","bold":false, "with":[{"score":{"name":"$murderers","objective":"GameRules"}, "color":"green"}]}]
#> Game length
tellraw @s [{"text":"| ","bold":true,"color":"dark_gray"}, {"translate":"mcm.game.rules.length", "color":"gray", "bold":false, "with":[{"translate":"mcm.game.rules.length.minutes", "color":"green", "with":[ {"score":{"name":"$roundtimer","objective":"GameRules"},"color":"green"} ]} ]}]

#> Animated game features
execute if score $animate GameRules matches 1 run tellraw @s [{"text":"| ","bold":true,"color":"dark_gray"}, {"translate":"mcm.game.rules.animated", "color":"gray", "bold":false, "with":[ {"translate":"mcm.game.rules.on", "color":"green"} ]}]
execute if score $animate GameRules matches 0 run tellraw @s [{"text":"| ","bold":true,"color":"dark_gray"}, {"translate":"mcm.game.rules.animated", "color":"gray", "bold":false, "with":[ {"translate":"mcm.game.rules.off", "color":"green"} ]}]
#> Autostart
execute if score $autostart GameRules matches 1 run tellraw @s [{"text":"| ","bold":true,"color":"dark_gray"}, {"translate":"mcm.game.rules.auto", "color":"gray", "bold":false, "with":[ {"translate":"mcm.game.rules.on", "color":"green"} ]}]
execute if score $autostart GameRules matches 0 run tellraw @s [{"text":"| ","bold":true,"color":"dark_gray"}, {"translate":"mcm.game.rules.auto", "color":"gray", "bold":false, "with":[ {"translate":"mcm.game.rules.off", "color":"green"} ]}]
#> Start with scrap
execute if score $startscrap GameRules matches 1 run tellraw @s [{"text":"| ","bold":true,"color":"dark_gray"}, {"translate":"mcm.game.rules.scrap", "color":"gray", "bold":false, "with":[ {"translate":"mcm.game.rules.on", "color":"green"} ]}]
execute if score $startscrap GameRules matches 0 run tellraw @s [{"text":"| ","bold":true,"color":"dark_gray"}, {"translate":"mcm.game.rules.scrap", "color":"gray", "bold":false, "with":[ {"translate":"mcm.game.rules.off", "color":"green"} ]}]
#> Smart murderers
execute if score $smart_murderers GameRules matches 1 run tellraw @s [{"text":"| ","bold":true,"color":"dark_gray"}, {"translate":"mcm.game.rules.smart", "color":"gray", "bold":false, "with":[ {"translate":"mcm.game.rules.on", "color":"green"} ]}]
execute if score $smart_murderers GameRules matches 0 run tellraw @s [{"text":"| ","bold":true,"color":"dark_gray"}, {"translate":"mcm.game.rules.smart", "color":"gray", "bold":false, "with":[ {"translate":"mcm.game.rules.off", "color":"green"} ]}]
#> Murderer friendly fire
execute if score $murderer_ff GameRules matches 1 run tellraw @s [{"text":"| ","bold":true,"color":"dark_gray"}, {"translate":"mcm.game.rules.friendly.fire", "color":"gray", "bold":false, "with":[ {"translate":"mcm.game.rules.on", "color":"green"} ]}]
execute if score $murderer_ff GameRules matches 0 run tellraw @s [{"text":"| ","bold":true,"color":"dark_gray"}, {"translate":"mcm.game.rules.friendly.fire", "color":"gray", "bold":false, "with":[ {"translate":"mcm.game.rules.off", "color":"green"} ]}]
