#> Forceload the Vineyard map
forceload add -2178 1968 -1969 2135

#> Kill potential leftover entities
kill @e[tag=MapEntity]

#> Lobby poster visual
fill 27 5 109 27 1 112 warped_trapdoor[open=true,facing=west] replace crimson_trapdoor

#> Set Player Spawnpoints
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2054 72 2028 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2025 72 2007 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1997 72 2011 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2098 72 2077 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2030 72 2037 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2116 72 2039 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2099 72 2025 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2069 81 2037 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2076 72 2009 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2119 72 2015 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1989 75 2055 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2041 75 2056 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2047 74 2015 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2103 72 2064 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2067 76 2037 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1999 73 2082 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2137 72 2076 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2035 72 2077 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2091 72 1997 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2020 78 2071 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2041 72 1984 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2081 72 2070 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2128 74 2052 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2081 72 2047 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -1998 75 2037 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2067 72 2089 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2101 72 2013 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2012 72 2054 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2020 72 2071 run function mcm:util/alloc_entity 
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned -2097 72 2036 run function mcm:util/alloc_entity 

#> Set Scrap spawnpoints

#> Sound markers

#> Spectator spawnpoint
execute as @e[type=marker,tag=available,tag=SpectatorSpawn,limit=1] positioned -2070 100 2038 run function mcm:util/alloc_entity

tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Color Filth","color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"So much better than the game...","color":"aqua"}}},"\n"]