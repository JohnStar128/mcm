#> Forceload the library map
#forceload add 1023 960 912 1039
#forceload add 1023 960 1108 1039

#> Kill potential leftover entities
kill @e[tag=MapEntity]

#> Set Player Spawnpoints
execute positioned 937 110 1000 run function mcm:game/markers/playerspawn
execute positioned 976 110 1019 run function mcm:game/markers/playerspawn
execute positioned 977 110 981 run function mcm:game/markers/playerspawn
execute positioned 1011 110 1000 run function mcm:game/markers/playerspawn
execute positioned 974 122 1018 run function mcm:game/markers/playerspawn
execute positioned 996 122 1019 run function mcm:game/markers/playerspawn
execute positioned 996 122 981 run function mcm:game/markers/playerspawn
execute positioned 974 122 982 run function mcm:game/markers/playerspawn
execute positioned 974 132 979 run function mcm:game/markers/playerspawn
execute positioned 997 132 974 run function mcm:game/markers/playerspawn
execute positioned 938 132 1000 run function mcm:game/markers/playerspawn
execute positioned 973 132 1016 run function mcm:game/markers/playerspawn
execute positioned 997 143 1021 run function mcm:game/markers/playerspawn
execute positioned 933 143 1005 run function mcm:game/markers/playerspawn
execute positioned 961 143 969 run function mcm:game/markers/playerspawn
execute positioned 938 143 1030 run function mcm:game/markers/playerspawn
execute positioned 942 121 1031 run function mcm:game/markers/playerspawn
execute positioned 943 132 971 run function mcm:game/markers/playerspawn
execute positioned 961 143 969 run function mcm:game/markers/playerspawn

#> Spectator spawnpoint
execute positioned 933 150 1000 run function mcm:game/markers/spectatorspawn

#> Chandelier entity
summon marker 975 139 1000 {Tags:["MapEntity","Chandelier"]}

tellraw @a ["\n",{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.ready","underlined":true,"color":"green","bold":false}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.selected","color":"gray","bold":false,"with":[{"translate":"mcm.library.name","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"translate":"mcm.library.hover","color":"aqua"},{"text":"\n    --------\n","color":"dark_gray"},{"translate":"mcm.map.concept","color":"dark_aqua", "with":[ {"translate":"mcm.map.list.1", "color":"green", "with":[ "_topaz" ]} ]}]}}]}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.directed","color":"gray","bold":false, "with":[ {"translate":"mcm.map.list.1", "color":"dark_green", "with": ["_topaz"]} ]}, "\n"]


#>Spawn the Overdue Books for Basement Stairs Unlock
function mcm:maps/library/bookspawns

#> Spawn markers for playing ambient sounds
execute positioned 959 132 1014 run function mcm:game/markers/soundmarker
execute positioned 965 110 992 run function mcm:game/markers/soundmarker
execute positioned 954 110 1008 run function mcm:game/markers/soundmarker
execute positioned 991 121 1011 run function mcm:game/markers/soundmarker
execute positioned 983 110 1008 run function mcm:game/markers/soundmarker
execute positioned 958 132 991 run function mcm:game/markers/soundmarker
execute positioned 945 144 973 run function mcm:game/markers/soundmarker
execute positioned 952 132 978 run function mcm:game/markers/soundmarker
execute positioned 991 110 993 run function mcm:game/markers/soundmarker
execute positioned 965 132 1024 run function mcm:game/markers/soundmarker
execute positioned 990 121 985 run function mcm:game/markers/soundmarker
execute positioned 979 121 993 run function mcm:game/markers/soundmarker
execute positioned 966 132 975 run function mcm:game/markers/soundmarker
execute positioned 944 144 1027 run function mcm:game/markers/soundmarker
execute positioned 995 110 1007 run function mcm:game/markers/soundmarker

#> Clear any values the player might somehow have leftover from previous games
scoreboard players reset @s flipbook
scoreboard players reset @s books
