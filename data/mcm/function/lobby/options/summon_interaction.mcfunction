#> Summons an interaction
#> `data` is the interaction entity's data
#> `extra` is the extra data stored on a marker riding the interaction
#> Don't use the `Passengers` tag with the interaction

#> Set `extra.enable_callback` to the function that determines whether the interaction should be usable in its current summon_updatable_text
#>      The interaction is enabled if the callback suceeds (`return 1`)
#>      It is disabled if the callback fails (`return fail`)

#> Execute the function at the location of the interaction

#> Note the `option` tag is automatically added to the interaction


$execute summon interaction run function mcm:lobby/options/backend/summon_interaction_inner {data:$(data),extra:$(extra),callback:"$(callback)"}



