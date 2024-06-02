
execute unless data storage mcm:options options.murderers run data merge storage mcm:options {options:{murderers:{min:1, max:3, value:2, smart:1}}}

execute if data storage mcm:options init run return fail

summon text_display ~ ~0.6 ~ {Tags:["option"], Rotation:[90f, 0f], alignment:center, text:'{"translate":"mcm.options.num_murderers"}'}

execute positioned ~ ~0.3 ~ run function mcm:lobby/options/summon_updatable_text \
    { \
        data:{Rotation:[90f, 0f]}, \
        callback: "mcm:lobby/options/murderers/update_murderer_display", \
        extra: {} \
    }

execute positioned ~ ~0.3 ~-0.5 run function mcm:lobby/options/summon_updatable_text \
    { \
        data:{}, \
        callback: "mcm:lobby/options/text_updates/number_option_toggle", \
        extra:{ \
            diff: -1, option:"murderers", \
            enabled: '{"text":"[-]","color":"red"}', \
            disabled: '{"text":"[-]","color":"dark_gray"}' \
        } \
    }
execute positioned ~ ~0.3 ~0.5 run function mcm:lobby/options/summon_updatable_text \
    { \
        data:{}, \
        callback: "mcm:lobby/options/text_updates/number_option_toggle", \
        extra:{ \
            diff: 1, option:"murderers", \
            enabled: '{"text":"[+]","color":"green"}', \
            disabled: '{"text":"[+]","color":"dark_gray"}' \
        } \
    }

execute positioned ~0.1 ~0.3 ~-0.5 run function mcm:lobby/options/summon_interaction \
        {data:{width:0.2,height:0.25,response:1b}, \
        extra:{option:murderers, diff: -1, \
            enable_callback:"mcm:lobby/options/enable_number"}, \
        callback:"mcm:lobby/options/murderers/murderer_count"}
execute positioned ~0.1 ~0.3 ~0.5 run function mcm:lobby/options/summon_interaction \
        {data:{width:0.2,height:0.25,response:1b}, \
        extra:{option:murderers, diff: 1, \
            enable_callback:"mcm:lobby/options/enable_number"}, \
        callback:"mcm:lobby/options/murderers/murderer_count"}

function mcm:lobby/options/summon_updatable_text \
    { \
        data:{Rotation:[90f,0f]}, \
        callback: "mcm:lobby/options/text_updates/toggle", \
        extra: { \
            option: "murderers.smart", \
            enabled: '{"translate":"mcm.options.murderers.smart","color":"green"}', \
            disabled: '{"translate":"mcm.options.murderers.smart","color":"dark_red"}', \
            locked_enabled: '{"translate":"mcm.options.murderers.smart","color":"gray"}', \
            locked_disabled: '{"translate":"mcm.options.murderers.smart","color":"dark_gray"}' \
        } \
    }

execute positioned ~0.4 ~ ~ run function mcm:lobby/options/summon_interaction \
    { \
        data: {width:0.8, height:0.25, response:1b}, \
        callback: "mcm:lobby/options/toggle", \
        extra: {option:"murderers.smart"} \
    }