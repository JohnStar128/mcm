
#> Runs the map reset function to keep all the map stuff in one place
execute if score $selectedMap CmdData matches 1 run function mcm:maps/library/reset
execute if score $selectedMap CmdData matches 2 run function mcm:maps/airship/reset
execute if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/reset
execute if score $selectedMap CmdData matches 4 run function mcm:maps/launchpad/reset
execute if score $selectedMap CmdData matches 5 run function mcm:maps/cyberpunk/reset
execute if score $selectedMap CmdData matches 6 run function mcm:maps/riverboat/reset
execute if score $selectedMap CmdData matches 7 run function mcm:maps/industry/reset
execute if score $selectedMap CmdData matches 8 run function mcm:maps/train/reset
execute if score $selectedMap CmdData matches 9 run function mcm:maps/cabin/reset

#> Unload correct map
#Library
execute if score $selectedMap CmdData matches 1 run forceload remove 1023 960 912 1039
execute if score $selectedMap CmdData matches 1 run forceload remove 1023 960 1108 1039
#Airship
execute if score $selectedMap CmdData matches 2 run forceload remove -555 -56 -744 77
#Vineyard
execute if score $selectedMap CmdData matches 3 run forceload remove 2111 2095 1937 1911
#Launch Complex
execute if score $selectedMap CmdData matches 4 run forceload remove -860 -1100 -1170 -1280
execute if score $selectedMap CmdData matches 4 run forceload remove -860 -1100 -1128 -997
execute if score $selectedMap CmdData matches 4 run forceload remove -961 -881 -1136 -976
#Color Filth
execute if score $selectedMap CmdData matches 5 run forceload remove -2178 1968 -1969 2135
#Riverboat
execute if score $selectedMap CmdData matches 6 run forceload remove 2130 -2015 2000 -1975
# Industry
execute if score $selectedMap CmdData matches 7 run forceload remove -1926 -2938 -2067 -3063
# Train
execute if score $selectedMap CmdData matches 8 run forceload remove 2000 3040 1585 2945
# Cabin
execute if score $selectedMap CmdData matches 9 run forceload remove -1938 3000 -2030 3048
