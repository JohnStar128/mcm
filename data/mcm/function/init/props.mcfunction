# Data for creating props
data remove storage mcm:props maps
execute as @e[type=interaction,tag=interactable,tag=prop] run function mcm:util/interactable/remove
kill @e[tag=prop]

#> Storage format
# maps.<map_name>: 
#       The map to summon props for, using its internal name.
# maps.<map_name>.prop_types:
#       A list of all the map's prop types.
# maps.<map_name>.<prop_type>:
#       A list of all instances of this prop in the map.
#
#> Usage: function mcm:props/summon {map:"<map_name>"}

data modify storage mcm:props maps.lobby set value { \
        prop_types: [ \
                "theater_chair", \
                "cosmetic_equip", \
                "diner_sign" \
        ], \
        theater_chair:[ \
                {pos:"11 1.5 94",tag:"deferred_queue"}, {pos:"11 1.5 95",tag:"deferred_queue"}, {pos:"11 1.5 96",tag:"deferred_queue"}, {pos:"11 1.5 112",tag:"deferred_queue"}, {pos:"11 1.5 113",tag:"deferred_queue"}, {pos:"11 1.5 114",tag:"deferred_queue"}, \
                {pos:"9 1.5 94",tag:"deferred_queue"}, {pos:"9 1.5 95",tag:"deferred_queue"}, {pos:"9 1.5 96",tag:"deferred_queue"}, {pos:"9 1.5 112",tag:"deferred_queue"}, {pos:"9 1.5 113",tag:"deferred_queue"}, {pos:"9 1.5 114",tag:"deferred_queue"}, \
                {pos:"5 0.5 94",tag:"deferred_queue"}, {pos:"5 0.5 95",tag:"deferred_queue"}, {pos:"5 0.5 96",tag:"deferred_queue"}, {pos:"5 0.5 112",tag:"deferred_queue"}, {pos:"5 0.5 113",tag:"deferred_queue"}, {pos:"5 0.5 114",tag:"deferred_queue"}, \
                {pos:"3 0.5 94",tag:"deferred_queue"}, {pos:"3 0.5 95",tag:"deferred_queue"}, {pos:"3 0.5 96",tag:"deferred_queue"}, {pos:"3 0.5 112",tag:"deferred_queue"}, {pos:"3 0.5 113",tag:"deferred_queue"}, {pos:"3 0.5 114",tag:"deferred_queue"}, \
                {pos:"-1 -0.5 94",tag:"deferred_queue"}, {pos:"-1 -0.5 95",tag:"deferred_queue"}, {pos:"-1 -0.5 96",tag:"deferred_queue"}, {pos:"-1 -0.5 112",tag:"deferred_queue"}, {pos:"-1 -0.5 113",tag:"deferred_queue"}, {pos:"-1 -0.5 114",tag:"deferred_queue"}, \
                {pos:"-3 -0.5 94",tag:"deferred_queue"}, {pos:"-3 -0.5 95",tag:"deferred_queue"}, {pos:"-3 -0.5 96",tag:"deferred_queue"}, {pos:"-3 -0.5 112",tag:"deferred_queue"}, {pos:"-3 -0.5 113",tag:"deferred_queue"}, {pos:"-3 -0.5 114",tag:"deferred_queue"}, \
                {pos:"-7 -1.5 94",tag:"deferred_queue"}, {pos:"-7 -1.5 95",tag:"deferred_queue"}, {pos:"-7 -1.5 96",tag:"deferred_queue"}, {pos:"-7 -1.5 112",tag:"deferred_queue"}, {pos:"-7 -1.5 113",tag:"deferred_queue"}, {pos:"-7 -1.5 114",tag:"deferred_queue"}, \
                {pos:"-9 -1.5 94",tag:"deferred_queue"}, {pos:"-9 -1.5 95",tag:"deferred_queue"}, {pos:"-9 -1.5 96",tag:"deferred_queue"}, {pos:"-9 -1.5 112",tag:"deferred_queue"}, {pos:"-9 -1.5 113",tag:"deferred_queue"}, {pos:"-9 -1.5 114",tag:"deferred_queue"}, \
                {pos:"-13 -2.5 94",tag:"deferred_queue"}, {pos:"-13 -2.5 95",tag:"deferred_queue"}, {pos:"-13 -2.5 96",tag:"deferred_queue"}, {pos:"-13 -2.5 112",tag:"deferred_queue"}, {pos:"-13 -2.5 113",tag:"deferred_queue"}, {pos:"-13 -2.5 114",tag:"deferred_queue"}, \
                {pos:"-15 -2.5 94",tag:"deferred_queue"}, {pos:"-15 -2.5 95",tag:"deferred_queue"}, {pos:"-15 -2.5 96",tag:"deferred_queue"}, {pos:"-15 -2.5 112",tag:"deferred_queue"}, {pos:"-15 -2.5 113",tag:"deferred_queue"}, {pos:"-15 -2.5 114",tag:"deferred_queue"}, \
                {pos:"-19 -3.5 94",tag:"deferred_queue"}, {pos:"-19 -3.5 95",tag:"deferred_queue"}, {pos:"-19 -3.5 96",tag:"deferred_queue"}, {pos:"-19 -3.5 112",tag:"deferred_queue"}, {pos:"-19 -3.5 113",tag:"deferred_queue"}, {pos:"-19 -3.5 114",tag:"deferred_queue"}, \
                {pos:"-21 -3.5 94",tag:"deferred_queue"}, {pos:"-21 -3.5 95",tag:"deferred_queue"}, {pos:"-21 -3.5 96",tag:"deferred_queue"}, {pos:"-21 -3.5 112",tag:"deferred_queue"}, {pos:"-21 -3.5 113",tag:"deferred_queue"}, {pos:"-21 -3.5 114",tag:"deferred_queue"}, \
                {pos:"10 1.5 98",tag:"deferred_queue"}, {pos:"10 1.5 99",tag:"deferred_queue"}, {pos:"10 1.5 100",tag:"deferred_queue"}, {pos:"10 1.5 108",tag:"deferred_queue"}, {pos:"10 1.5 109",tag:"deferred_queue"}, {pos:"10 1.5 110",tag:"deferred_queue"}, \
                {pos:"8 1.5 98",tag:"deferred_queue"}, {pos:"8 1.5 99",tag:"deferred_queue"}, {pos:"8 1.5 100",tag:"deferred_queue"}, {pos:"8 1.5 108",tag:"deferred_queue"}, {pos:"8 1.5 109",tag:"deferred_queue"}, {pos:"8 1.5 110",tag:"deferred_queue"}, \
                {pos:"4 0.5 98",tag:"deferred_queue"}, {pos:"4 0.5 99",tag:"deferred_queue"}, {pos:"4 0.5 100",tag:"deferred_queue"}, {pos:"4 0.5 108",tag:"deferred_queue"}, {pos:"4 0.5 109",tag:"deferred_queue"}, {pos:"4 0.5 110",tag:"deferred_queue"}, \
                {pos:"2 0.5 98",tag:"deferred_queue"}, {pos:"2 0.5 99",tag:"deferred_queue"}, {pos:"2 0.5 100",tag:"deferred_queue"}, {pos:"2 0.5 108",tag:"deferred_queue"}, {pos:"2 0.5 109",tag:"deferred_queue"}, {pos:"2 0.5 110",tag:"deferred_queue"}, \
                {pos:"-2 -0.5 98",tag:"deferred_queue"}, {pos:"-2 -0.5 99",tag:"deferred_queue"}, {pos:"-2 -0.5 100",tag:"deferred_queue"}, {pos:"-2 -0.5 108",tag:"deferred_queue"}, {pos:"-2 -0.5 109",tag:"deferred_queue"}, {pos:"-2 -0.5 110",tag:"deferred_queue"}, \
                {pos:"-4 -0.5 98",tag:"deferred_queue"}, {pos:"-4 -0.5 99",tag:"deferred_queue"}, {pos:"-4 -0.5 100",tag:"deferred_queue"}, {pos:"-4 -0.5 108",tag:"deferred_queue"}, {pos:"-4 -0.5 109",tag:"deferred_queue"}, {pos:"-4 -0.5 110",tag:"deferred_queue"}, \
                {pos:"-8 -1.5 98",tag:"deferred_queue"}, {pos:"-8 -1.5 99",tag:"deferred_queue"}, {pos:"-8 -1.5 100",tag:"deferred_queue"}, {pos:"-8 -1.5 108",tag:"deferred_queue"}, {pos:"-8 -1.5 109",tag:"deferred_queue"}, {pos:"-8 -1.5 110",tag:"deferred_queue"}, \
                {pos:"-10 -1.5 98",tag:"deferred_queue"}, {pos:"-10 -1.5 99",tag:"deferred_queue"}, {pos:"-10 -1.5 100",tag:"deferred_queue"}, {pos:"-10 -1.5 108",tag:"deferred_queue"}, {pos:"-10 -1.5 109",tag:"deferred_queue"}, {pos:"-10 -1.5 110",tag:"deferred_queue"}, \
                {pos:"-14 -2.5 98",tag:"deferred_queue"}, {pos:"-14 -2.5 99",tag:"deferred_queue"}, {pos:"-14 -2.5 100",tag:"deferred_queue"}, {pos:"-14 -2.5 108",tag:"deferred_queue"}, {pos:"-14 -2.5 109",tag:"deferred_queue"}, {pos:"-14 -2.5 110",tag:"deferred_queue"}, \
                {pos:"-16 -2.5 98",tag:"deferred_queue"}, {pos:"-16 -2.5 99",tag:"deferred_queue"}, {pos:"-16 -2.5 100",tag:"deferred_queue"}, {pos:"-16 -2.5 108",tag:"deferred_queue"}, {pos:"-16 -2.5 109",tag:"deferred_queue"}, {pos:"-16 -2.5 110",tag:"deferred_queue"}, \
                {pos:"-20 -3.5 98",tag:"deferred_queue"}, {pos:"-20 -3.5 99",tag:"deferred_queue"}, {pos:"-20 -3.5 100",tag:"deferred_queue"}, {pos:"-20 -3.5 108",tag:"deferred_queue"}, {pos:"-20 -3.5 109",tag:"deferred_queue"}, {pos:"-20 -3.5 110",tag:"deferred_queue"}, \
                {pos:"-22 -3.5 98",tag:"deferred_queue"}, {pos:"-22 -3.5 99",tag:"deferred_queue"}, {pos:"-22 -3.5 100",tag:"deferred_queue"}, {pos:"-22 -3.5 108",tag:"deferred_queue"}, {pos:"-22 -3.5 109",tag:"deferred_queue"}, {pos:"-22 -3.5 110",tag:"deferred_queue"}, \
                {pos:"9 1.5 103",tag:"deferred_queue"}, {pos:"9 1.5 104",tag:"deferred_queue"}, {pos:"9 1.5 105",tag:"deferred_queue"}, {pos:"7 1.5 103",tag:"deferred_queue"}, {pos:"7 1.5 104",tag:"deferred_queue"}, {pos:"7 1.5 105",tag:"deferred_queue"}, \
                {pos:"3 0.5 103",tag:"deferred_queue"}, {pos:"3 0.5 104",tag:"deferred_queue"}, {pos:"3 0.5 105",tag:"deferred_queue"}, {pos:"1 0.5 103",tag:"deferred_queue"}, {pos:"1 0.5 104",tag:"deferred_queue"}, {pos:"1 0.5 105",tag:"deferred_queue"}, \
                {pos:"-3 -0.5 103",tag:"deferred_queue"}, {pos:"-3 -0.5 104",tag:"deferred_queue"}, {pos:"-3 -0.5 105",tag:"deferred_queue"}, {pos:"-5 -0.5 103",tag:"deferred_queue"}, {pos:"-5 -0.5 104",tag:"deferred_queue"}, {pos:"-5 -0.5 105",tag:"deferred_queue"}, \
                {pos:"-9 -1.5 103",tag:"deferred_queue"}, {pos:"-9 -1.5 104",tag:"deferred_queue"}, {pos:"-9 -1.5 105",tag:"deferred_queue"}, {pos:"-11 -1.5 103",tag:"deferred_queue"}, {pos:"-11 -1.5 104",tag:"deferred_queue"}, {pos:"-11 -1.5 105",tag:"deferred_queue"}, \
                {pos:"-15 -2.5 103",tag:"deferred_queue"}, {pos:"-15 -2.5 104",tag:"deferred_queue"}, {pos:"-15 -2.5 105",tag:"deferred_queue"}, {pos:"-17 -2.5 103",tag:"deferred_queue"}, {pos:"-17 -2.5 104",tag:"deferred_queue"}, {pos:"-17 -2.5 105",tag:"deferred_queue"}, \
                {pos:"-21 -3.5 103",tag:"deferred_queue"}, {pos:"-21 -3.5 104",tag:"deferred_queue"}, {pos:"-21 -3.5 105",tag:"deferred_queue"}, {pos:"-23 -3.5 103",tag:"deferred_queue"}, {pos:"-23 -3.5 104",tag:"deferred_queue"}, {pos:"-23 -3.5 105",tag:"deferred_queue"}, \
                {pos:"11 13.5 94",tag:"spectating"}, {pos:"11 13.5 95",tag:"spectating"}, {pos:"11 13.5 96",tag:"spectating"}, {pos:"11 13.5 112",tag:"spectating"}, {pos:"11 13.5 113",tag:"spectating"}, {pos:"11 13.5 114",tag:"spectating"}, \
                {pos:"10 13.5 98",tag:"spectating"}, {pos:"10 13.5 99",tag:"spectating"}, {pos:"10 13.5 100",tag:"spectating"}, {pos:"10 13.5 108",tag:"spectating"}, {pos:"10 13.5 109",tag:"spectating"}, {pos:"10 13.5 110",tag:"spectating"}, \
                {pos:"9 13.5 94",tag:"spectating"}, {pos:"9 13.5 95",tag:"spectating"}, {pos:"9 13.5 96",tag:"spectating"}, {pos:"9 13.5 103",tag:"spectating"}, {pos:"9 13.5 104",tag:"spectating"}, {pos:"9 13.5 105",tag:"spectating"}, {pos:"9 13.5 112",tag:"spectating"}, {pos:"9 13.5 113",tag:"spectating"}, {pos:"9 13.5 114",tag:"spectating"}, \
                {pos:"8 13.5 98",tag:"spectating"}, {pos:"8 13.5 99",tag:"spectating"}, {pos:"8 13.5 100",tag:"spectating"}, {pos:"8 13.5 108",tag:"spectating"}, {pos:"8 13.5 109",tag:"spectating"}, {pos:"8 13.5 110",tag:"spectating"}, \
                {pos:"7 13.5 103",tag:"spectating"}, {pos:"7 13.5 104",tag:"spectating"}, {pos:"7 13.5 105",tag:"spectating"}, \
                {pos:"5 12.5 94",tag:"spectating"}, {pos:"5 12.5 95",tag:"spectating"}, {pos:"5 12.5 96",tag:"spectating"}, {pos:"5 12.5 112",tag:"spectating"}, {pos:"5 12.5 113",tag:"spectating"}, {pos:"5 12.5 114",tag:"spectating"}, \
                {pos:"4 12.5 98",tag:"spectating"}, {pos:"4 12.5 99",tag:"spectating"}, {pos:"4 12.5 100",tag:"spectating"}, {pos:"4 12.5 108",tag:"spectating"}, {pos:"4 12.5 109",tag:"spectating"}, {pos:"4 12.5 110",tag:"spectating"}, \
                {pos:"3 12.5 94",tag:"spectating"}, {pos:"3 12.5 95",tag:"spectating"}, {pos:"3 12.5 96",tag:"spectating"}, {pos:"3 12.5 103",tag:"spectating"}, {pos:"3 12.5 104",tag:"spectating"}, {pos:"3 12.5 105",tag:"spectating"}, {pos:"3 12.5 112",tag:"spectating"}, {pos:"3 12.5 113",tag:"spectating"}, {pos:"3 12.5 114",tag:"spectating"}, \
                {pos:"2 12.5 98",tag:"spectating"}, {pos:"2 12.5 99",tag:"spectating"}, {pos:"2 12.5 100",tag:"spectating"}, {pos:"2 12.5 108",tag:"spectating"}, {pos:"2 12.5 109",tag:"spectating"}, {pos:"2 12.5 110",tag:"spectating"}, \
                {pos:"1 12.5 103",tag:"spectating"}, {pos:"1 12.5 104",tag:"spectating"}, {pos:"1 12.5 105",tag:"spectating"}, \
        ], \
        cosmetic_equip: [ \
                {pos:"0.0 2 81",model:"unequip_head",extra:"",translation:"0.25"}, \
                {pos:"1.5 2 81",model:"rainbowhat",extra:"transformation:[1f,0f,0f,0f, 0f,1f,0f,0.5f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[45f, 0f]",translation:"1"}, \
                {pos:"3.0 2 81",model:"dark3dglasses",extra:"transformation:[1f,0f,0f,0f, 0f,1f,0f,0.5f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[225f, 0f]",translation:"1"}, \
                {pos:"4.5 2 81",model:"aviatorcap",extra:"Rotation:[180f,0f]",translation:"1"}, \
                {pos:"6.0 2 81",model:"lance",extra:"",translation:"1"}, \
                {pos:"7.5 2 81",model:"bowlerhat",extra:"",translation:"0.5"}, \
                {pos:"9.0 2 81",model:"spacehelmet",extra:"transformation:[1f,0f,0f,0f, 0f,1f,0f,0.5f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[180f,0f]",translation:"1"}, \
                {pos:"10.5 2 81",model:"bellhat",extra:"transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[45f, 0f]",translation:"0.75"}, \
                {pos:"12.0 2 81",model:"skipperhat",extra:"Rotation:[180f,0f]",translation:"0.5"}, \
                {pos:"13.5 2 81",model:"winterhat",extra:"Rotation:[180f,0f]",translation:"1"}, \
                {pos:"15.0 2 81",model:"fancy",extra:"Rotation:[180f,0f]",translation:"1"}, \
                {pos:"16.5 2 81",model:"hardhat",extra:"Rotation:[180f,0f]",translation:"0.75"}, \
                {pos:"18.0 2 81",model:"minerhat",extra:"Rotation:[180f,0f]",translation:"0.75"}, \
                {pos:"19.5 2 81",model:"warden_ears",extra:"Rotation:[180f,0f]",translation:"1"}, \
        ], \
        diner_sign: [ \
                {pos:"16 1.5 43"} \
        ] \
}

