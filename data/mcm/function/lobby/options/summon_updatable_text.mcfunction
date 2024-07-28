#> Summons a text display that updates on setting change
#> `callback` is the function called on change
#> `data` is the interaction entity's data
#> `extra` is the extra data stored on a marker riding the text display

#> Use `extra` to pass any data required to properly update the display
#> Don't use the `Passengers` tag with the text display

#> Execute the function where the text display should be summoned

# Seperate summon to silence the annoying console logs
summon text_display ~ ~ ~ {alignment:'center',Tags:["text_display_temp"], Rotation:[90f, 0f]}
$execute as @e[type=text_display,tag=text_display_temp] run function mcm:lobby/options/backend/summon_text_inner {data:$(data),extra:$(extra),callback:"$(callback)"}

#$execute summon text_display run function mcm:lobby/options/backend/summon_text_inner {data:$(data),extra:$(extra),callback:"$(callback)"}



