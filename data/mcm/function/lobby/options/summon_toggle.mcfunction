#> Shortcut to Summon a toggle option
#> `option` name of the option
#> `text` text to display on the option, note it is a translation tag
#> `value` the default value of the toggle: 0 for disabled, 1 for enabled
#>      Note calling this multiple times will not update the value unless the options are reset

$execute unless data storage mcm:options options.$(option) run data modify storage mcm:options options.$(option) set value $(value)

execute if data storage mcm:options init run return fail

$execute positioned ~0.775 ~ ~ run function mcm:lobby/options/summon_interaction \
    {data:{width:1.5,height:0.8, response:1b}, \
    callback:"mcm:lobby/options/toggle", \
    extra:{ \
        option: "$(option)", \
    }}

$function mcm:lobby/options/summon_updatable_text \
    {data:{Rotation:[90f, 0f], line_width:80}, \
    callback:"mcm:lobby/options/text_updates/toggle", \
    extra: { \
        option: "$(option)", \
        enabled: '[{"translate":"$(text)"},"\\n",{"translate":"mcm.options.enabled","color":"green"}]', \
        disabled: '[{"translate":"$(text)"},"\\n",{"translate":"mcm.options.disabled","color":"dark_red"}]', \
        locked_enabled: '[{"translate":"$(text)"},"\\n",{"translate":"mcm.options.enabled","color":"gray"}]', \
        locked_disabled: '[{"translate":"$(text)"},"\\n",{"translate":"mcm.options.disabled","color":"dark_gray"}]', \
    }}

