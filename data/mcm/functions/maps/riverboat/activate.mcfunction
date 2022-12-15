#> [WIP]
#> Forceload the floating islands map
forceload add 2130 -2015 2000 -1975

#> Kill potential leftover entities
#kill @e[tag=MapEntity]

#> Lobby poster visual
#fill 27 5 114 27 1 117 warped_trapdoor[open=true,facing=west] replace crimson_trapdoor

#> Set Player Spawnpoints
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2095 67 -1991 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2079 66 -1990 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2060 65 -1989 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2036 66 -1989 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2010 67 -2007 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2023 66 -2000 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2060 65 -2010 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2080 66 -2010 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2103 68 -2010 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2046 64 -2000 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2097 73 -2000 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2078 72 -1989 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2057 71 -1989 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2037 72 -1991 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2017 73 -1993 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2017 73 -2007 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2037 72 -2010 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2058 71 -2010 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2083 72 -2009 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2092 72 -2000 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2073 72 -2000 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2047 71 -2000 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2024 72 -2000 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2090 80 -1999 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2079 79 -1998 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2058 78 -1992 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2043 78 -1993 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2026 79 -1995 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2051 78 -2009 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2029 79 -2006 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2067 79 -2000 run function mcm:util/alloc_entity

#> Scrap-specific Spawnpoints
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2092 73 -1991 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2045 65 -1995 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2026 73 -1991 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2092 73 -2010 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2024 67 -1990 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2058 65 -2000 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2020 79 -2005 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2005 67 -2000 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2069 72 -1990 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2011 73 -2000 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2057 71 -2000 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2046 65 -2005 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2032 66 -2010 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2066 78 -2011 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2083 79 -2009 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2070 78 -1992 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2035 79 -1990 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2038 78 -2009 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2019 79 -1996 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2095 80 -2006 run function mcm:util/alloc_entity 

#> Sound markers
#execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned -596 70 15 run function mcm:util/alloc_entity


#> Spectator spawn
execute as @e[type=marker,tag=available,tag=SpectatorSpawn,limit=1] positioned 2057 73 -1981 rotated 0 180 run function mcm:util/alloc_entity

#execute at @e[type=marker,tag=available,tag=SpectatorSpawn,limit=1] as @e[type=marker,tag=!available,tag=sound_marker,limit=7,sort=nearest] run tag @s add WindSoundMarker

tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Murder on the Mississippi","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Cruisin'","color":"aqua"},{"text":"\n    --------","color":"dark_gray"},{"text":"\nConcept by: ","color":"dark_aqua"},{"text":"TheLastOreo, TacoSquad","color":"green"}]}},"\n"]
