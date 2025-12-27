#> Get updated information from the player to direct scrolling options
#> Need a player as the sender

#> Get player facing angle, used as a direction to scale
# Add a "dead zone" in the middle where the displays don't move,
# and clip the angle between [-65,65] to prevent them from moving
# when the player isn't actually looking at the displays
execute store result score $temp lobby_cosmetic_display run data get entity @s Rotation[0] 1
execute if score $temp lobby_cosmetic_display matches -7..7 run scoreboard players set $temp lobby_cosmetic_display 0
execute if score $temp lobby_cosmetic_display matches ..-66 run scoreboard players set $temp lobby_cosmetic_display 0
execute if score $temp lobby_cosmetic_display matches 66.. run scoreboard players set $temp lobby_cosmetic_display 0

#> Scale angle down, this will be added to scrolling options' positions
scoreboard players operation $temp lobby_cosmetic_display /= $five math
scoreboard players operation $temp lobby_cosmetic_display *= $three math

#> Move displays
function mcm:lobby/displays/update_displays
