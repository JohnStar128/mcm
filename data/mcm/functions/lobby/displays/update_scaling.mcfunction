#> Updates scaling for lobby cosmetic display
#> Run as the item display

#> Distance from display center

scoreboard players operation @s display_scaling = @s display_coord
scoreboard players operation @s display_scaling -= $vis_center display_scrolling
execute if score @s display_scaling matches ..0 run scoreboard players operation @s display_scaling *= $-1 math

#> Normalize to value between 0 and 1 (0 and 100)
scoreboard players operation @s display_scaling *= $200 math
scoreboard players operation @s display_scaling /= $vis_range display_scrolling

#> Clamp values to 0 to 100
scoreboard players operation @s display_scaling < $100 math

#> Interpolate between $scale_max at center to $scale_min at sides
scoreboard players operation $temp display_scaling = $scale_max display_scaling
scoreboard players operation $temp display_scaling *= $100 math
scoreboard players operation $temp2 display_scaling = $scale_diff display_scaling
scoreboard players operation $temp2 display_scaling *= @s display_scaling

scoreboard players operation $temp display_scaling -= $temp2 display_scaling
#scoreboard players operation $temp display_scaling /= $100 math

scoreboard players operation @s display_scaling = $temp display_scaling
scoreboard players operation @s display_scaling /= $100 math

execute store result entity @s transformation.scale[0] float 0.01 run scoreboard players get @s display_scaling
execute store result entity @s transformation.scale[1] float 0.01 run scoreboard players get @s display_scaling 
execute store result entity @s transformation.scale[2] float 0.01 run scoreboard players get @s display_scaling