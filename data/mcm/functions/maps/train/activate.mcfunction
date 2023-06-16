#> Forceload the Train map
forceload add 2000 3040 1585 2945

#> Kill potential leftover entities
kill @e[tag=MapEntity]

#scoreboard players set $gametimer CmdData 12000

#> Player Spawnpoints
execute positioned 1806 113 2998 run function mcm:game/markers/playerspawn
execute positioned 1805 105 2996 run function mcm:game/markers/playerspawn
execute positioned 1760 105 3004 run function mcm:game/markers/playerspawn
execute positioned 1920 112 3005 run function mcm:game/markers/playerspawn
execute positioned 1782 113 3000 run function mcm:game/markers/playerspawn
execute positioned 1978 115 3000 run function mcm:game/markers/playerspawn
execute positioned 1798 105 3001 run function mcm:game/markers/playerspawn
execute positioned 1865 113 3003 run function mcm:game/markers/playerspawn
execute positioned 1835 105 3000 run function mcm:game/markers/playerspawn
execute positioned 1885 113 3003 run function mcm:game/markers/playerspawn
execute positioned 1920 103 3004 run function mcm:game/markers/playerspawn
execute positioned 1770 111 3008 run function mcm:game/markers/playerspawn
execute positioned 1793 105 3001 run function mcm:game/markers/playerspawn
execute positioned 1824 113 3003 run function mcm:game/markers/playerspawn
execute positioned 1776 113 2997 run function mcm:game/markers/playerspawn
execute positioned 1840 113 2996 run function mcm:game/markers/playerspawn
execute positioned 1958 106 3000 run function mcm:game/markers/playerspawn
execute positioned 1843 105 2996 run function mcm:game/markers/playerspawn
execute positioned 1925 103 2995 run function mcm:game/markers/playerspawn
execute positioned 1759 113 3000 run function mcm:game/markers/playerspawn
execute positioned 1853 105 3000 run function mcm:game/markers/playerspawn
execute positioned 1796 113 3004 run function mcm:game/markers/playerspawn
execute positioned 1852 113 3003 run function mcm:game/markers/playerspawn
execute positioned 1951 113 3000 run function mcm:game/markers/playerspawn
execute positioned 1776 105 3004 run function mcm:game/markers/playerspawn
execute positioned 1828 105 3004 run function mcm:game/markers/playerspawn
execute positioned 1889 113 2994 run function mcm:game/markers/playerspawn
execute positioned 1824 111 3008 run function mcm:game/markers/playerspawn

#> Sound markers
#none

#> Doors
summon marker 1808 113 3000 {Tags:["train_door","MapEntity"]}
summon marker 1816 113 3000 {Tags:["train_door","MapEntity"]}
summon marker 1868 113 3000 {Tags:["train_door","MapEntity"]}
summon marker 1876 113 3000 {Tags:["train_door","MapEntity"]}
summon marker 1928 113 3000 {Tags:["train_door","MapEntity"]}
summon marker 1936 113 3000 {Tags:["train_door","MapEntity"]}
summon marker 1937 105 3000 {Tags:["train_door","MapEntity"]}
summon marker 1927 105 3000 {Tags:["train_door","MapEntity"]}
summon marker 1877 105 3000 {Tags:["train_door","MapEntity"]}
summon marker 1867 105 3000 {Tags:["train_door","MapEntity"]}
summon marker 1817 105 3000 {Tags:["train_door","MapEntity"]}
summon marker 1807 105 3000 {Tags:["train_door","MapEntity"]}

#> Dinner secret
summon horse 1845 112.1 3003 {NoAI:1b,Rotation:[90.f,0.0f],Invulnerable:1b,Silent:1b,Tags:["dinner_seat"]}
summon horse 1839 112.1 3003 {NoAI:1b,Rotation:[-90.f,0.0f],Invulnerable:1b,Silent:1b,Tags:["dinner_seat"]}
effect give @e[type=horse,tag=dinner_seat] minecraft:invisibility infinite 1 true
effect give @e[type=horse,tag=dinner_seat] minecraft:resistance infinite 100 true
execute as @e[type=horse,tag=dinner_seat] run team join nametags
scoreboard players set $dinner_timer CmdData 600

#> Spectator spawnpoint
execute positioned 1980 117 3000 run function mcm:game/markers/spectatorspawn

tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"A Tragedy On The Boreal Express","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"And Then There Were None","color":"aqua"},{"text":"\n    --------","color":"dark_gray"},{"text":"\nConcept by: ","color":"dark_aqua"},{"text":"TheLastOreo","color":"green"}]}},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Directed by: ","color":"gray"},{"text":"TheLastOreo\n","color":"dark_green"}]
