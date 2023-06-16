execute unless score @s hatchange matches 1.. unless score @s hatchange matches -1 run scoreboard players operation @s hatchange = @s selected_hat
scoreboard players operation @s selected_hat = @s hatchange
#> -1 is no hat
execute if score @s hatchange matches -1 run scoreboard players set @s selected_hat 0

scoreboard players reset @s hatchange

execute if score @s selected_hat matches 0 run function mcm:cosmetics/removehat
execute if score @s selected_hat matches 1 run function mcm:cosmetics/rainbowhat
execute if score @s selected_hat matches 2 run function mcm:cosmetics/lance
execute if score @s selected_hat matches 3 run function mcm:cosmetics/spacehelmet
execute if score @s selected_hat matches 4 run function mcm:cosmetics/3dglasses
execute if score @s selected_hat matches 5 run function mcm:cosmetics/bellhat
execute if score @s selected_hat matches 6 run function mcm:cosmetics/bowlerhat
execute if score @s selected_hat matches 7 run function mcm:cosmetics/skipperhat
execute if score @s selected_hat matches 8 run function mcm:cosmetics/aviatorcap
execute if score @s selected_hat matches 9 run function mcm:cosmetics/fancy

#> Give boots
function mcm:cosmetics/color_boots/generate
