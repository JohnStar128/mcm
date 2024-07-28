#> Forceload the Industrial map
#forceload add -1926 -2938 -2067 -3063

#> Kill potential leftover entities
kill @e[tag=MapEntity]

scoreboard players set $gametimer CmdData 12000
scoreboard players set $industry_timer CmdData 0

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

#> Sound markers
execute positioned -1982 82 -2952 run function mcm:game/markers/soundmarker {tag:"pipe"}
execute positioned -2027 84 -3007 run function mcm:game/markers/soundmarker {tag:"pipe"}
execute positioned -2047 88 -3011 run function mcm:game/markers/soundmarker {tag:"pipe"}
execute positioned -2006 89 -2945 run function mcm:game/markers/soundmarker {tag:"pipe"}
execute positioned -2005 86 -2941 run function mcm:game/markers/soundmarker {tag:"pipe"}
execute positioned -2010 87 -2957 run function mcm:game/markers/soundmarker {tag:"pipe"}
execute positioned -2004 86 -2948 run function mcm:game/markers/soundmarker {tag:"pipe"}
execute positioned -1965 83 -2944 run function mcm:game/markers/soundmarker {tag:"pipe"}
execute positioned -1965 84 -2949 run function mcm:game/markers/soundmarker {tag:"pipe"}
execute positioned -1957 84 -2943 run function mcm:game/markers/soundmarker {tag:"pipe"}
execute positioned -1948 87 -2956 run function mcm:game/markers/soundmarker {tag:"pipe"}
execute positioned -1952 85 -2995 run function mcm:game/markers/soundmarker {tag:"pipe"}
execute positioned -1944 85 -2995 run function mcm:game/markers/soundmarker {tag:"pipe"}

execute positioned -1971 86 -3027 run function mcm:game/markers/soundmarker {tag:"keyboard"}
execute positioned -1936 86 -3029 run function mcm:game/markers/soundmarker {tag:"keyboard"}
execute positioned -1980 86 -3025 run function mcm:game/markers/soundmarker {tag:"keyboard"}
execute positioned -1982 86 -2963 run function mcm:game/markers/soundmarker {tag:"keyboard"}
execute positioned -1994 86 -2967 run function mcm:game/markers/soundmarker {tag:"keyboard"}

execute positioned -2033 80 -3024 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -2043 80 -3007 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -2045 80 -2995 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -2045 80 -2979 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -2045 80 -2963 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -2044 80 -2951 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -2031 80 -3013 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -2032 80 -2948 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -2019 80 -2948 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -2008 80 -2948 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -1995 80 -2948 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -1980 80 -2948 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -1967 80 -2948 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -1949 80 -3012 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -1949 80 -2997 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -1949 80 -2980 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -1949 80 -2964 run function mcm:game/markers/soundmarker {tag:conveyor}
execute positioned -1951 80 -2950 run function mcm:game/markers/soundmarker {tag:conveyor}

#> Forklift test computers and printers
scoreboard players set @a[tag=queued] forklifttest 0
scoreboard players set @a[tag=queued] forkliftresponse 0
execute as @e[type=armor_stand,tag=computer,limit=5,sort=random] at @s run summon interaction ~ ~1.3 ~ {height:0.7,width:0.7,response:1b,Tags:["forklifttest"]}
execute as @e[type=interaction,tag=forklifttest] at @s run summon marker ~ ~ ~ {Tags:["forklifttest"],data:{players:[],n:0}}
summon interaction -1966 87 -3025 {height:0.7,width:0.7,response:1b,Tags:["printer"]}
summon interaction -1978 87 -2964 {height:0.7,width:0.7,response:1b,Tags:["printer"]}
execute as @e[type=minecraft:interaction,tag=forklifttest] store result score @s playerUUID run data get entity @s UUID[0]

advancement revoke @a only mcm:map_functions/industry_forklift_test

#> Spectator spawnpoint
execute positioned -1986 95 -3045 run function mcm:game/markers/spectatorspawn

tellraw @a ["\n",{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.ready","underlined":true,"color":"green","bold":false}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.selected","color":"gray","bold":false,"with":[{"translate":"mcm.industry.name","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"translate":"mcm.industry.hover","color":"aqua"},{"text":"\n    --------\n","color":"dark_gray"},{"translate":"mcm.map.concept","color":"dark_aqua", "with":[ {"translate":"mcm.map.list.1", "color":"green", "with":[ "SuperCoxylac" ]} ]}]}}]}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.directed","color":"gray","bold":false, "with":[ {"translate":"mcm.map.list.1", "color":"dark_green", "with": ["SuperCoxylac"]} ]}, "\n"]
