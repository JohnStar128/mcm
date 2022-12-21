scoreboard players add $launchTime CmdData 1
execute if score $launchTime CmdData matches 1..55 run particle minecraft:explosion -1015.33 53.00 -1096.691 3 3 3 3 1000 force
execute if score $launchTime CmdData matches 1..55 run particle minecraft:campfire_signal_smoke -1015.33 48.00 -1096.691 2 2 2 .1 10 force
execute if score $launchTime CmdData matches 5 run function mcm:maps/launchpad/rockettemp/catwalkaway
execute if score $launchTime CmdData matches 1 run playsound minecraft:rocketlaunch block @a -1015 56 -1096 10 1 1

execute if score $launchTime CmdData matches 1..20 run particle minecraft:lava -1015.33 48.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 20 run function mcm:maps/launchpad/rockettemp/secondpos
execute if score $launchTime CmdData matches 21 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~5.1 ~
execute if score $launchTime CmdData matches 21..36 run particle minecraft:lava -1015.33 53.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 35 run function mcm:maps/launchpad/rockettemp/thirdpos
execute if score $launchTime CmdData matches 36 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~5.1 ~
execute if score $launchTime CmdData matches 36..50 run particle minecraft:lava -1015.33 58.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 50 run function mcm:maps/launchpad/rockettemp/fourthpos
execute if score $launchTime CmdData matches 51 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~5.1 ~
execute if score $launchTime CmdData matches 51..65 run particle minecraft:lava -1015.33 63.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 65 run function mcm:maps/launchpad/rockettemp/fifthpos
execute if score $launchTime CmdData matches 66 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 66..80 run particle minecraft:lava -1015.33 73.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 80 run function mcm:maps/launchpad/rockettemp/sixthpos
execute if score $launchTime CmdData matches 81 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 81..95 run particle minecraft:lava -1015.33 83.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 95 run function mcm:maps/launchpad/rockettemp/seventhpos
execute if score $launchTime CmdData matches 96 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 96..110 run particle minecraft:lava -1015.33 93.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 110 run function mcm:maps/launchpad/rockettemp/eighthpos
execute if score $launchTime CmdData matches 111 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 111..120 run particle minecraft:lava -1015.33 103.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 120 run function mcm:maps/launchpad/rockettemp/ninthpos
execute if score $launchTime CmdData matches 121 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 121..130 run particle minecraft:lava -1015.33 113.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 130 run function mcm:maps/launchpad/rockettemp/tenthpos
execute if score $launchTime CmdData matches 131 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 131..140 run particle minecraft:lava -1015.33 123.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 140 run function mcm:maps/launchpad/rockettemp/eleventhpos
execute if score $launchTime CmdData matches 141 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 141..150 run particle minecraft:lava -1015.33 133.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 150 run function mcm:maps/launchpad/rockettemp/twelfthpos
execute if score $launchTime CmdData matches 151 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 151..160 run particle minecraft:lava -1015.33 143.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 160 run function mcm:maps/launchpad/rockettemp/thirteenthpos
execute if score $launchTime CmdData matches 161 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 161..170 run particle minecraft:lava -1015.33 153.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 170 run function mcm:maps/launchpad/rockettemp/fourteenthpos
execute if score $launchTime CmdData matches 171 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 171..180 run particle minecraft:lava -1015.33 163.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 180 run function mcm:maps/launchpad/rockettemp/fifteenthpos
execute if score $launchTime CmdData matches 181 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 181..190 run particle minecraft:lava -1015.33 173.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 190 run function mcm:maps/launchpad/rockettemp/sixteenthpos
execute if score $launchTime CmdData matches 191 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 191..200 run particle minecraft:lava -1015.33 183.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 200 run function mcm:maps/launchpad/rockettemp/seventeenthpos
execute if score $launchTime CmdData matches 201 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 201..210 run particle minecraft:lava -1015.33 193.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 210 run function mcm:maps/launchpad/rockettemp/eighteenthpos
execute if score $launchTime CmdData matches 211 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~10.1 ~
execute if score $launchTime CmdData matches 211..220 run particle minecraft:lava -1015.33 203.00 -1096.691 2 5 2 1 500 force

execute if score $launchTime CmdData matches 220 run function mcm:maps/launchpad/rockettemp/clearrocket
execute if score $launchTime CmdData matches 221 as @a[tag=launch_player,tag=!spectating] at @s run tp @s ~ ~-281 ~
execute if score $launchTime CmdData matches 220 as @a[tag=launch_player,tag=!spectating,advancements={mcm:secrets/launchpad/spaceship=false}] at @s run advancement grant @s only mcm:secrets/launchpad/spaceship

