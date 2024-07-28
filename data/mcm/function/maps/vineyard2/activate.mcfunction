#> Forceload the Vineyard map
forceload add 1675 2019 1778 2148

#> Kill potential leftover entities
kill @e[tag=MapEntity]
scoreboard players reset @a drankPotion


#> Player spawns
execute positioned 1765 85 2035 run function mcm:game/markers/playerspawn
execute positioned 1728 87 2036 run function mcm:game/markers/playerspawn
execute positioned 1741 89 2042 run function mcm:game/markers/playerspawn
execute positioned 1698 87 2039 run function mcm:game/markers/playerspawn
execute positioned 1753 87 2037 run function mcm:game/markers/playerspawn
execute positioned 1710 87 2130 run function mcm:game/markers/playerspawn
execute positioned 1724 87 2121 run function mcm:game/markers/playerspawn
execute positioned 1766 86 2066 run function mcm:game/markers/playerspawn
execute positioned 1689 89 2060 run function mcm:game/markers/playerspawn
execute positioned 1719 88 2058 run function mcm:game/markers/playerspawn
execute positioned 1732 81 2099 run function mcm:game/markers/playerspawn
execute positioned 1742 95 2102 run function mcm:game/markers/playerspawn
execute positioned 1757 81 2086 run function mcm:game/markers/playerspawn
execute positioned 1758 88 2080 run function mcm:game/markers/playerspawn
execute positioned 1749 88 2083 run function mcm:game/markers/playerspawn
execute positioned 1759 88 2092 run function mcm:game/markers/playerspawn
execute positioned 1748 95 2082 run function mcm:game/markers/playerspawn
execute positioned 1746 104 2082 run function mcm:game/markers/playerspawn
execute positioned 1753 104 2084 run function mcm:game/markers/playerspawn
execute positioned 1759 104 2095 run function mcm:game/markers/playerspawn
execute positioned 1725 87 2078 run function mcm:game/markers/playerspawn
execute positioned 1731 88 2061 run function mcm:game/markers/playerspawn
execute positioned 1693 90 2084 run function mcm:game/markers/playerspawn
execute positioned 1747 81 2102 run function mcm:game/markers/playerspawn
execute positioned 1755 96 2103 run function mcm:game/markers/playerspawn
execute positioned 1749 89 2054 run function mcm:game/markers/playerspawn
execute positioned 1720 87 2090 run function mcm:game/markers/playerspawn
execute positioned 1701 89 2103 run function mcm:game/markers/playerspawn
execute positioned 1746 88 2078 run function mcm:game/markers/playerspawn
execute positioned 1732 95 2082 run function mcm:game/markers/playerspawn
execute positioned 1735 104 2086 run function mcm:game/markers/playerspawn
execute positioned 1725 87 2097 run function mcm:game/markers/playerspawn

#> Scrap spawns
execute positioned 1765 85 2035 run function mcm:game/markers/scrapspawn
execute positioned 1728 87 2036 run function mcm:game/markers/scrapspawn
execute positioned 1741 89 2042 run function mcm:game/markers/scrapspawn
execute positioned 1698 87 2039 run function mcm:game/markers/scrapspawn
execute positioned 1701 87 2041 run function mcm:game/markers/scrapspawn
execute positioned 1744 79 2037 run function mcm:game/markers/scrapspawn
execute positioned 1753 87 2037 run function mcm:game/markers/scrapspawn
execute positioned 1710 87 2130 run function mcm:game/markers/scrapspawn
execute positioned 1724 87 2121 run function mcm:game/markers/scrapspawn
execute positioned 1766 86 2066 run function mcm:game/markers/scrapspawn
execute positioned 1704 79 2048 run function mcm:game/markers/scrapspawn
execute positioned 1689 89 2060 run function mcm:game/markers/scrapspawn
execute positioned 1719 88 2058 run function mcm:game/markers/scrapspawn
execute positioned 1732 81 2099 run function mcm:game/markers/scrapspawn
execute positioned 1742 95 2102 run function mcm:game/markers/scrapspawn
execute positioned 1757 81 2086 run function mcm:game/markers/scrapspawn
execute positioned 1758 88 2080 run function mcm:game/markers/scrapspawn
execute positioned 1749 88 2083 run function mcm:game/markers/scrapspawn
execute positioned 1759 88 2092 run function mcm:game/markers/scrapspawn
execute positioned 1748 95 2082 run function mcm:game/markers/scrapspawn
execute positioned 1746 104 2082 run function mcm:game/markers/scrapspawn
execute positioned 1753 104 2084 run function mcm:game/markers/scrapspawn
execute positioned 1759 104 2095 run function mcm:game/markers/scrapspawn
execute positioned 1725 87 2078 run function mcm:game/markers/scrapspawn
execute positioned 1703 74 2067 run function mcm:game/markers/scrapspawn
execute positioned 1731 88 2061 run function mcm:game/markers/scrapspawn
execute positioned 1693 90 2084 run function mcm:game/markers/scrapspawn
execute positioned 1750 78 2110 run function mcm:game/markers/scrapspawn
execute positioned 1747 81 2102 run function mcm:game/markers/scrapspawn
execute positioned 1755 96 2103 run function mcm:game/markers/scrapspawn
execute positioned 1759 79 2062 run function mcm:game/markers/scrapspawn
execute positioned 1749 89 2054 run function mcm:game/markers/scrapspawn
execute positioned 1720 87 2090 run function mcm:game/markers/scrapspawn
execute positioned 1701 89 2103 run function mcm:game/markers/scrapspawn
execute positioned 1746 88 2078 run function mcm:game/markers/scrapspawn
execute positioned 1732 95 2082 run function mcm:game/markers/scrapspawn
execute positioned 1735 104 2086 run function mcm:game/markers/scrapspawn
execute positioned 1725 87 2097 run function mcm:game/markers/scrapspawn

execute positioned 1726 118 2044 run function mcm:game/markers/spectatorspawn

#tellraw @a ["","\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"The game is ready to play!","underlined":true,"color":"green"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Vineyard","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Well, ","color":"aqua"},{"text":"that","color":"aqua","italic":true},{"text":" aged like fine wine","color":"aqua"},{"text":"\n    --------","color":"dark_gray"},{"text":"\nConcept by: ","color":"dark_aqua"},{"text":"_topaz, Brownie1111","color":"green"}]}},"\n",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Directed by: ","color":"gray"},{"text":"_topaz, Brownie1111\n","color":"dark_green"}]

tellraw @a ["\n",{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.ready","underlined":true,"color":"green","bold":false}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.selected","color":"gray","bold":false,"with":[{"translate":"mcm.vineyard.name","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"translate":"mcm.vineyard.hover","color":"aqua", "italic":false, "with":[{"translate":"mcm.vineyard.hover.italic", "italic":true}]},{"text":"\n    --------\n","color":"dark_gray"},{"translate":"mcm.map.concept","color":"dark_aqua", "with":[ {"translate":"mcm.map.list.2", "color":"green", "with":[ "_topaz", "Brownie1111" ]} ]}]}}]}]
tellraw @a [{"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.map.directed","color":"gray","bold":false, "with":[ {"translate":"mcm.map.list.2", "color":"dark_green", "with": ["_topaz", "Brownie1111"]} ]}, "\n"]
