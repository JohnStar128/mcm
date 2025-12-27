#> Make the displays spin

data merge storage mcm:args {temp:{rot:0}}
execute store result storage mcm:args temp.rot int 1 run scoreboard players get $cosmetic_display_rotate timers
execute as @e[type=item_display,tag=cosmetic_equip] run function mcm:lobby/displays/animate_helper with storage mcm:args temp
data remove storage mcm:args temp
