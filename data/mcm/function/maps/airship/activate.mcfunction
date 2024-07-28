#> Forceload the floating islands map
#forceload add -555 -56 -744 77

#> Kill potential leftover entities
kill @e[tag=MapEntity]

function mcm:maps/airship/crystals/create_beacons


#> Set Player Spawnpoints
execute positioned -688 68 37 run function mcm:game/markers/playerspawn
execute positioned -673 31 19 run function mcm:game/markers/playerspawn 
execute positioned -630 56 18 run function mcm:game/markers/playerspawn 
execute positioned -617 51 27 run function mcm:game/markers/playerspawn 
execute positioned -640 61 -8 run function mcm:game/markers/playerspawn 
execute positioned -583 57 -3 run function mcm:game/markers/playerspawn 
execute positioned -601 60 24 run function mcm:game/markers/playerspawn 
execute positioned -710 45 7 run function mcm:game/markers/playerspawn 
execute positioned -593 71 -2 run function mcm:game/markers/playerspawn 
execute positioned -704 31 13 run function mcm:game/markers/playerspawn 
execute positioned -701 31 30 run function mcm:game/markers/playerspawn 
execute positioned -704 62 30 run function mcm:game/markers/playerspawn 
execute positioned -681 36 36 run function mcm:game/markers/playerspawn 
execute positioned -640 56 33 run function mcm:game/markers/playerspawn 
execute positioned -663 46 9 run function mcm:game/markers/playerspawn 
execute positioned -636 52 43 run function mcm:game/markers/playerspawn 
execute positioned -671 57 30 run function mcm:game/markers/playerspawn 
execute positioned -677 68 19 run function mcm:game/markers/playerspawn 
execute positioned -660 56 15 run function mcm:game/markers/playerspawn 
execute positioned -636 52 -1 run function mcm:game/markers/playerspawn 
execute positioned -621 50 5 run function mcm:game/markers/playerspawn 
execute positioned -604 50 -5 run function mcm:game/markers/playerspawn 
execute positioned -681 54 36 run function mcm:game/markers/playerspawn 
execute positioned -605 63 -7 run function mcm:game/markers/playerspawn 
execute positioned -716 44 23 run function mcm:game/markers/playerspawn 
execute positioned -596 56 -18 run function mcm:game/markers/playerspawn 
execute positioned -677 47 30 run function mcm:game/markers/playerspawn 


#> Sound markers

execute positioned -596 70 15 run function mcm:game/markers/soundmarker
execute positioned -614 93 -2 run function mcm:game/markers/soundmarker
execute positioned -688 55 6 run function mcm:game/markers/soundmarker
execute positioned -619 53 -8 run function mcm:game/markers/soundmarker
execute positioned -677 64 52 run function mcm:game/markers/soundmarker
execute positioned -637 59 20 run function mcm:game/markers/soundmarker
execute positioned -651 64 28 run function mcm:game/markers/soundmarker

#> Spectator spawn
execute positioned -688 72 14 run function mcm:game/markers/spectatorspawn

tellraw @a ["\n",{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.ready","underlined":true,"color":"green","bold":false}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.selected","color":"gray","bold":false,"with":[{"translate":"mcm.airship.name","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"translate":"mcm.airship.hover","color":"aqua"},{"text":"\n    --------\n","color":"dark_gray"},{"translate":"mcm.map.concept","color":"dark_aqua", "with":[ {"translate":"mcm.map.list.2", "color":"green", "with":[ "_topaz", "Brownie1111" ]} ]}]}}]}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.directed","color":"gray","bold":false, "with":[ {"translate":"mcm.map.list.2", "color":"dark_green", "with": ["_topaz", "Brownie1111"]} ]}, "\n"]

#> Crystals
summon interaction -685 69 36 {Tags:["airship_crystal_spawn"]}
summon interaction -692 69 17 {Tags:["airship_crystal_spawn"]}
summon interaction -671 32 18 {Tags:["airship_crystal_spawn"]}
summon interaction -708 32 14 {Tags:["airship_crystal_spawn"]}
execute as @e[type=interaction,tag=airship_crystal_spawn] run scoreboard players set @s airship_crystal_growth 0

#> Fans
summon marker -671 57 26 {Tags:["airship_fan"]}
summon marker -700 45 12 {Tags:["airship_fan"]}
summon marker -695 31 11 {Tags:["airship_fan"]}
summon marker -675 31 26 {Tags:["airship_fan"]}
summon marker -660 46 23 {Tags:["airship_fan"]}