data modify storage mcm:props maps.test_range set value { \
        prop_types: [ \
                "wall_item_equip" \
        ], \
        wall_item_equip: [ \
                {pos:"35 2 -17", item:"barrier",wall_face:"1",offset:"~ ~0.45 ~-0.45",rotation:"[0f, 0f]"}, \
                {pos:"36 2 -17", item:"gun",wall_face:"1",offset:"~ ~0.3 ~-0.45",rotation:"[90f,-45f]"}, \
                {pos:"37 2 -17", item:"knife",wall_face:"1",offset:"~-0.25 ~0.3 ~-0.45",rotation:"[90f,0f]"}, \
                {pos:"38 2 -17", item:"player_tracker",wall_face:"1",offset:"~ ~0.5 ~-0.25",rotation:"[180f,-90f]"}, \
                {pos:"39 2 -17", item:"teleporter",wall_face:"1",offset:"~ ~0.35 ~-0.45",rotation:"[-12.5f,0f]"}, \
                {pos:"40 2 -17", item:"adrenaline",wall_face:"1",offset:"~-0.35 ~ ~-0.45",rotation:"[90f,-45f]"}, \
        ] \
}

data modify storage mcm:props maps.library set value { \
        prop_types: [ \
        ], \
        spectator_spawn: [{pos:"933 150 1000"}], \
        player_spawn: [ \
                {pos:"937 110 1000"}, {pos:"976 110 1019"}, {pos:"977 110 981"}, \
                {pos:"1011 110 1000"}, {pos:"974 122 1018"}, {pos:"996 122 1019"}, \
                {pos:"996 122 981"}, {pos:"974 122 982"}, {pos:"974 132 979"}, \
                {pos:"997 132 974"}, {pos:"938 132 1000"}, {pos:"973 132 1016"}, \
                {pos:"997 143 1021"}, {pos:"933 143 1005"}, {pos:"961 143 969"}, \
                {pos:"938 143 1030"}, {pos:"942 121 1031"}, {pos:"943 132 971"}, \
                {pos:"961 143 969"} \
        ], \
        sound_marker: [ \
                {pos:"959 132 1014",sound:"",vol:""}, \
                {pos:"965 110 992",sound:"",vol:""}, \
                {pos:"954 110 1008",sound:"",vol:""}, \
                {pos:"991 121 1011",sound:"",vol:""}, \
                {pos:"983 110 1008",sound:"",vol:""}, \
                {pos:"958 132 991",sound:"",vol:""}, \
                {pos:"945 144 973",sound:"",vol:""}, \
                {pos:"952 132 978",sound:"",vol:""}, \
                {pos:"991 110 993",sound:"",vol:""}, \
                {pos:"965 132 1024",sound:"",vol:""}, \
                {pos:"990 121 985",sound:"",vol:""}, \
                {pos:"979 121 993",sound:"",vol:""}, \
                {pos:"966 132 975",sound:"",vol:""}, \
                {pos:"944 144 1027",sound:"",vol:""}, \
                {pos:"995 110 1007",sound:"",vol:""}, \
        ], \
        generic_tagged_marker: [ \
                {pos:"975 139 1000", tag:"'chandelier'"}, \
        ] \
}