# fire
execute if score $launchTime CmdData matches 5 run fill -1022 50 -1091 -1010 50 -1091 fire
execute if score $launchTime CmdData matches 7 run fill -1022 50 -1090 -1010 50 -1090 fire
execute if score $launchTime CmdData matches 9 run fill -1022 50 -1089 -1010 50 -1089 fire
execute if score $launchTime CmdData matches 11 run fill -1022 50 -1088 -1010 50 -1088 fire
execute if score $launchTime CmdData matches 13 run fill -1022 50 -1087 -1010 50 -1087 fire
execute if score $launchTime CmdData matches 15 run fill -1022 50 -1086 -1010 50 -1086 fire
execute if score $launchTime CmdData matches 17 run fill -1022 50 -1085 -1010 50 -1085 fire
execute if score $launchTime CmdData matches 19 run fill -1022 50 -1084 -1010 50 -1084 fire
execute if score $launchTime CmdData matches 21 run fill -1022 50 -1083 -1010 50 -1083 fire
execute if score $launchTime CmdData matches 23 run fill -1022 50 -1082 -1010 50 -1082 fire
execute if score $launchTime CmdData matches 25 run fill -1022 50 -1081 -1010 50 -1081 fire
execute if score $launchTime CmdData matches 27 run fill -1022 50 -1080 -1010 50 -1080 fire
execute if score $launchTime CmdData matches 29 run fill -1022 50 -1079 -1010 50 -1079 fire
execute if score $launchTime CmdData matches 31 run fill -1022 50 -1078 -1010 50 -1078 fire
execute if score $launchTime CmdData matches 33 run fill -1022 50 -1077 -1010 50 -1077 fire
execute if score $launchTime CmdData matches 35 run fill -1022 50 -1076 -1010 50 -1076 fire
execute if score $launchTime CmdData matches 37 run fill -1022 50 -1075 -1010 50 -1075 fire
execute if score $launchTime CmdData matches 39 run fill -1022 50 -1074 -1010 50 -1074 fire
execute if score $launchTime CmdData matches 41 run fill -1022 50 -1073 -1010 50 -1073 fire
execute if score $launchTime CmdData matches 43 run fill -1022 50 -1072 -1010 50 -1072 fire
execute if score $launchTime CmdData matches 45 run fill -1022 50 -1071 -1010 50 -1071 fire

execute if score $launchTime CmdData matches 47 run fill -1022 50 -1070 -1017 50 -1070 fire
execute if score $launchTime CmdData matches 47 run fill -1015 50 -1070 -1010 50 -1070 fire

execute if score $launchTime CmdData matches 49 run fill -1022 50 -1069 -1017 50 -1069 fire
execute if score $launchTime CmdData matches 49 run fill -1015 50 -1069 -1010 50 -1069 fire

execute if score $launchTime CmdData matches 51 run fill -1023 50 -1068 -1017 50 -1068 fire
execute if score $launchTime CmdData matches 51 run fill -1015 50 -1068 -1009 50 -1068 fire

execute if score $launchTime CmdData matches 53 run fill -1023 50 -1067 -1018 50 -1067 fire
execute if score $launchTime CmdData matches 53 run fill -1014 50 -1067 -1009 50 -1067 fire

execute if score $launchTime CmdData matches 55 run fill -1023 50 -1066 -1018 50 -1066 fire
execute if score $launchTime CmdData matches 55 run fill -1014 50 -1066 -1009 50 -1066 fire

execute if score $launchTime CmdData matches 57 run fill -1024 50 -1065 -1018 50 -1065 fire
execute if score $launchTime CmdData matches 57 run fill -1014 50 -1065 -1008 50 -1065 fire

execute if score $launchTime CmdData matches 59 run fill -1024 50 -1064 -1019 50 -1064 fire
execute if score $launchTime CmdData matches 59 run fill -1013 50 -1064 -1008 50 -1064 fire

execute if score $launchTime CmdData matches 61 run fill -1024 50 -1063 -1020 50 -1063 fire
execute if score $launchTime CmdData matches 61 run fill -1012 50 -1063 -1008 50 -1063 fire

# water
execute if score $launchTime CmdData matches 220 run setblock -1025 52 -1066 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1024 52 -1069 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1023 52 -1072 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1023 52 -1075 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1023 52 -1078 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1023 52 -1081 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1023 52 -1084 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1007 52 -1066 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1008 52 -1069 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1009 52 -1072 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1009 52 -1075 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1009 52 -1078 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1009 52 -1081 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1009 52 -1084 stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1023 52 -1087 smooth_stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1009 52 -1087 smooth_stone_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1023 52 -1090 waxed_exposed_cut_copper_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1022 52 -1097 waxed_exposed_cut_copper_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1016 52 -1103 waxed_exposed_cut_copper_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1010 52 -1097 waxed_exposed_cut_copper_slab[type=top,waterlogged=true] replace
execute if score $launchTime CmdData matches 220 run setblock -1009 52 -1090 waxed_exposed_cut_copper_slab[type=top,waterlogged=true] replace

# remove water
execute if score $launchTime CmdData matches 260 run setblock -1025 52 -1066 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1024 52 -1069 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1023 52 -1072 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1023 52 -1075 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1023 52 -1078 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1023 52 -1081 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1023 52 -1084 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1007 52 -1066 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1008 52 -1069 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1009 52 -1072 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1009 52 -1075 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1009 52 -1078 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1009 52 -1081 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1009 52 -1084 stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1023 52 -1087 smooth_stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1009 52 -1087 smooth_stone_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1023 52 -1090 waxed_exposed_cut_copper_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1022 52 -1097 waxed_exposed_cut_copper_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1016 52 -1103 waxed_exposed_cut_copper_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1010 52 -1097 waxed_exposed_cut_copper_slab[type=top,waterlogged=false] replace
execute if score $launchTime CmdData matches 260 run setblock -1009 52 -1090 waxed_exposed_cut_copper_slab[type=top,waterlogged=false] replace
