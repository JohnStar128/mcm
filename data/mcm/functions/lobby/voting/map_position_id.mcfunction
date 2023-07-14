#> executed as a MapVote marker at a position for giving score to villager
scoreboard players operation @e[type=interaction,limit=1,sort=nearest] vote_map_id = @s MapValues
#> Don't pick this marker again until next time
tag @s add selected

#> Map art item frames
execute if score @s MapValues matches -1 positioned ~0.5 ~2.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1135}}}
execute if score @s MapValues matches -1 positioned ~0.5 ~2.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1136}}}
execute if score @s MapValues matches -1 positioned ~0.5 ~1.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1137}}}
execute if score @s MapValues matches -1 positioned ~0.5 ~1.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1138}}}
execute if score @s MapValues matches -1 positioned ~0.5 ~0.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1139}}}
execute if score @s MapValues matches -1 positioned ~0.5 ~0.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1140}}}

execute if score @s MapValues matches 1 positioned ~0.5 ~2.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1111}}}
execute if score @s MapValues matches 1 positioned ~0.5 ~2.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1112}}}
execute if score @s MapValues matches 1 positioned ~0.5 ~1.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1113}}}
execute if score @s MapValues matches 1 positioned ~0.5 ~1.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1114}}}
execute if score @s MapValues matches 1 positioned ~0.5 ~0.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1115}}}
execute if score @s MapValues matches 1 positioned ~0.5 ~0.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1116}}}

execute if score @s MapValues matches 2 positioned ~0.5 ~2.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1117}}}
execute if score @s MapValues matches 2 positioned ~0.5 ~2.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1118}}}
execute if score @s MapValues matches 2 positioned ~0.5 ~1.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1119}}}
execute if score @s MapValues matches 2 positioned ~0.5 ~1.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1120}}}
execute if score @s MapValues matches 2 positioned ~0.5 ~0.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1121}}}
execute if score @s MapValues matches 2 positioned ~0.5 ~0.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1122}}}

execute if score @s MapValues matches 3 positioned ~0.5 ~2.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1123}}}
execute if score @s MapValues matches 3 positioned ~0.5 ~2.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1124}}}
execute if score @s MapValues matches 3 positioned ~0.5 ~1.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1125}}}
execute if score @s MapValues matches 3 positioned ~0.5 ~1.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1126}}}
execute if score @s MapValues matches 3 positioned ~0.5 ~0.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1127}}}
execute if score @s MapValues matches 3 positioned ~0.5 ~0.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1128}}}

execute if score @s MapValues matches 4 positioned ~0.5 ~2.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1129}}}
execute if score @s MapValues matches 4 positioned ~0.5 ~2.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1132}}}
execute if score @s MapValues matches 4 positioned ~0.5 ~1.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1130}}}
execute if score @s MapValues matches 4 positioned ~0.5 ~1.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1133}}}
execute if score @s MapValues matches 4 positioned ~0.5 ~0.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1131}}}
execute if score @s MapValues matches 4 positioned ~0.5 ~0.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1134}}}

execute if score @s MapValues matches 5 positioned ~0.5 ~2.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1147}}}
execute if score @s MapValues matches 5 positioned ~0.5 ~2.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1148}}}
execute if score @s MapValues matches 5 positioned ~0.5 ~1.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1149}}}
execute if score @s MapValues matches 5 positioned ~0.5 ~1.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1150}}}
execute if score @s MapValues matches 5 positioned ~0.5 ~0.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1151}}}
execute if score @s MapValues matches 5 positioned ~0.5 ~0.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1152}}}

execute if score @s MapValues matches 6 positioned ~0.5 ~2.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1153}}}
execute if score @s MapValues matches 6 positioned ~0.5 ~2.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1154}}}
execute if score @s MapValues matches 6 positioned ~0.5 ~1.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1155}}}
execute if score @s MapValues matches 6 positioned ~0.5 ~1.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1156}}}
execute if score @s MapValues matches 6 positioned ~0.5 ~0.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1157}}}
execute if score @s MapValues matches 6 positioned ~0.5 ~0.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1158}}}

#Industry
execute if score @s MapValues matches 7 positioned ~0.5 ~2.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1159}}}
execute if score @s MapValues matches 7 positioned ~0.5 ~2.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1160}}}
execute if score @s MapValues matches 7 positioned ~0.5 ~1.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1161}}}
execute if score @s MapValues matches 7 positioned ~0.5 ~1.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1162}}}
execute if score @s MapValues matches 7 positioned ~0.5 ~0.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1163}}}
execute if score @s MapValues matches 7 positioned ~0.5 ~0.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1164}}}

#Train (Murder on the Boreal Express)
execute if score @s MapValues matches 8 positioned ~0.5 ~2.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1165}}}
execute if score @s MapValues matches 8 positioned ~0.5 ~2.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1166}}}
execute if score @s MapValues matches 8 positioned ~0.5 ~1.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1167}}}
execute if score @s MapValues matches 8 positioned ~0.5 ~1.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1168}}}
execute if score @s MapValues matches 8 positioned ~0.5 ~0.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1169}}}
execute if score @s MapValues matches 8 positioned ~0.5 ~0.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1170}}}

#Winter Cabin (Snowed Inn)
execute if score @s MapValues matches 9 positioned ~0.5 ~2.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1171}}}
execute if score @s MapValues matches 9 positioned ~0.5 ~2.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1172}}}
execute if score @s MapValues matches 9 positioned ~0.5 ~1.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1173}}}
execute if score @s MapValues matches 9 positioned ~0.5 ~1.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1174}}}
execute if score @s MapValues matches 9 positioned ~0.5 ~0.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1175}}}
execute if score @s MapValues matches 9 positioned ~0.5 ~0.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1176}}}
