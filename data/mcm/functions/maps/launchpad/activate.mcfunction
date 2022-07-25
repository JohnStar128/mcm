#> Forceload the floating islands map
forceload add -860 -1100 -1170 -1262
forceload add -860 -1100 -1128 -997

#> Kill potential leftover entities
kill @e[tag=MapEntity]

#> Lobby poster visual
fill 27 5 104 27 1 107 warped_trapdoor[open=true,facing=west] replace crimson_trapdoor

summon glow_squid -1016 48 -1097 {PersistenceRequired:1b,Tags:["MapEntity","Squid"],Invulnerable:1b,CustomName:"{\"text\":\"Radioactive Squid\"}",CustomNameVisible:1b,Persistent:1}

#> John's spawnpoint
summon marker -1029 53 -1268 {Tags:["MapEntity","JohnSpawn"]}

#> Blocky's spawnpoint
summon marker -1000 57 -1113 {Tags:["MapEntity","BlockySpawn"]}

#> spawnpoints
summon marker -1112 50 -1129 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1112 50 -1065 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1099 55 -1117 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1102 50 -1097 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1093 50 -1086 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1075 50 -1097 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1080 60 -1094 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1081 60 -1084 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1088 50 -1024 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1066 50 -1162 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1065 50 -1128 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1068 50 -1039 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1048 50 -1193 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1045 50 -1129 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1046 50 -1099 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1029 51 -1259 {Tags:["MapEntity","PlayerSpawn"]} 
summon marker -1034 64 -1252 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1032 51 -1225 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1034 60 -1201 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1040 50 -1041 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1016 51 -1230 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1016 53 -1164 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1016 50 -1071 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1022 50 -1001 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -999 51 -1264 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1004 56 -1114 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -1008 59 -1092 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -981 50 -1193 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -988 51 -1171 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -991 56 -1096 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -963 52 -1152 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -970 56 -1118 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -967 54 -1065 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -940 50 -1166 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -940 50 -1117 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -936 50 -1033 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -920 50 -1109 {Tags:["MapEntity","PlayerSpawn"]}

#> Spectator spawnpoint
summon marker -1016 82 -1160 {"Tags":["MapEntity","SpectatorSpawn"]}

tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Launch Complex","color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Launch \"Complex?\" I find it quite simple really.","color":"aqua"}}},"\n"]