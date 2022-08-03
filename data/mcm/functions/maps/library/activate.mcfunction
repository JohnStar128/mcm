#> Forceload the library map
forceload add 1023 960 912 1039

#> Kill potential leftover entities
kill @e[tag=MapEntity]

# Lobby poster visual
fill 27 5 88 27 1 91 warped_trapdoor[open=true,facing=west] replace crimson_trapdoor

#> Set Player Spawnpoints
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 937 110 1000 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 976 110 1019 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 977 110 981 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1011 110 1000 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 974 122 1018 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 996 122 1019 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 996 122 981 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 974 122 982 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 974 132 979 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 997 132 974 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 938 132 1000 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 973 132 1016 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 997 143 1021 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 933 143 1005 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 961 143 969 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 938 143 1030 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 942 121 1031 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 943 132 971 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 961 143 969 run function mcm:util/alloc_entity

#> Spectator spawnpoint
summon marker 933 150 1000 {"Tags":["MapEntity","SpectatorSpawn"]}

#> Chandelier entity
summon marker 975 139 1000 {Tags:["MapEntity","Chandelier"]}

tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Library","color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Shhhh...","color":"aqua"}}},"\n"]

#>Spawn the Overdue Books for Basement Stairs Unlock
function mcm:maps/library/bookspawns

#> Spawn markers for playing ambient sounds
summon marker 959 132 1014 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 965 110 992 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 954 110 1008 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 991 121 1011 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 983 110 1008 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 958 132 991 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 945 144 973 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 952 132 978 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 991 110 993 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 965 132 1024 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 990 121 985 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 979 121 993 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 966 132 975 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 944 144 1027 {Tags:["MapEntity","PageSoundMarker"]}
summon marker 995 110 1007 {Tags:["MapEntity","PageSoundMarker"]}

#> Clear any values the player might somehow have leftover from previous games
scoreboard players reset @s flipbook
scoreboard players reset @s books