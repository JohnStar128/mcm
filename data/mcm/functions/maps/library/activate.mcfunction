#> Forceload the library map
forceload add 1023 960 912 1039
forceload add 1023 960 1108 1039

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
execute as @e[type=marker,tag=available,tag=SpectatorSpawn,limit=1] positioned 933 150 1000 run function mcm:util/alloc_entity

#> Chandelier entity
summon marker 975 139 1000 {Tags:["MapEntity","Chandelier"]}

tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Library","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Having fun isn't hard when you have a library card","color":"aqua"},{"text":"\n    --------","color":"dark_gray"},{"text":"\nConcept by: ","color":"dark_aqua"},{"text":"_topaz","color":"green"}]}},"\n"]

#>Spawn the Overdue Books for Basement Stairs Unlock
function mcm:maps/library/bookspawns

#> Spawn markers for playing ambient sounds
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 959 132 1014 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 965 110 992 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 954 110 1008 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 991 121 1011 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 983 110 1008 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 958 132 991 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 945 144 973 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 952 132 978 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 991 110 993 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 965 132 1024 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 990 121 985 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 979 121 993 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 966 132 975 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 944 144 1027 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 995 110 1007 run function mcm:util/alloc_entity

execute at @e[type=marker,tag=available,tag=SpectatorSpawn,limit=1] as @e[type=marker,tag=!available,tag=sound_marker,limit=15,sort=nearest] run tag @s add PageSoundMarker

#> Clear any values the player might somehow have leftover from previous games
scoreboard players reset @s flipbook
scoreboard players reset @s books