
#> Spawns cards

#> Remove old cards
# Also kills cards placed on the table
kill @e[type=item_display,tag=riverboat_card]
kill @e[type=interaction,tag=riverboat_card]

#> Summon new cards
summon minecraft:item_display 2060.6 79.4 -1999.3 {Tags:["riverboat_card", "ace"],item:{id:"stick",Count:1b,tag:{CustomModelData:1116}},brightness:{block:15,sky:15},transformation:[1.0,0.0,0.0,-0.421875,0.0,1.0,0.0,0.5,0.0,0.0,1.0,-0.375,0.0,0.0,0.0,1.0],Rotation:[225f, 0f]}
summon minecraft:item_display 2048.3 66.06 -2005.4 {Tags:["riverboat_card", "ace"],item:{id:"stick",Count:1b,tag:{CustomModelData:1116}},brightness:{block:15,sky:15},transformation:[1.0,0.0,0.0,-0.421875,0.0,1.0,0.0,0.5,0.0,0.0,1.0,-0.375,0.0,0.0,0.0,1.0],Rotation:[180f, 0f]}
summon minecraft:item_display 2092.4 81.0 -1999.6 {Tags:["riverboat_card", "ace"],item:{id:"stick",Count:1b,tag:{CustomModelData:1116}},brightness:{block:15,sky:15},transformation:[1.0,0.0,0.0,-0.421875,0.0,1.0,0.0,0.5,0.0,0.0,1.0,-0.375,0.0,0.0,0.0,1.0],Rotation:[225f, 0f]}
summon minecraft:item_display 2092.55 68.0 -1991.6 {Tags:["riverboat_card", "ace"],item:{id:"stick",Count:1b,tag:{CustomModelData:1116}},brightness:{block:15,sky:15},transformation:[1.0,0.0,0.0,-0.421875,0.0,1.0,0.0,0.5,0.0,0.0,1.0,-0.375,0.0,0.0,0.0,1.0],Rotation:[180f, 0f]}
summon minecraft:item_display 2026.7 73.0 -2004.65 {Tags:["riverboat_card", "ace"],item:{id:"stick",Count:1b,tag:{CustomModelData:1116}},brightness:{block:15,sky:15},transformation:[1.0,0.0,0.0,-0.421875,0.0,1.0,0.0,0.5,0.0,0.0,1.0,-0.375,0.0,0.0,0.0,1.0],Rotation:[-135f, 0f]}
execute as @e[type=item_display,tag=riverboat_card] run data merge entity @s {transformation:{translation:[-0.421875f,0.5f,-0.375f]}}

#> Change two to eights
tag @e[type=item_display,tag=riverboat_card,tag=ace,limit=2,sort=random] add eight
tag @e[type=item_display,tag=riverboat_card,tag=eight] remove ace
execute as @e[type=item_display,tag=riverboat_card,tag=eight] run data merge entity @s {item:{tag:{CustomModelData:1117}}}

#> Summon interactions
execute at @e[type=item_display,tag=riverboat_card,tag=ace] run summon interaction ~ ~ ~ {width:0.5,height:0.1,Tags:["riverboat_card", "ace"],response:false}
execute at @e[type=item_display,tag=riverboat_card,tag=eight] run summon interaction ~ ~ ~ {width:0.5,height:0.1,Tags:["riverboat_card", "eight"],response:false}