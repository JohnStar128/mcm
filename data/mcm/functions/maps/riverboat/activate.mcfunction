#> Forceload the riverboat map
#forceload add 2130 -2015 2000 -1975

#> Give secret armor stands their cards
execute as @e[type=armor_stand,tag=riverboat_secret,tag=take,limit=3,sort=random] run data merge entity @s {HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1116,display:{Name:"{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":\"false\"}"}}},{}],DisabledSlots:16383}
execute as @e[type=armor_stand,tag=riverboat_secret,tag=take,limit=2,sort=random,nbt=!{HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1116}},{}]}] run data merge entity @s {HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1117,display:{Name:"{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":\"false\"}"}}},{}],DisabledSlots:16383}
execute as @e[type=villager,tag=riverboat_secret] run effect give @s invisibility 999999 1 true

#> Kill potential leftover entities
#kill @e[tag=MapEntity]

#> Set Player Spawnpoints
execute positioned 2086 67 -2008 run function mcm:game/markers/playerspawn
execute positioned 2091 72 -2000 run function mcm:game/markers/playerspawn
execute positioned 2068 79 -2000 run function mcm:game/markers/playerspawn
execute positioned 2086 79 -2004 run function mcm:game/markers/playerspawn
execute positioned 2041 72 -2008 run function mcm:game/markers/playerspawn
execute positioned 2053 65 -1991 run function mcm:game/markers/playerspawn
execute positioned 2043 72 -2000 run function mcm:game/markers/playerspawn
execute positioned 2025 73 -2007 run function mcm:game/markers/playerspawn
execute positioned 2079 66 -2000 run function mcm:game/markers/playerspawn
execute positioned 2037 66 -2000 run function mcm:game/markers/playerspawn
execute positioned 2013 67 -1998 run function mcm:game/markers/playerspawn
execute positioned 2089 67 -1992 run function mcm:game/markers/playerspawn
execute positioned 2058 78 -1995 run function mcm:game/markers/playerspawn
execute positioned 2094 73 -2005 run function mcm:game/markers/playerspawn
execute positioned 2036 72 -1992 run function mcm:game/markers/playerspawn
execute positioned 2064 72 -1991 run function mcm:game/markers/playerspawn
execute positioned 2090 80 -1995 run function mcm:game/markers/playerspawn
execute positioned 2016 73 -2000 run function mcm:game/markers/playerspawn
execute positioned 2061 65 -2009 run function mcm:game/markers/playerspawn
execute positioned 2074 72 -2008 run function mcm:game/markers/playerspawn
execute positioned 2046 64 -2000 run function mcm:game/markers/playerspawn
execute positioned 2046 78 -2005 run function mcm:game/markers/playerspawn
execute positioned 2014 67 -2005 run function mcm:game/markers/playerspawn
execute positioned 2086 73 -1992 run function mcm:game/markers/playerspawn


#> Scrap-specific Spawnpoints
execute positioned 2092 73 -1991 run function mcm:game/markers/scrappawn 
execute positioned 2045 65 -1995 run function mcm:game/markers/scrappawn 
execute positioned 2026 73 -1991 run function mcm:game/markers/scrappawn 
execute positioned 2092 73 -2010 run function mcm:game/markers/scrappawn 
execute positioned 2024 67 -1990 run function mcm:game/markers/scrappawn 
execute positioned 2058 65 -2000 run function mcm:game/markers/scrappawn 
execute positioned 2020 79 -2005 run function mcm:game/markers/scrappawn 
execute positioned 2005 67 -2000 run function mcm:game/markers/scrappawn 
execute positioned 2069 72 -1990 run function mcm:game/markers/scrappawn 
execute positioned 2011 73 -2000 run function mcm:game/markers/scrappawn 
execute positioned 2057 71 -2000 run function mcm:game/markers/scrappawn 
execute positioned 2046 65 -2005 run function mcm:game/markers/scrappawn 
execute positioned 2032 66 -2010 run function mcm:game/markers/scrappawn 
execute positioned 2066 78 -2011 run function mcm:game/markers/scrappawn 
execute positioned 2083 79 -2009 run function mcm:game/markers/scrappawn 
execute positioned 2070 78 -1992 run function mcm:game/markers/scrappawn 
execute positioned 2035 79 -1990 run function mcm:game/markers/scrappawn 
execute positioned 2038 78 -2009 run function mcm:game/markers/scrappawn 
execute positioned 2019 79 -1996 run function mcm:game/markers/scrappawn 
execute positioned 2095 80 -2006 run function mcm:game/markers/scrappawn 

#> Sound markers
execute positioned 2023 64 -1985 run function mcm:game/markers/soundmarker
execute positioned 2057 64 -1982 run function mcm:game/markers/soundmarker
execute positioned 2087 64 -1985 run function mcm:game/markers/soundmarker
execute positioned 2080 64 -2016 run function mcm:game/markers/soundmarker
execute positioned 2055 64 -2015 run function mcm:game/markers/soundmarker
execute positioned 2029 64 -2014 run function mcm:game/markers/soundmarker
execute positioned 2001 64 -1999 run function mcm:game/markers/soundmarker

#> Spectator spawn
execute positioned 2057 73 -1981 rotated 0 180 run function mcm:game/markers/spectatorspawn

tellraw @a ["\n",{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.ready","underlined":true,"color":"green","bold":false}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.selected","color":"gray","bold":false,"with":[{"translate":"mcm.riverboat.name","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"translate":"mcm.riverboat.hover","color":"aqua"},{"text":"\n    --------\n","color":"dark_gray"},{"translate":"mcm.map.concept","color":"dark_aqua", "with":[ {"translate":"mcm.map.list.2", "color":"green", "with":[ "TacoSquad", "TheLastOreo" ]} ]}]}}]}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.directed","color":"gray","bold":false, "with":[ {"translate":"mcm.map.list.2", "color":"dark_green", "with": ["TacoSquad", "TheLastOreo"]} ]}, "\n"]
