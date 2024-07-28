#> Forceload the cyberpunk map
#forceload add -2178 1968 -1969 2135

#> Kill potential leftover entities
kill @e[tag=MapEntity]

scoreboard players set $gametimer CmdData 12000

#> Set Player Spawnpoints
execute positioned -2054 72 2028 run function mcm:game/markers/playerspawn 
execute positioned -2025 72 2007 run function mcm:game/markers/playerspawn 
execute positioned -1997 72 2011 run function mcm:game/markers/playerspawn 
execute positioned -2098 72 2077 run function mcm:game/markers/playerspawn 
execute positioned -2030 72 2037 run function mcm:game/markers/playerspawn 
execute positioned -2116 72 2039 run function mcm:game/markers/playerspawn 
execute positioned -2099 72 2025 run function mcm:game/markers/playerspawn 
execute positioned -2069 81 2037 run function mcm:game/markers/playerspawn 
execute positioned -2076 72 2009 run function mcm:game/markers/playerspawn 
execute positioned -2119 72 2015 run function mcm:game/markers/playerspawn 
execute positioned -1989 75 2055 run function mcm:game/markers/playerspawn 
execute positioned -2041 75 2056 run function mcm:game/markers/playerspawn 
execute positioned -2047 74 2015 run function mcm:game/markers/playerspawn 
execute positioned -2103 72 2064 run function mcm:game/markers/playerspawn 
execute positioned -2067 76 2037 run function mcm:game/markers/playerspawn 
execute positioned -1999 73 2082 run function mcm:game/markers/playerspawn 
execute positioned -2137 72 2076 run function mcm:game/markers/playerspawn 
execute positioned -2035 72 2077 run function mcm:game/markers/playerspawn 
execute positioned -2091 72 1997 run function mcm:game/markers/playerspawn 
execute positioned -2020 78 2071 run function mcm:game/markers/playerspawn 
execute positioned -2041 72 1984 run function mcm:game/markers/playerspawn 
execute positioned -2081 72 2070 run function mcm:game/markers/playerspawn 
execute positioned -2128 74 2052 run function mcm:game/markers/playerspawn 
execute positioned -2081 72 2047 run function mcm:game/markers/playerspawn 
execute positioned -1998 75 2037 run function mcm:game/markers/playerspawn 
execute positioned -2067 72 2089 run function mcm:game/markers/playerspawn 
execute positioned -2101 72 2013 run function mcm:game/markers/playerspawn 
execute positioned -2012 72 2054 run function mcm:game/markers/playerspawn 
execute positioned -2020 72 2071 run function mcm:game/markers/playerspawn 
execute positioned -2097 72 2036 run function mcm:game/markers/playerspawn 

#> Sound markers

execute positioned -2049 81 2030 run function mcm:game/markers/soundmarker 
execute positioned -2049 81 2030 run function mcm:game/markers/soundmarker 
execute positioned -2074 85 2046 run function mcm:game/markers/soundmarker 
execute positioned -2074 85 2028 run function mcm:game/markers/soundmarker 

#> Spectator spawnpoint
execute positioned -2070 100 2038 run function mcm:game/markers/spectatorspawn

tellraw @a ["\n",{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.ready","underlined":true,"color":"green","bold":false}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.selected","color":"gray","bold":false,"with":[{"translate":"mcm.cyberpunk.name","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"translate":"mcm.cyberpunk.hover","color":"aqua"},{"text":"\n    --------\n","color":"dark_gray"},{"translate":"mcm.map.concept","color":"dark_aqua", "with":[ {"translate":"mcm.map.list.2", "color":"green", "with":[ "TacoSquad", "TheLastOreo" ]} ]}]}}]}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.directed","color":"gray","bold":false, "with":[ {"translate":"mcm.map.list.2", "color":"dark_green", "with": ["TacoSquad", "TheLastOreo"]} ]}, "\n"]
