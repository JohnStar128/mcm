
execute unless data storage mcm:options options.gametime run data merge storage mcm:options {options:{gametime:{min: 5, max: 20, value: 10}}}

execute if data storage mcm:options init run return fail

summon text_display ~ ~0.3 ~ {Tags:["option"], alignment:center, Rotation:[90f, 0f], \
    text:'{"translate":"mcm.options.gametime"}'}

execute positioned ~ ~ ~ run function mcm:lobby/options/summon_updatable_text { \
    data:{}, \
    callback:"mcm:lobby/options/text_updates/set", \
    extra:{text:'{"nbt":"options.gametime.value","storage":"mcm:options"}'}}

execute positioned ~ ~ ~-0.5 run function mcm:lobby/options/summon_updatable_text \
        {data:{}, \
        callback:"mcm:lobby/options/text_updates/number_option_toggle",\
        extra:{diff:-1, option:'gametime',\
            enabled:'{"text":"[-]","color":"red"}',\
            disabled:'{"text":"[-]","color":"dark_gray"}'}}
execute positioned ~ ~ ~-1.0 run function mcm:lobby/options/summon_updatable_text \
        {data:{},\
        callback:"mcm:lobby/options/text_updates/number_option_toggle",\
        extra:{diff:-5, option:'gametime',\
            enabled:'{"text":"[-5]","color":"red"}',\
            disabled:'{"text":"[-5]","color":"dark_gray"}'}}

execute positioned ~ ~ ~0.5 run function mcm:lobby/options/summon_updatable_text \
        {data:{Rotation:[90f,0f]},\
        callback:"mcm:lobby/options/text_updates/number_option_toggle",\
        extra:{diff:1, option:'gametime',\
            enabled:'{"text":"[+]","color":"green"}',\
            disabled:'{"text":"[+]","color":"dark_gray"}'}}
execute positioned ~ ~ ~1.0 run function mcm:lobby/options/summon_updatable_text \
        {data:{Rotation:[90f,0f]},\
        callback:"mcm:lobby/options/text_updates/number_option_toggle",\
        extra:{diff:5, option:'gametime',\
            enabled:'{"text":"[+5]","color":"green"}',\
            disabled:'{"text":"[+5]","color":"dark_gray"}'}}



execute positioned ~0.1 ~ ~-0.5 run function mcm:lobby/options/summon_interaction \
        {data:{width:0.2,height:0.25,response:1b}, \
        extra:{option:gametime, diff: -1, \
            enable_callback:"mcm:lobby/options/enable_number"},\
        callback:"mcm:lobby/options/number_option"}
execute positioned ~0.1 ~ ~0.5 run function mcm:lobby/options/summon_interaction \
        {data:{width:0.2,height:0.25,response:1b}, \
        extra:{option:gametime, diff: 1, \
            enable_callback:"mcm:lobby/options/enable_number"},\
        callback:"mcm:lobby/options/number_option"}

execute positioned ~0.2 ~ ~-1.0 run function mcm:lobby/options/summon_interaction \
        {data:{width:0.4,height:0.25,response:1b}, \
        extra:{option:gametime, diff: -5, \
            enable_callback:"mcm:lobby/options/enable_number"},\
        callback:"mcm:lobby/options/number_option"}
execute positioned ~0.2 ~ ~1.0 run function mcm:lobby/options/summon_interaction \
        {data:{width:0.4,height:0.25,response:1b}, \
        extra:{option:gametime, diff: 5, \
            enable_callback:"mcm:lobby/options/enable_number"},\
        callback:"mcm:lobby/options/number_option"}
