#> --- Initialize the cosmetic displays ---
#> Initialize scoreboard constants
# These scores represent coordinates,
# multiplied by 100 for decimal precision
scoreboard players set $low lobby_cosmetic_display -500
scoreboard players set $vis_low lobby_cosmetic_display -350
scoreboard players set $vis_high lobby_cosmetic_display 250

#> Scaling constants
#> min/max values to scale the displays to when they are visible
scoreboard players set $scale_max lobby_cosmetic_display 100
scoreboard players set $scale_min lobby_cosmetic_display 70

#> Calculate other constants from the above constants
scoreboard players operation $vis_range lobby_cosmetic_display = $vis_high lobby_cosmetic_display
scoreboard players operation $vis_range lobby_cosmetic_display -= $vis_low lobby_cosmetic_display

scoreboard players operation $vis_center lobby_cosmetic_display = $vis_high lobby_cosmetic_display
scoreboard players operation $vis_center lobby_cosmetic_display += $vis_low lobby_cosmetic_display
scoreboard players operation $vis_center lobby_cosmetic_display /= $2 math

scoreboard players operation $vis_range lobby_cosmetic_display = $vis_high lobby_cosmetic_display
scoreboard players operation $vis_range lobby_cosmetic_display -= $vis_low lobby_cosmetic_display

scoreboard players operation $scale_diff lobby_cosmetic_display = $scale_max lobby_cosmetic_display
scoreboard players operation $scale_diff lobby_cosmetic_display -= $scale_min lobby_cosmetic_display

scoreboard players operation $scale_max_float lobby_cosmetic_display = $scale_max lobby_cosmetic_display
scoreboard players operation $scale_max_float lobby_cosmetic_display *= $100 math

#> Calculate the high bound based of number of displays
scoreboard players set $range lobby_cosmetic_display 0
execute as @e[type=item_display,tag=cosmetic_equip] run scoreboard players add $range lobby_cosmetic_display 150

#> Calculate range
scoreboard players operation $high lobby_cosmetic_display = $low lobby_cosmetic_display
scoreboard players operation $high lobby_cosmetic_display += $range lobby_cosmetic_display

#> Teleport active displays to the correct height
execute as @e[type=item_display,tag=cosmetic_equip] at @s run tp @s ~-0.5 -5 ~

execute as @e[type=item_display,tag=cosmetic_equip] store result score @s lobby_cosmetic_display run data get entity @s Pos[0] 100
execute as @e[type=item_display,tag=cosmetic_equip,x=-3.5,dx=5.5,y=-6,dy=10,z=79,dz=5] at @s run tp @s ~ 2 ~

#> Run the update function once so displays are in the correct location
scoreboard players set $temp lobby_cosmetic_display 0
function mcm:lobby/displays/update_displays
