#> Notify players this is the map selected
$tellraw @a ["\n", \
             {"text":"| ","bold":true,"color":"dark_gray"}, \
             {"translate":"mcm.map.ready","underlined":true,"color":"green","bold":false}, \
             "\n", \
             {"text":"| ","bold":true,"color":"dark_gray"}, \
             "\n", \
             {"text":"| ","bold":true,"color":"dark_gray"}, \
             {"translate":"mcm.map.selected","color":"gray","bold":false,"with":[ \
                {"translate":"mcm.$(name).name","color":"dark_green","hoverEvent":{"action":"show_text","value":[ \
                    {"translate":"mcm.$(name).hover","color":"aqua"}, \
                    {"text":"\n    --------\n","color":"dark_gray"}, \
                    {"translate":"mcm.map.concept","color":"dark_aqua", "with":[ \
                        $(credits) \
                    ]} \
                ]}} \
             ]}, \
             "\n", \
             {"text":"| ","bold":true,"color":"dark_gray"}, \
             {"translate":"mcm.map.directed","color":"gray","bold":false, "with":[ \
                $(credits) \
             ]}, \
             "\n" \
            ]

#> Kill potential leftover entities from last game
# Hopefully we never need this????!!
kill @e[tag=map_entity]

#> Summon map props (including player spawns)
$function mcm:props/summon {map:"$(name)"}

#> Map-specific initializations
$schedule function mcm:maps/$(name)/activate 1t
$time set $(time)
