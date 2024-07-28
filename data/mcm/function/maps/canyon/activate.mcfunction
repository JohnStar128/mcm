#> Kill potential leftover entities
kill @e[tag=MapEntity]

#> Determine which partition to use
execute store result score $canyon_partition CmdData run random value 1..2

scoreboard players set $gametimer CmdData 12000

#> Set Player Spawnpoints - partition 1
execute if score $canyon_partition CmdData matches 1 positioned 2965 -22 3015 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2965 -19 3031 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2970 -28 3041 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2963 -22 3043 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2987 -30 2978 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2990 -20 2987 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2976 -30 3005 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2977 -25 2997 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2985 -20 3036 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2989 -28 3053 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2989 -24 3050 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2986 -11 3055 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3006 -18 2990 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3003 -11 2987 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2998 -15 2997 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2998 -20 3022 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 2992 -10 3010 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3019 -19 2952 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3015 -20 2967 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3021 -21 3002 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3017 -15 3005 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3015 -11 2992 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3019 -19 3018 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3013 -20 3036 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3008 -11 3031 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3019 -11 3034 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3016 -26 3050 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3020 -14 3063 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3026 -28 2999 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3027 -21 3025 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3045 -20 2975 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3042 -16 3002 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3044 -21 3028 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 1 positioned 3045 -20 3044 run function mcm:game/markers/playerspawn

#> Set Player Spawnpoints - partition 2
execute if score $canyon_partition CmdData matches 2 positioned 2886 -15 2989 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2895 -9 2976 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2888 -9 2995 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2885 -2 3007 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2909 2 2947 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2901 2 2953 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2902 -17 2965 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2898 -3 2988 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2911 -9 3003 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2918 1 2932 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2925 -12 2945 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2920 2 2947 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2920 2 2953 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2925 -11 2961 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2913 -10 2966 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2912 1 2971 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2913 -9 2985 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2922 -4 2985 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2925 -9 3006 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2915 -4 3007 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2937 0 2920 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2933 -11 2933 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2941 -11 2936 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2931 -1 2939 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2929 -11 2945 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2940 -35 2974 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2931 -10 2982 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2950 -30 3007 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2953 -10 2994 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2954 -9 3004 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2957 -9 3024 run function mcm:game/markers/playerspawn
execute if score $canyon_partition CmdData matches 2 positioned 2963 -13 3001 run function mcm:game/markers/playerspawn

#> Spectator spawnpoint
execute if score $canyon_partition CmdData matches 1 positioned 3000 -5 3022 run function mcm:game/markers/spectatorspawn
execute if score $canyon_partition CmdData matches 2 positioned 2937 5 2993 run function mcm:game/markers/spectatorspawn

#> Summon tnt
# partition 1
summon block_display 3013.25 -9.0 3033.25 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
summon interaction 3013 -9.0 3033 {Tags:["canyon_tnt_interaction"],height:0.5f,width:0.5f,response:1b}
summon block_display 2992.25 -8.0 3009.25 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
summon interaction 2992 -8.0 3009 {Tags:["canyon_tnt_interaction"],height:0.5f,width:0.5f,response:1b}
summon block_display 3009.25 -24.0 3049.25 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
summon interaction 3009 -24.0 3049 {Tags:["canyon_tnt_interaction"],height:0.5f,width:0.5f,response:1b}
summon block_display 2967.25 -24.0 3003.25 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
summon interaction 2967 -24.0 3003 {Tags:["canyon_tnt_interaction"],height:0.5f,width:0.5f,response:1b}
summon block_display 2978.25 -29.0 2980.25 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
summon interaction 2978 -29.0 2980 {Tags:["canyon_tnt_interaction"],height:0.5f,width:0.5f,response:1b}
# partition 2
summon block_display 2934.25 0.0 2935.25 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
summon interaction 2934 0.0 2935 {Tags:["canyon_tnt_interaction"],height:0.5f,width:0.5f,response:1b}
summon block_display 2898.25 3.5 2962.25 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
summon interaction 2898 3.5 2962 {Tags:["canyon_tnt_interaction"],height:0.5f,width:0.5f,response:1b}
summon block_display 2885.25 -13.0 2987.25 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
summon interaction 2885 -13.0 2987 {Tags:["canyon_tnt_interaction"],height:0.5f,width:0.5f,response:1b}
summon block_display 2959.25 -8.0 3011.25 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
summon interaction 2959 -8.0 3011 {Tags:["canyon_tnt_interaction"],height:0.5f,width:0.5f,response:1b}
summon block_display 2941.25 -34.0 2975.25 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
summon interaction 2941 -34.0 2975 {Tags:["canyon_tnt_interaction"],height:0.5f,width:0.5f,response:1b}

summon interaction 2971 -28 3045 {Tags:["canyon_place_tnt_interaction"],height:1f,width:1f,response:1b}
summon interaction 2957 -27 3044 {Tags:["canyon_place_tnt_interaction"],height:1f,width:1f,response:1b}

execute unless entity @e[type=item_display,tag=canyon_hat_display] run summon item_display 2964.75 -27.6 3046.25 {Tags:["canyon_hat_display"],item:{id:"diamond_hoe",Count:1b,tag:{CustomModelData:1120}},item_display:"head",Rotation:[45f]}
execute unless entity @e[type=interaction,tag=canyon_hat_interaction] run summon interaction 2964.75 -27.6 3046.25 {Tags:["canyon_hat_interaction"],height:1f,width:1f,response:1b}

tellraw @a ["\n",{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.ready","underlined":true,"color":"green","bold":false}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.selected","color":"gray","bold":false,"with":[{"translate":"mcm.canyon.name","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"translate":"mcm.canyon.hover","color":"aqua"},{"text":"\n    --------\n","color":"dark_gray"},{"translate":"mcm.map.concept","color":"dark_aqua", "with":[ {"translate":"mcm.map.list.1", "color":"green", "with":[ "_topaz" ]} ]}]}}]}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.directed","color":"gray","bold":false, "with":[ {"translate":"mcm.map.list.1", "color":"dark_green", "with": ["_topaz"]} ]}, "\n"]
