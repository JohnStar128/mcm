#> Get updated information from the player to direct scrolling options
#> Need a player as the sender

#> Get player facing angle, used as a direction to scale 
execute store result score @s facing run data get entity @s Rotation[0] 1
scoreboard players set $temp display_scrolling 0

#> Make a "dead zone" where the selection doesn't move so it's easier to pick an option
execute if score @s facing matches ..-7 run scoreboard players operation $temp display_scrolling = @s facing
execute if score @s facing matches 7.. run scoreboard players operation $temp display_scrolling = @s facing

#> Clip the angle between [-65,65]
execute if score @s facing matches ..-65 run scoreboard players set $temp display_scrolling 0
execute if score @s facing matches 65.. run scoreboard players set $temp display_scrolling 0

#> Scale angle down, this will be added to scrolling options' positions
scoreboard players operation $temp display_scrolling /= $five math
scoreboard players operation $temp display_scrolling *= $three math
#> Move displays
function mcm:lobby/displays/update_displays