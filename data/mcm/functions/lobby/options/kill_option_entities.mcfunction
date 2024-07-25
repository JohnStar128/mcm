
#> Kills all entites related to options

#> Text displays tagged `option`
#> Interactions tagged `option`

execute as @e[type=text_display,tag=option] on passengers run kill
execute as @e[type=interaction,tag=option] on passengers run kill

kill @e[type=text_display,tag=option]
kill @e[type=interaction,tag=option]