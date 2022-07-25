#> Forceload the Vineyard map
forceload add 2111 2095 1937 1911

#> Kill potential leftover entities
kill @e[tag=MapEntity]

#> Lobby poster visual
fill 27 5 98 27 1 101 warped_trapdoor[open=true,facing=west] replace crimson_trapdoor

#> Set Player Spawnpoints
summon marker 1961 66 1986 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 1966 66 1959 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 1987 69 1993 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2004 70 1987 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 1985 66 1956 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2012 66 1942 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2030 65 1926 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2059 65 1926 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2042 66 1933 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2083 66 1934 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2096 68 1958 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2077 68 1948 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2043 68 1947 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2051 71 1965 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2025 70 1975 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2048 78 2007 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2048 78 2042 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2067 87 2011 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2048 87 2036 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2048 87 2005 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2102 78 1997 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2102 78 2058 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2081 78 2072 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2048 78 2080 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2027 78 2072 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2066 78 2036 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2068 78 1991 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 1995 70 2059 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 1995 70 2039 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 1996 70 2010 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 1988 69 2043 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 1981 68 2016 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 1975 67 2006 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 1974 67 2050 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2076 95 2027 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2056 95 2034 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2074 95 2039 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2054 95 2015 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2038 95 2017 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2038 95 2034 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2048 95 2045 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2072 95 2016 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2072 87 1994 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2066 87 2047 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2037 87 2015 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2037 87 2042 {Tags:["MapEntity","PlayerSpawn"]}
summon marker 2056 104 2033 {Tags:["MapEntity","PlayerSpawn"]}

#> Set Scrap spawnpoints
summon marker 1949 66 1925 {Tags:["MapEntity",ScrapSpawn]}
summon marker 1951 66 1999 {Tags:["MapEntity",ScrapSpawn]}
summon marker 2033 59 1953 {Tags:["MapEntity",ScrapSpawn]}
summon marker 1990 56 2080 {Tags:["MapEntity",ScrapSpawn]}
summon marker 1982 56 2019 {Tags:["MapEntity",ScrapSpawn]}
summon marker 2020 56 2049 {Tags:["MapEntity",ScrapSpawn]}
summon marker 2032 60 2011 {Tags:["MapEntity",ScrapSpawn]}
summon marker 2008 59 2000 {Tags:["MapEntity",ScrapSpawn]}
summon marker 1977 56 1983 {Tags:["MapEntity",ScrapSpawn]}
summon marker 1962 56 1953 {Tags:["MapEntity",ScrapSpawn]}
summon marker 2005 61 1979 {Tags:["MapEntity",ScrapSpawn]}
summon marker 2029 61 1967 {Tags:["MapEntity",ScrapSpawn]}
summon marker 2012 72 2026 {Tags:["MapEntity",ScrapSpawn]}
summon marker 2003 70 2084 {Tags:["MapEntity",ScrapSpawn]}
summon marker 2002 65 1921 {Tags:["MapEntity",ScrapSpawn]}

#> Sound markers
summon marker 1972 74 2034 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2046 75 1948 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2054 73 1925 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2047 73 1934 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 1974 75 2002 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2086 76 1949 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 1984 75 2001 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2066 73 1926 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2039 73 1931 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 1972 74 2012 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2033 75 1944 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 1997 78 2033 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 1974 75 2053 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2052 76 1947 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 1972 74 2044 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2033 72 1924 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2071 75 1939 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2057 74 1937 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 1986 76 2036 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 1993 77 2050 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 1978 75 2028 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 1993 77 2026 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 1982 75 2010 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2082 74 1940 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 1992 77 2007 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2065 75 1948 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 2080 73 1925 {Tags:["MapEntity","PlantSoundMarker"]}
summon marker 1981 75 2046 {Tags:["MapEntity","PlantSoundMarker"]}


#> Spectator spawnpoint
summon marker 1983 96 1932 {Tags:["MapEntity","SpectatorSpawn"]}

#> Chandelier entity
#summon marker 975 139 1000 {Tags:["MapEntity","Chandelier"]}

tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Vineyard","color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"A deal you can't refuse","color":"aqua"}}},"\n"]