# data modify storage mcm:props maps.library2 set value { \
#         prop_types: [ \
#                 "spectator_spawn", \
#                 "player_spawn", \
#                 "sound_marker", \
#                 "generic_tagged_marker", \
#                 "generic_interactable" \
#         ], \

# }


data modify storage mcm:props maps.airship set value { \
        prop_types: [ \
                "spectator_spawn", \
                "player_spawn", \
                "sound_marker", \
                "generic_tagged_marker", \
                "generic_interactable" \
        ], \
        spectator_spawn: [{pos:"-688 72 14"}], \
        player_spawn: [ \
                {pos:"-688 68 37"},{pos:"-673 31 19"},{pos:"-677 47 30"}, \
                {pos:"-630 56 18"},{pos:"-617 51 27"},{pos:"-640 61 -8"}, \
                {pos:"-583 57 -3"},{pos:"-601 60 24"},{pos:"-710 45 7"}, \
                {pos:"-593 71 -2"},{pos:"-704 31 13"},{pos:"-701 31 30"}, \
                {pos:"-704 62 30"},{pos:"-681 36 36"},{pos:"-640 56 33"}, \
                {pos:"-663 46 9"},{pos:"-636 52 43"},{pos:"-671 57 30"}, \
                {pos:"-677 68 19"},{pos:"-660 56 15"},{pos:"-636 52 -1"}, \
                {pos:"-621 50 5"},{pos:"-604 50 -5"},{pos:"-681 54 36"}, \
                {pos:"-605 63 -7"},{pos:"-716 44 23"},{pos:"-596 56 -18"}, \
        ], \
        sound_marker: [ \
                {pos:"-596 70 15",sound:"block.amethyst_block.chime",vol:"15 1 1"}, \
                {pos:"-614 93 -2",sound:"block.amethyst_block.chime",vol:"15 1 1"}, \
                {pos:"-688 55 6",sound:"block.amethyst_block.chime",vol:"15 1 1"}, \
                {pos:"-619 53 -8",sound:"block.amethyst_block.chime",vol:"15 1 1"}, \
                {pos:"-677 64 52",sound:"block.amethyst_block.chime",vol:"15 1 1"}, \
                {pos:"-637 59 20",sound:"block.amethyst_block.chime",vol:"15 1 1"}, \
                {pos:"-651 64 28",sound:"block.amethyst_block.chime",vol:"15 1 1"} \
        ], \
        generic_tagged_marker: [ \
                {pos:"-693 77 51", tag:"'airship_teleport_beacon'"}, \
                {pos:"-586 79 2", tag:"'airship_teleport_beacon'"}, \
                {pos:"-593 59 5", tag:"'airship_teleport_beacon'"}, \
                {pos:"-636 52 43", tag:"'airship_teleport_beacon'"}, \
                {pos:"-705 31 28", tag:"'airship_teleport_beacon'"}, \
                {pos:"-671 57 26", tag:"'airship_fan'"}, \
                {pos:"-700 45 12", tag:"'airship_fan'"}, \
                {pos:"-695 31 11", tag:"'airship_fan'"}, \
                {pos:"-675 31 26", tag:"'airship_fan'"}, \
                {pos:"-660 46 23", tag:"'airship_fan'"}, \
        ], \
        generic_interactable: [ \
                {pos:"-685 69 36",tag:"'airship_crystal_spawn'",nbt:"",fn:"mcm:maps/airship/crystals/player_break"}, \
                {pos:"-692 69 17",tag:"'airship_crystal_spawn'",nbt:"",fn:"mcm:maps/airship/crystals/player_break"}, \
                {pos:"-671 32 18",tag:"'airship_crystal_spawn'",nbt:"",fn:"mcm:maps/airship/crystals/player_break"}, \
                {pos:"-708 32 14",tag:"'airship_crystal_spawn'",nbt:"",fn:"mcm:maps/airship/crystals/player_break"}, \
                {pos:"-635.5 56 -1.3",tag:"'captain_door'",nbt:"width:3,height:2.1,response:true",fn:"mcm:maps/airship/captains_room_door"}, \
        ] \
}
