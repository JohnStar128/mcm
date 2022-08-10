#> Title message
tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"},{"text":"Game Rules:","underlined":true,"color":"green"}]
#> Number of murderers
tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"}, {"text":"Number of murderers : ", "color":"gray"}, {"score":{"name":"$murderers","objective":"GameRules"}, "color":"green"}]
#> Game length
execute if score $roundtimer GameRules matches 1 run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"}, {"text":"Game length : ", "color":"gray"}, {"text":"5", "color":"green"}, {"text":" minutes","color":"green"}]
execute if score $roundtimer GameRules matches 2 run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"}, {"text":"Game length : ", "color":"gray"}, {"text":"10", "color":"green"}, {"text":" minutes","color":"green"}]
#> Animated game features
execute if score $animate GameRules matches 1 run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"}, {"text":"Animated maps : ", "color":"gray"}, {"text":"On", "color":"green"}]
execute if score $animate GameRules matches 0 run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"}, {"text":"Animated maps : ", "color":"gray"}, {"text":"Off", "color":"green"}]
#> Autostart
execute if score $autostart GameRules matches 1 run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"}, {"text":"Automatically start the game : ", "color":"gray"}, {"text":"On", "color":"green"}]
execute if score $autostart GameRules matches 0 run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"}, {"text":"Automatically start the game : ", "color":"gray"}, {"text":"Off", "color":"green"}]
#> Start with scrap
execute if score $startscrap GameRules matches 1 run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"}, {"text":"Players start with scrap : ", "color":"gray"}, {"text":"On", "color":"green"}]
execute if score $startscrap GameRules matches 0 run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"}, {"text":"Players start with scrap : ", "color":"gray"}, {"text":"Off", "color":"green"}]
#> Smart murderers
execute if score $smart_murderers GameRules matches 1 run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"}, {"text":"Smart murderer selection : ", "color":"gray"}, {"text":"On", "color":"green"}]
execute if score $smart_murderers GameRules matches 0 run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"}, {"text":"Smart murderer selection : ", "color":"gray"}, {"text":"Off", "color":"green"}]
#> Murderer friendly fire
execute if score $smart_murderers GameRules matches 1 run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"}, {"text":"Murderer friendly fire : ", "color":"gray"}, {"text":"On", "color":"green"}]
execute if score $smart_murderers GameRules matches 0 run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"}, {"text":"Murderer friendly fire : ", "color":"gray"}, {"text":"Off", "color":"green"}]
