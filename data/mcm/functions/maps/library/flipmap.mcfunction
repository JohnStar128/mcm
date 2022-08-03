#> Timer
scoreboard players add $fliptimer CmdData 1

scoreboard players set $flipbook CmdData 0

#> Spawnpoints
execute if score $fliptimer CmdData matches 155.. run kill @e[tag=MapEntity]
execute if score $fliptimer CmdData matches 155 as @e[type=marker,tag=!available,tag=PlayerSpawn] run function mcm:util/dealloc_entity

execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1036 125 971 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1036 148 980 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1036 159 980 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1035 170 1000 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1035 159 1020 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1037 148 1020 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1055 126 989 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1055 137 976 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1043 170 985 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1055 170 1006 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1042 124 1021 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1043 137 1026 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1059 148 983 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1068 170 995 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1058 159 992 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1069 124 1022 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1061 148 1016 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1085 125 973 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1083 137 1019 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1089 137 984 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1088 148 1009 run function mcm:util/alloc_entity
execute if score $fliptimer CmdData matches 156 as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1091 125 1010 run function mcm:util/alloc_entity

execute if score $fliptimer CmdData matches 156 run summon marker 1074 129 999 {Tags:["MapEntity","SpectatorSpawn"]}

#> Teleport people
execute as @a[tag=queued] at @s if score $fliptimer CmdData matches 156 run function mcm:maps/library/tptospawn

execute if score $fliptimer CmdData matches 156 run advancement grant @a[tag=queued,advancements={mcm:secrets/library=false}] only mcm:secrets/library

execute if score $fliptimer CmdData matches 156 run scoreboard players set $flippingmap CmdData 0
execute if score $fliptimer CmdData matches 156 run scoreboard players set $flipbook CmdData 0
execute if score $fliptimer CmdData matches 156 run scoreboard players reset @a flipmap
execute if score $fliptimer CmdData matches 156 run scoreboard players set $library_flip CmdData 1
execute if score $fliptimer CmdData matches 156 run scoreboard players set $fliptimer CmdData 0

summon marker 1047 156 980 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1066 173 1003 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1036 173 1010 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1045 132 1011 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1065 130 1021 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1048 162 1014 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1042 139 986 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1040 172 981 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1056 151 1018 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1079 128 977 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1043 132 985 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1064 172 986 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1018 165 1000 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1046 173 992 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1074 149 1005 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1080 155 993 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1041 162 988 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1052 173 1013 {Tags:["MapEntity","SpookySoundMarker"]} 
summon marker 1056 141 1024 {Tags:["MapEntity","SpookySoundMarker"]} 