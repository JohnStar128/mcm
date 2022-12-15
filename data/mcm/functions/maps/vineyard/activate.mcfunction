#> Forceload the Vineyard map
forceload add 2111 2095 1937 1911

#> Kill potential leftover entities
kill @e[tag=MapEntity]

#> Lobby poster visual
fill 27 5 98 27 1 101 warped_trapdoor[open=true,facing=west] replace crimson_trapdoor

#> Set Player Spawnpoints
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1961 66 1986 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1966 66 1959 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1987 69 1993 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2004 70 1987 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1985 66 1956 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2012 66 1942 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2030 65 1926 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2059 65 1926 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2042 66 1933 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2083 66 1934 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2096 68 1958 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2077 68 1948 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2043 68 1947 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2051 71 1965 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2025 70 1975 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2048 78 2007 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2048 78 2042 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2067 87 2011 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2048 87 2036 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2048 87 2005 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2102 78 1997 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2102 78 2058 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2081 78 2072 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2048 78 2080 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2027 78 2072 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2066 78 2036 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2068 78 1991 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1995 70 2059 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1995 70 2039 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1996 70 2010 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1988 69 2043 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1981 68 2016 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1975 67 2006 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 1974 67 2050 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2076 95 2027 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2056 95 2034 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2074 95 2039 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2054 95 2015 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2038 95 2017 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2038 95 2034 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2048 95 2045 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2072 95 2016 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2072 87 1994 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2066 87 2047 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2037 87 2015 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2037 87 2042 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=PlayerSpawn,limit=1] positioned 2056 104 2033 run function mcm:util/alloc_entity

#> Set Scrap spawnpoints
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 1949 66 1925 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 1951 66 1999 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2033 59 1953 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 1990 56 2080 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 1982 56 2019 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2020 56 2049 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2032 60 2011 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2008 59 2000 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 1977 56 1983 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 1962 56 1953 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2005 61 1979 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2029 61 1967 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2012 72 2026 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2003 70 2084 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=ScrapSpawn,limit=1] positioned 2002 65 1921 run function mcm:util/alloc_entity

#> Sound markers
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1972 74 2034 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2046 75 1948 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2054 73 1925 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2047 73 1934 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1974 75 2002 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2086 76 1949 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1984 75 2001 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2066 73 1926 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2039 73 1931 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1972 74 2012 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2033 75 1944 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1997 78 2033 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1974 75 2053 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2052 76 1947 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1972 74 2044 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2033 72 1924 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2071 75 1939 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2057 74 1937 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1986 76 2036 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1993 77 2050 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1978 75 2028 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1993 77 2026 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1982 75 2010 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2082 74 1940 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1992 77 2007 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2065 75 1948 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 2080 73 1925 run function mcm:util/alloc_entity
execute as @e[type=marker,tag=available,tag=sound_marker,limit=1] positioned 1981 75 2046 run function mcm:util/alloc_entity

#> Spectator spawnpoint
execute as @e[type=marker,tag=available,tag=SpectatorSpawn,limit=1] positioned 1983 96 1932 run function mcm:util/alloc_entity

execute at @e[type=marker,tag=available,tag=SpectatorSpawn,limit=1] as @e[type=marker,tag=!available,tag=sound_marker,limit=28,sort=nearest] run tag @s add PlantSoundMarker

tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Vineyard","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Well, ","color":"aqua"},{"text":"that","color":"aqua","italic":true},{"text":" aged like fine wine","color":"aqua"},{"text":"\n    --------","color":"dark_gray"},{"text":"\nConcept by: ","color":"dark_aqua"},{"text":"_topaz, Brownie1111","color":"green"}]}},"\n"]