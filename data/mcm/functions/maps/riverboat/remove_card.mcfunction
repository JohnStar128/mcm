#> Remove a card from the card table

execute if score $cards riverboat matches 1 if entity @e[type=item_display,tag=card1,tag=ace] run item replace entity @s weapon.mainhand with stick{CustomModelData:1116,display:{Name:"{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":\"false\"}"}} 1
execute if score $cards riverboat matches 1 if entity @e[type=item_display,tag=card1,tag=eight] run item replace entity @s weapon.mainhand with stick{CustomModelData:1117,display:{Name:"{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":\"false\"}"}} 1
execute if score $cards riverboat matches 1 run kill @e[type=item_display,tag=card1]

execute if score $cards riverboat matches 2 if entity @e[type=item_display,tag=card2,tag=ace] run item replace entity @s weapon.mainhand with stick{CustomModelData:1116,display:{Name:"{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":\"false\"}"}} 1
execute if score $cards riverboat matches 2 if entity @e[type=item_display,tag=card2,tag=eight] run item replace entity @s weapon.mainhand with stick{CustomModelData:1117,display:{Name:"{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":\"false\"}"}} 1
execute if score $cards riverboat matches 2 run kill @e[type=item_display,tag=card2]

execute if score $cards riverboat matches 3 if entity @e[type=item_display,tag=card3,tag=ace] run item replace entity @s weapon.mainhand with stick{CustomModelData:1116,display:{Name:"{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":\"false\"}"}} 1
execute if score $cards riverboat matches 3 if entity @e[type=item_display,tag=card3,tag=eight] run item replace entity @s weapon.mainhand with stick{CustomModelData:1117,display:{Name:"{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":\"false\"}"}} 1
execute if score $cards riverboat matches 3 run kill @e[type=item_display,tag=card3]

execute if score $cards riverboat matches 4 if entity @e[type=item_display,tag=card4,tag=ace] run item replace entity @s weapon.mainhand with stick{CustomModelData:1116,display:{Name:"{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":\"false\"}"}} 1
execute if score $cards riverboat matches 4 if entity @e[type=item_display,tag=card4,tag=eight] run item replace entity @s weapon.mainhand with stick{CustomModelData:1117,display:{Name:"{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":\"false\"}"}} 1
execute if score $cards riverboat matches 4 run kill @e[type=item_display,tag=card4]

execute if score $cards riverboat matches 5 if entity @e[type=item_display,tag=card5,tag=ace] run item replace entity @s weapon.mainhand with stick{CustomModelData:1116,display:{Name:"{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":\"false\"}"}} 1
execute if score $cards riverboat matches 5 if entity @e[type=item_display,tag=card5,tag=eight] run item replace entity @s weapon.mainhand with stick{CustomModelData:1117,display:{Name:"{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":\"false\"}"}} 1
execute if score $cards riverboat matches 5 run kill @e[type=item_display,tag=card5]

execute if score $cards riverboat matches 1..5 run scoreboard players remove $cards riverboat 1
