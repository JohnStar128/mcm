#> Forceload the library map
forceload add 1023 960 912 1039

#> Kill potential leftover entities
kill @e[tag=MapEntity]

#> Set Player Spawnpoints
summon marker 937 110 1000 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 976 110 1019 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 977 110 981 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 1011 110 1000 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 974 122 1018 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 996 122 1019 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 996 122 981 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 974 122 982 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 974 132 979 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 997 132 974 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 938 132 1000 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 973 132 1016 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 997 143 1021 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 933 143 1005 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 961 143 969 {Tags:["MapEntity","PlayerSpawn"]}

#> Spectator spawnpoint
summon marker 933 150 1000 {"Tags":["MapEntity","SpectatorSpawn"]}

#> Chandelier entity
summon marker 975 139 1000 {Tags:["MapEntity","Chandelier"]}

tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Library","color":"dark_green"},"\n"]