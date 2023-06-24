#> Forceload the Industrial map
#forceload add -1926 -2938 -2067 -3063

#> Kill potential leftover entities
kill @e[tag=MapEntity]

scoreboard players set $gametimer CmdData 12000

#> Set Player Spawnpoints
execute positioned -1995 86 -3046 run function mcm:game/markers/playerspawn
execute positioned -2009 86 -3023 run function mcm:game/markers/playerspawn
execute positioned -1996 86 -3009 run function mcm:game/markers/playerspawn
execute positioned -2021 86 -3010 run function mcm:game/markers/playerspawn
execute positioned -2008 86 -2989 run function mcm:game/markers/playerspawn
execute positioned -1998 86 -2999 run function mcm:game/markers/playerspawn
execute positioned -1978 86 -2999 run function mcm:game/markers/playerspawn
execute positioned -1961 86 -3010 run function mcm:game/markers/playerspawn
execute positioned -1974 86 -3026 run function mcm:game/markers/playerspawn
execute positioned -2047 80 -3012 run function mcm:game/markers/playerspawn
execute positioned -2046 80 -2947 run function mcm:game/markers/playerspawn
execute positioned -2014 80 -2964 run function mcm:game/markers/playerspawn
execute positioned -1998 86 -2979 run function mcm:game/markers/playerspawn
execute positioned -1995 86 -2959 run function mcm:game/markers/playerspawn
execute positioned -1964 86 -2963 run function mcm:game/markers/playerspawn
execute positioned -1975 86 -2979 run function mcm:game/markers/playerspawn
execute positioned -1988 86 -2989 run function mcm:game/markers/playerspawn
execute positioned -1969 86 -2992 run function mcm:game/markers/playerspawn
execute positioned -1969 86 -2986 run function mcm:game/markers/playerspawn
execute positioned -1970 82 -3008 run function mcm:game/markers/playerspawn
execute positioned -1945 80 -2999 run function mcm:game/markers/playerspawn
execute positioned -1954 80 -2975 run function mcm:game/markers/playerspawn
execute positioned -1947 80 -2946 run function mcm:game/markers/playerspawn
execute positioned -1981 80 -2943 run function mcm:game/markers/playerspawn


#> Spectator spawnpoint
execute positioned -1986 95 -3045 run function mcm:game/markers/spectatorspawn

tellraw @a ["\n",{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.ready","underlined":true,"color":"green","bold":false}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.selected","color":"gray","bold":false,"with":[{"translate":"mcm.industry.name","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"translate":"mcm.industry.hover","color":"aqua"},{"text":"\n    --------\n","color":"dark_gray"},{"translate":"mcm.map.concept","color":"dark_aqua", "with":[ {"translate":"mcm.map.list.1", "color":"green", "with":[ "SuperCoxylac" ]} ]}]}}]}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.directed","color":"gray","bold":false, "with":[ {"translate":"mcm.map.list.1", "color":"dark_green", "with": ["SuperCoxylac"]} ]}, "\n"]
