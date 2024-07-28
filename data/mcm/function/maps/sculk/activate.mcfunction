#> Forceload the sculk map
#forceload add 

#> Kill potential leftover entities
#kill @e[tag=MapEntity]

#> Set Player Spawnpoints
execute positioned 2989 104 952 run function mcm:game/markers/playerspawn
execute positioned 2983 109 955 run function mcm:game/markers/playerspawn
execute positioned 2988 104 975 run function mcm:game/markers/playerspawn
execute positioned 2984 113 961 run function mcm:game/markers/playerspawn
execute positioned 2982 119 961 run function mcm:game/markers/playerspawn
execute positioned 2982 104 983 run function mcm:game/markers/playerspawn
execute positioned 2983 104 1002 run function mcm:game/markers/playerspawn
execute positioned 3004 104 936 run function mcm:game/markers/playerspawn
execute positioned 2997 104 940 run function mcm:game/markers/playerspawn
execute positioned 2998 109 943 run function mcm:game/markers/playerspawn
execute positioned 2997 109 956 run function mcm:game/markers/playerspawn
execute positioned 2999 104 963 run function mcm:game/markers/playerspawn
execute positioned 2996 109 961 run function mcm:game/markers/playerspawn
execute positioned 2997 113 960 run function mcm:game/markers/playerspawn
execute positioned 3001 113 973 run function mcm:game/markers/playerspawn
execute positioned 3014 104 933 run function mcm:game/markers/playerspawn
execute positioned 3019 104 936 run function mcm:game/markers/playerspawn
execute positioned 3013 104 945 run function mcm:game/markers/playerspawn
execute positioned 3019 104 949 run function mcm:game/markers/playerspawn
execute positioned 3014 104 957 run function mcm:game/markers/playerspawn
execute positioned 3015 104 964 run function mcm:game/markers/playerspawn
execute positioned 3014 104 970 run function mcm:game/markers/playerspawn
execute positioned 3023 104 971 run function mcm:game/markers/playerspawn
execute positioned 3015 104 976 run function mcm:game/markers/playerspawn
execute positioned 3012 104 987 run function mcm:game/markers/playerspawn
execute positioned 3024 110 936 run function mcm:game/markers/playerspawn
execute positioned 3027 110 949 run function mcm:game/markers/playerspawn

#> Scrap-specific Spawnpoints
#execute positioned 2092 73 -1991 run function mcm:game/markers/scrapspawn 

#> Sound markers
#execute positioned 2023 64 -1985 run function mcm:game/markers/soundmarker

#> Spectator spawn
execute positioned 3000 125 972 rotated 0 180 run function mcm:game/markers/spectatorspawn

tellraw @a ["\n",{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.ready","underlined":true,"color":"green","bold":false}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.selected","color":"gray","bold":false,"with":[{"translate":"mcm.sculk.name","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"translate":"mcm.sculk.hover","color":"aqua"},{"text":"\n    --------\n","color":"dark_gray"},{"translate":"mcm.map.concept","color":"dark_aqua", "with":[ {"translate":"mcm.map.list.2", "color":"green", "with":[ "Brownie1111" ]} ]}]}}]}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.directed","color":"gray","bold":false, "with":[ {"translate":"mcm.map.list.1", "color":"dark_green", "with": ["Brownie1111"]} ]}, "\n"]
