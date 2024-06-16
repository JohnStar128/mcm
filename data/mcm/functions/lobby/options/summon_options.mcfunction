
execute unless data storage mcm:options init run function mcm:lobby/options/kill_option_entities

# Reset button
execute unless data storage mcm:options init positioned 26.9 9.75 84.5 positioned ~0.5 ~ ~ run \
    function mcm:lobby/options/summon_interaction {data:{width: 1f, height: 0.6, response:1b}, \ 
    callback: "mcm:lobby/options/reset_to_defaults", \
    extra:{}}
execute unless data storage mcm:options init run summon text_display 26.9 9.75 84.5 { \
    alignment:center, Rotation:[90f, 0f], Tags:["option"], line_width:90, \
    text: '{"translate":"mcm.options.reset_to_default"}'}


execute positioned 27.9 10.5 98.0 facing ~-1 ~ ~ run function mcm:lobby/options/map_toggle/summon

execute positioned 27.9 10.0 88.5 facing ~-1 ~ ~ run \
    function mcm:lobby/options/summon_toggle {option: "autostart", text: "mcm.options.autostart", value: 1}

execute positioned 27.9 9.25 91.5 run function mcm:lobby/options/murderers/summon
execute positioned 27.9 10.5 91.5 run function mcm:lobby/options/gametime

execute positioned 27.9 10.5 104.5 run \
    function mcm:lobby/options/summon_toggle {option: "animations", text: "mcm.options.animations", value: 1}
execute positioned 27.9 9.25 104.5 run \
    function mcm:lobby/options/summon_toggle {option: "scrap_start", text: "mcm.options.scrap_start", value: 1}

execute positioned 27.9 10.5 106.5 run \
    function mcm:lobby/options/summon_toggle {option: "murderer_ff", text: "mcm.options.murderer_ff", value: 0}
execute positioned 27.9 9.25 106.5 run \
    function mcm:lobby/options/summon_toggle {option: "update_ingame_counts", text: "mcm.options.update_ingame_counts", value: 1}

execute positioned 27.9 10.5 108.5 run \
    function mcm:lobby/options/summon_toggle {option: "darkness", text: "mcm.options.darkness", value: 0}
execute positioned 27.9 9.25 108.5 run \
    function mcm:lobby/options/summon_toggle {option: "recall_destroy_guns", text: "mcm.options.knife_recall_can_destroy_guns", value: 0}

# text displays for the first time
function mcm:lobby/options/backend/update_displays