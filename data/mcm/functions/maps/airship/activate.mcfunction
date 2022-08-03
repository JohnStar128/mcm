#> Forceload the floating islands map
forceload add -555 -56 -744 77

#> Kill potential leftover entities
kill @e[tag=MapEntity]

#> Lobby poster visual
fill 27 5 93 27 1 96 warped_trapdoor[open=true,facing=west] replace crimson_trapdoor

#> Set Player Spawnpoints
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -636 56 42 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -636 61 -1 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -636 52 26 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -639 56 -8 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -665 59 26 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -661 46 31 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -688 45 12 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -717 44 23 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -703 62 25 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -685 47 33 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -616 50 7 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -603 64 21 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -600 74 4 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -597 59 -1 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -605 50 -8 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -600 86 3 run function mcm:util/alloc_entity

#> Sound markers
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned -596 70 15 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned -614 93 -2 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned -688 55 6 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned -619 53 -8 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned -677 64 52 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned -637 59 20 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned -651 64 28 run function mcm:util/alloc_entity

#> Spectator spawn
execute as @e[type=marker,tag=available,tag=SpectatorSpawn,limit=1] positioned -688 72 14 run function mcm:util/alloc_entity

execute at @e[type=marker,tag=available,tag=SpectatorSpawn,limit=1] as @e[type=marker,tag=available,tag=sound_marker,limit=7,sort=nearest] run tag @s add WindSoundMarker

tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Floating Islands","color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Concept by _topaz","color":"aqua"}}},"\n"]
