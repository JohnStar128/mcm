
#> Add a card to the card table

execute if score $cards riverboat matches 0 if entity @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{CustomModelData:1116}}}] run summon minecraft:item_display 2048.25 66.078 -1993.75 {Tags:["riverboat_card", "card1", "ace"],item:{id:"stick",Count:1b,tag:{CustomModelData:1116}},brightness:{block:15,sky:15},Rotation:[45f,0f],transformation:[1.2, 0.0, 0.0, 0.5062, 0.0, -1.2, -0.0, -0.6, 0.0, 0.0, -1.2, -0.45, 0.0, 0.0, 0.0, 1.0]}
execute if score $cards riverboat matches 0 if entity @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{CustomModelData:1117}}}] run summon minecraft:item_display 2048.25 66.078 -1993.75 {Tags:["riverboat_card", "card1", "eight"],item:{id:"stick",Count:1b,tag:{CustomModelData:1117}},brightness:{block:15,sky:15},Rotation:[45f,0f],transformation:[1.2, 0.0, 0.0, 0.5062, 0.0, -1.2, -0.0, -0.6, 0.0, 0.0, -1.2, -0.45, 0.0, 0.0, 0.0, 1.0]}

execute if score $cards riverboat matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{CustomModelData:1116}}}] run summon minecraft:item_display 2048.125 66.066 -1993.78 {Tags:["riverboat_card", "card2", "ace"],item:{id:"stick",Count:1b,tag:{CustomModelData:1116}},brightness:{block:15,sky:15},Rotation:[45f,0f],transformation:[1.2, 0.0, 0.0, 0.5062, 0.0, 1.2, 0.0, 0.6, 0.0, -0.0, 1.2, 0.45, 0.0, 0.0, 0.0, 1.0]}
execute if score $cards riverboat matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{CustomModelData:1117}}}] run summon minecraft:item_display 2048.125 66.066 -1993.78 {Tags:["riverboat_card", "card2", "eight"],item:{id:"stick",Count:1b,tag:{CustomModelData:1117}},brightness:{block:15,sky:15},Rotation:[45f,0f],transformation:[1.2, 0.0, 0.0, 0.5062, 0.0, 1.2, 0.0, 0.6, 0.0, -0.0, 1.2, 0.45, 0.0, 0.0, 0.0, 1.0]}

execute if score $cards riverboat matches 2 if entity @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{CustomModelData:1116}}}] run summon minecraft:item_display 2048.0 66.07 -1993.80 {Tags:["riverboat_card", "card3", "ace"],item:{id:"stick",Count:1b,tag:{CustomModelData:1116}},brightness:{block:15,sky:15},Rotation:[45f,0f],transformation:[1.2, 0.0, 0.0, 0.5062, 0.0, 1.2, 0.0, 0.6, 0.0, -0.0, 1.2, 0.45, 0.0, 0.0, 0.0, 1.0]}
execute if score $cards riverboat matches 2 if entity @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{CustomModelData:1117}}}] run summon minecraft:item_display 2048.0 66.07 -1993.80 {Tags:["riverboat_card", "card3", "eight"],item:{id:"stick",Count:1b,tag:{CustomModelData:1117}},brightness:{block:15,sky:15},Rotation:[45f,0f],transformation:[1.2, 0.0, 0.0, 0.5062, 0.0, 1.2, 0.0, 0.6, 0.0, -0.0, 1.2, 0.45, 0.0, 0.0, 0.0, 1.0]}

execute if score $cards riverboat matches 3 if entity @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{CustomModelData:1116}}}] run summon minecraft:item_display 2047.875 66.074 -1993.82 {Tags:["riverboat_card", "card4", "ace"],item:{id:"stick",Count:1b,tag:{CustomModelData:1116}},brightness:{block:15,sky:15},Rotation:[45f,0f],transformation:[1.2, 0.0, 0.0, 0.5062, 0.0, 1.2, 0.0, 0.6, 0.0, -0.0, 1.2, 0.45, 0.0, 0.0, 0.0, 1.0]}
execute if score $cards riverboat matches 3 if entity @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{CustomModelData:1117}}}] run summon minecraft:item_display 2047.875 66.074 -1993.82 {Tags:["riverboat_card", "card4", "eight"],item:{id:"stick",Count:1b,tag:{CustomModelData:1117}},brightness:{block:15,sky:15},Rotation:[45f,0f],transformation:[1.2, 0.0, 0.0, 0.5062, 0.0, 1.2, 0.0, 0.6, 0.0, -0.0, 1.2, 0.45, 0.0, 0.0, 0.0, 1.0]}

execute if score $cards riverboat matches 4 if entity @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{CustomModelData:1116}}}] run summon minecraft:item_display 2047.750 66.078 -1993.84 {Tags:["riverboat_card", "card5", "ace"],item:{id:"stick",Count:1b,tag:{CustomModelData:1116}},brightness:{block:15,sky:15},Rotation:[45f,0f],transformation:[1.2, 0.0, 0.0, 0.5062, 0.0, 1.2, 0.0, 0.6, 0.0, -0.0, 1.2, 0.45, 0.0, 0.0, 0.0, 1.0]}
execute if score $cards riverboat matches 4 if entity @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{CustomModelData:1117}}}] run summon minecraft:item_display 2047.750 66.078 -1993.84 {Tags:["riverboat_card", "card5", "eight"],item:{id:"stick",Count:1b,tag:{CustomModelData:1117}},brightness:{block:15,sky:15},Rotation:[45f,0f],transformation:[1.2, 0.0, 0.0, 0.5062, 0.0, 1.2, 0.0, 0.6, 0.0, -0.0, 1.2, 0.45, 0.0, 0.0, 0.0, 1.0]}

scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{CustomModelData:1116}}}] card1 1
scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:stick",tag:{CustomModelData:1117}}}] card8 1

item replace entity @s weapon.mainhand with air
scoreboard players add $cards riverboat 1