#> Forceload the cabin map
#forceload add -1938 3000 -2030 3048

#> Kill potential leftover entities
kill @e[tag=MapEntity]

#> Set Player Spawnpoints
execute positioned -1985 94 3037 run function mcm:game/markers/playerspawn 
execute positioned -1975 98 3025 run function mcm:game/markers/playerspawn 
execute positioned -1978 114 3022 run function mcm:game/markers/playerspawn 
execute positioned -2014 121 3029 run function mcm:game/markers/playerspawn 
execute positioned -1992 114 3038 run function mcm:game/markers/playerspawn 
execute positioned -1977 122 3024 run function mcm:game/markers/playerspawn 
execute positioned -2000 104 3042 run function mcm:game/markers/playerspawn 
execute positioned -2007 114 3024 run function mcm:game/markers/playerspawn 
execute positioned -2002 104 3012 run function mcm:game/markers/playerspawn 
execute positioned -2018 104 3030 run function mcm:game/markers/playerspawn 
execute positioned -1978 114 3032 run function mcm:game/markers/playerspawn 
execute positioned -1993 114 3017 run function mcm:game/markers/playerspawn 
execute positioned -2024 114 3035 run function mcm:game/markers/playerspawn 
execute positioned -2017 94 3037 run function mcm:game/markers/playerspawn 
execute positioned -2009 95 3040 run function mcm:game/markers/playerspawn 
execute positioned -1982 104 3034 run function mcm:game/markers/playerspawn 
execute positioned -1968 94 3035 run function mcm:game/markers/playerspawn 
execute positioned -1975 104 3020 run function mcm:game/markers/playerspawn 
execute positioned -1945 104 3028 run function mcm:game/markers/playerspawn 
execute positioned -2021 94 3021 run function mcm:game/markers/playerspawn 
execute positioned -2018 114 3038 run function mcm:game/markers/playerspawn 
execute positioned -2005 94 3025 run function mcm:game/markers/playerspawn 
execute positioned -2009 104 3027 run function mcm:game/markers/playerspawn 
execute positioned -1977 93 3021 run function mcm:game/markers/playerspawn 

#> Let it snow
weather rain

#> Sound markers
#none

#> Spectator spawnpoint
execute positioned -2000 112 3022 run function mcm:game/markers/spectatorspawn

tellraw @a ["\n",{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.ready","underlined":true,"color":"green","bold":false}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.selected","color":"gray","bold":false,"with":[{"translate":"mcm.cabin.name","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"translate":"mcm.cabin.hover","color":"aqua"},{"text":"\n    --------\n","color":"dark_gray"},{"translate":"mcm.map.concept","color":"dark_aqua", "with":[ {"translate":"mcm.map.list.2", "color":"green", "with":[ "TacoSquad", "TheLastOreo" ]} ]}]}}]}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.directed","color":"gray","bold":false, "with":[ {"translate":"mcm.map.list.2", "color":"dark_green", "with": ["TacoSquad", "TheLastOreo"]} ]}, "\n"]
