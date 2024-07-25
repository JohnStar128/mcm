#> Forceload Gumdrop Plains
#forceload add 780 -3187 1194 -2795

#> Kill potential leftover entities
kill @e[tag=MapEntity]

scoreboard players set $gametimer CmdData 12000

time set noon

execute positioned 891 33 -3027 run function mcm:game/markers/playerspawn
execute positioned 891 33 -3010 run function mcm:game/markers/playerspawn
execute positioned 889 32 -2994 run function mcm:game/markers/playerspawn
execute positioned 901 32 -3079 run function mcm:game/markers/playerspawn
execute positioned 896 33 -3045 run function mcm:game/markers/playerspawn
execute positioned 909 31 -2973 run function mcm:game/markers/playerspawn
execute positioned 942 35 -3030 run function mcm:game/markers/playerspawn
execute positioned 935 33 -2973 run function mcm:game/markers/playerspawn
execute positioned 956 32 -2975 run function mcm:game/markers/playerspawn
execute positioned 962 31 -2938 run function mcm:game/markers/playerspawn
execute positioned 982 30 -2903 run function mcm:game/markers/playerspawn
execute positioned 1016 30 -3079 run function mcm:game/markers/playerspawn
execute positioned 1009 30 -2891 run function mcm:game/markers/playerspawn
execute positioned 1030 30 -3052 run function mcm:game/markers/playerspawn
execute positioned 1032 30 -3034 run function mcm:game/markers/playerspawn
execute positioned 1037 33 -2987 run function mcm:game/markers/playerspawn
execute positioned 1025 34 -2971 run function mcm:game/markers/playerspawn
execute positioned 1037 33 -2952 run function mcm:game/markers/playerspawn
execute positioned 1055 40 -3026 run function mcm:game/markers/playerspawn
execute positioned 1053 31 -2918 run function mcm:game/markers/playerspawn
execute positioned 1042 31 -2908 run function mcm:game/markers/playerspawn
execute positioned 1065 30 -3046 run function mcm:game/markers/playerspawn
execute positioned 1070 31 -2999 run function mcm:game/markers/playerspawn
execute positioned 1066 31 -2982 run function mcm:game/markers/playerspawn
execute positioned 1057 31 -2946 run function mcm:game/markers/playerspawn
execute positioned 1066 34 -2910 run function mcm:game/markers/playerspawn
execute positioned 1084 37 -2990 run function mcm:game/markers/playerspawn
execute positioned 1076 31 -2960 run function mcm:game/markers/playerspawn
execute positioned 1076 35 -2928 run function mcm:game/markers/playerspawn
execute positioned 1090 36 -2952 run function mcm:game/markers/playerspawn

#> Spectator spawnpoint
execute positioned 1006 74 -3043 run function mcm:game/markers/spectatorspawn

tellraw @a ["\n",{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.ready","underlined":true,"color":"green","bold":false}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.selected","color":"gray","bold":false,"with":[{"translate":"mcm.gumdrop.name","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"translate":"mcm.gumdrop.hover","color":"aqua"},{"text":"\n    --------\n","color":"dark_gray"},{"translate":"mcm.map.concept","color":"dark_aqua", "with":[ {"translate":"mcm.map.list.1", "color":"green", "with":[ "Kurusa" ]} ]}]}}]}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.directed","color":"gray","bold":false, "with":[ {"translate":"mcm.map.list.2", "color":"dark_green", "with": ["Kurusa", "Brownie1111"]} ]}, "\n"]
