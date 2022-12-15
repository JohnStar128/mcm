#> Forceload the map
forceload add -860 -1100 -1170 -1280
forceload add -860 -1100 -1128 -997
forceload add -961 -881 -1136 -976

#> Kill potential leftover entities
kill @e[tag=MapEntity]

#> Lobby poster visual
fill 27 5 104 27 1 107 warped_trapdoor[open=true,facing=west] replace crimson_trapdoor

summon glow_squid -1016 48 -1097 {PersistenceRequired:1b,Tags:["MapEntity","Squid"],Invulnerable:1b,CustomName:"{\"text\":\"Radioactive Squid\"}",Persistent:1}

#> John's spawnpoint
execute as @e[type=marker,tag=available,tag=JohnSpawn,limit=1] positioned -1029 53 -1268 run function mcm:util/alloc_entity

#> Blocky's spawnpoint
execute as @e[type=marker,tag=available,tag=BlockySpawn,limit=1] positioned -1000 57 -1112 run function mcm:util/alloc_entity

#> spawnpoints
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1060 50 -1135 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1037 56 -1077 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -997 50 -1193 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -970 46 -1159 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1082 60 -1074 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -920 50 -1064 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1016 51 -1193 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1048 50 -1161 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1070 50 -1017 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1004 58 -1088 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1082 50 -1065 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1034 60 -1204 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -954 50 -1082 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1033 50 -1001 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -946 50 -1044 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1093 50 -1079 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1025 51 -1230 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -931 50 -1087 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1091 50 -1105 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1047 50 -1101 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1101 50 -1097 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -998 54 -1149 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -990 56 -1097 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1029 53 -1168 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1065 50 -1097 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1029 51 -1258 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1082 60 -1134 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1090 50 -1157 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -972 56 -1119 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1081 60 -1084 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1055 50 -1026 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1031 51 -1203 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1016 56 -1116 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1086 60 -1097 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1082 50 -1088 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1016 50 -1053 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1003 51 -1230 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1086 50 -1129 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1053 50 -1063 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -983 56 -1081 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1048 50 -1188 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -948 50 -1110 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1042 56 -1114 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -936 50 -1151 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1112 50 -1065 run function mcm:util/alloc_entity 

#> Scrap-specific Spawnpoints
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned -1004 47 -1130 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned -1030 43 -1142 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned -988 47 -1110 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned -1082 43 -1134 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned -937 51 -1127 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned -1046 43 -1134 run function mcm:util/alloc_entity 

#> Spectator spawnpoint
execute as @e[type=marker,tag=available,tag=SpectatorSpawn,limit=1] positioned -1016 82 -1160 run function mcm:util/alloc_entity

tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Launch Complex","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Launch \"Complex?\" I find it quite simple really.","color":"aqua"},{"text":"\n    --------","color":"dark_gray"},{"text":"\nConcept by: ","color":"dark_aqua"},{"text":"BlockyM_","color":"green"}]}},"\n"]