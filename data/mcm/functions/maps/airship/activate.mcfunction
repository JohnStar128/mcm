#> Forceload the floating islands map
forceload add -555 -56 -744 77

#> Kill potential leftover entities
kill @e[tag=MapEntity]

#> Lobby poster visual
fill 27 5 93 27 1 96 warped_trapdoor[open=true,facing=west] replace crimson_trapdoor

#> Set Player Spawnpoints
summon marker -636 56 42 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -636 61 -1 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -636 52 26 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -639 56 -8 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -665 59 26 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -661 46 31 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -688 45 12 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -717 44 23 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -703 62 25 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -685 47 33 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -616 50 7 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -603 64 21 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -600 74 4 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -597 59 -1 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -605 50 -8 {Tags:["MapEntity","PlayerSpawn"]}
summon marker -600 86 3 {Tags:["MapEntity","PlayerSpawn"]}

#> Sound markers
summon marker -596 70 15 {Tags:["MapEntity","WindSoundMarker"]}
summon marker -614 93 -2 {Tags:["MapEntity","WindSoundMarker"]}
summon marker -688 55 6 {Tags:["MapEntity","WindSoundMarker"]}
summon marker -619 53 -8 {Tags:["MapEntity","WindSoundMarker"]}
summon marker -677 64 52 {Tags:["MapEntity","WindSoundMarker"]}
summon marker -637 59 20 {Tags:["MapEntity","WindSoundMarker"]}
summon marker -651 64 28 {Tags:["MapEntity","WindSoundMarker"]}

#> Spectator spawn
summon marker -688 72 14 {Tags:["MapEntity","SpectatorSpawn"]}

tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Floating Islands","color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Concept by _topaz","color":"aqua"}}},"\n"]
