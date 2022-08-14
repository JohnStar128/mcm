#> Forceload the Vineyard map
forceload add 867 -2907 1087 -2864
forceload add 915 -3057 1136 -2864

#> Kill potential leftover entities
kill @e[tag=MapEntity]

scoreboard players set $gametimer CmdData 12000

#> Lobby poster visual
fill 27 5 114 27 1 117 warped_trapdoor[open=true,facing=west] replace crimson_trapdoor

#> Set Player Spawnpoints
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 902 31 -2944 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 962 33 -3071 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 979 31 -2981 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1088 31 -3009 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 947 31 -2933 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1052 31 -3000 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 944 35 -3021 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 894 32 -3078 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1016 31 -2941 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1015 30 -3078 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1033 31 -2894 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 913 32 -2978 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1040 31 -2935 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 917 31 -3101 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 968 31 -3096 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 951 33 -2975 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1117 31 -2981 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1026 34 -2968 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1114 33 -2939 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 915 33 -3062 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 995 32 -3011 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1070 33 -2888 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1082 31 -3039 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1064 31 -2969 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 886 31 -2969 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 954 34 -3040 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 987 31 -2937 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 994 30 -2903 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 899 33 -3042 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1069 31 -2933 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1031 30 -3053 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 899 33 -3021 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 949 31 -2893 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1098 35 -2911 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1013 31 -3017 run function mcm:util/alloc_entity 

#> Sound markers TODO


#> Spectator spawnpoint
execute as @e[type=marker,tag=available,tag=SpectatorSpawn,limit=1] positioned 1000 80 -3000 run function mcm:util/alloc_entity

tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Gumdrop Plains","color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"A world of pure imagination...","color":"aqua"}}},"\n"]