#> Forceload the map
#forceload add -860 -1100 -1170 -1280
#forceload add -860 -1100 -1128 -997
#forceload add -961 -881 -1136 -976

#> Kill potential leftover entities
kill @e[tag=MapEntity]

summon glow_squid -1016 48 -1097 {PersistenceRequired:1b,Tags:["MapEntity","Squid"],Invulnerable:1b,CustomName:"{\"text\":\"Radioactive Squid\"}",Persistent:1}

#> John's spawnpoint
execute positioned -1029 53 -1268 run summon marker ~ ~ ~ {Tags:["MapEntity","JohnSpawn"]}
#> Blocky's spawnpoint
execute positioned -1000 57 -1112 run summon marker ~ ~ ~ {Tags:["MapEntity","BlockySpawn"]}

#> spawnpoints
execute positioned -1060 50 -1135 run function mcm:game/markers/playerspawn 
execute positioned -1037 56 -1077 run function mcm:game/markers/playerspawn 
execute positioned -997 50 -1193 run function mcm:game/markers/playerspawn 
execute positioned -970 46 -1159 run function mcm:game/markers/playerspawn 
execute positioned -1082 60 -1074 run function mcm:game/markers/playerspawn 
execute positioned -920 50 -1064 run function mcm:game/markers/playerspawn 
execute positioned -1016 51 -1193 run function mcm:game/markers/playerspawn 
execute positioned -1048 50 -1161 run function mcm:game/markers/playerspawn 
execute positioned -1070 50 -1017 run function mcm:game/markers/playerspawn 
execute positioned -1004 58 -1088 run function mcm:game/markers/playerspawn 
execute positioned -1082 50 -1065 run function mcm:game/markers/playerspawn 
execute positioned -1034 60 -1204 run function mcm:game/markers/playerspawn 
execute positioned -954 50 -1082 run function mcm:game/markers/playerspawn 
execute positioned -1033 50 -1001 run function mcm:game/markers/playerspawn 
execute positioned -946 50 -1044 run function mcm:game/markers/playerspawn 
execute positioned -1093 50 -1079 run function mcm:game/markers/playerspawn 
execute positioned -1025 51 -1230 run function mcm:game/markers/playerspawn 
execute positioned -931 50 -1087 run function mcm:game/markers/playerspawn 
execute positioned -1091 50 -1105 run function mcm:game/markers/playerspawn 
execute positioned -1047 50 -1101 run function mcm:game/markers/playerspawn 
execute positioned -1101 50 -1097 run function mcm:game/markers/playerspawn 
execute positioned -998 54 -1149 run function mcm:game/markers/playerspawn 
execute positioned -990 56 -1097 run function mcm:game/markers/playerspawn 
execute positioned -1029 53 -1168 run function mcm:game/markers/playerspawn 
execute positioned -1065 50 -1097 run function mcm:game/markers/playerspawn 
execute positioned -1029 51 -1258 run function mcm:game/markers/playerspawn 
execute positioned -1082 60 -1134 run function mcm:game/markers/playerspawn 
execute positioned -1090 50 -1157 run function mcm:game/markers/playerspawn 
execute positioned -972 56 -1119 run function mcm:game/markers/playerspawn 
execute positioned -1081 60 -1084 run function mcm:game/markers/playerspawn 
execute positioned -1055 50 -1026 run function mcm:game/markers/playerspawn 
execute positioned -1031 51 -1203 run function mcm:game/markers/playerspawn 
execute positioned -1016 56 -1116 run function mcm:game/markers/playerspawn 
execute positioned -1086 60 -1097 run function mcm:game/markers/playerspawn 
execute positioned -1082 50 -1088 run function mcm:game/markers/playerspawn 
execute positioned -1016 50 -1053 run function mcm:game/markers/playerspawn 
execute positioned -1003 51 -1230 run function mcm:game/markers/playerspawn 
execute positioned -1086 50 -1129 run function mcm:game/markers/playerspawn 
execute positioned -1053 50 -1063 run function mcm:game/markers/playerspawn 
execute positioned -983 56 -1081 run function mcm:game/markers/playerspawn 
execute positioned -1048 50 -1188 run function mcm:game/markers/playerspawn 
execute positioned -948 50 -1110 run function mcm:game/markers/playerspawn 
execute positioned -1042 56 -1114 run function mcm:game/markers/playerspawn 
execute positioned -936 50 -1151 run function mcm:game/markers/playerspawn 
execute positioned -1112 50 -1065 run function mcm:game/markers/playerspawn 

#> Scrap-specific Spawnpoints
execute positioned -1004 47 -1130 run function mcm:game/markers/scrapspawn 
execute positioned -1030 43 -1142 run function mcm:game/markers/scrapspawn 
execute positioned -988 47 -1110 run function mcm:game/markers/scrapspawn 
execute positioned -1082 43 -1134 run function mcm:game/markers/scrapspawn 
execute positioned -937 51 -1127 run function mcm:game/markers/scrapspawn 
execute positioned -1046 43 -1134 run function mcm:game/markers/scrapspawn 

#> Spectator spawnpoint
execute positioned -1016 82 -1160 run function mcm:game/markers/spectatorspawn

tellraw @a ["\n",{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.ready","underlined":true,"color":"green","bold":false}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.selected","color":"gray","bold":false,"with":[{"translate":"mcm.launchpad.name","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"translate":"mcm.launchpad.hover","color":"aqua"},{"text":"\n    --------\n","color":"dark_gray"},{"translate":"mcm.map.concept","color":"dark_aqua", "with":[ {"translate":"mcm.map.list.1", "color":"green", "with":[ "BlockyM_" ]} ]}]}}]}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.directed","color":"gray","bold":false, "with":[ {"translate":"mcm.map.list.1", "color":"dark_green", "with": ["BlockyM_"]} ]}, "\n"]
