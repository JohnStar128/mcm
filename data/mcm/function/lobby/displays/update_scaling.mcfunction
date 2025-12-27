#> Updates scaling for lobby cosmetic display
#> Run as the item display

#> Positive X Distance from display center
execute store result score $scale vars run data get entity @s Pos[0] 100
scoreboard players operation $scale vars -= $vis_center lobby_cosmetic_display
execute if score $scale vars matches ..0 run scoreboard players operation $scale vars *= $-1 math

#> Normalize to value between 0 and 1 (0 and 100)
scoreboard players operation $scale vars *= $200 math
scoreboard players operation $scale vars /= $vis_range lobby_cosmetic_display

#> Clamp values to 0 to 100
scoreboard players operation $scale vars < $100 math

#> Interpolate between $scale_max at center to $scale_min at sides
scoreboard players operation $scale_high vars = $scale_max_float lobby_cosmetic_display
scoreboard players operation $scale_low vars = $scale_diff lobby_cosmetic_display
scoreboard players operation $scale_low vars *= $scale vars
scoreboard players operation $scale_high vars -= $scale_low vars
scoreboard players operation $scale vars = $scale_high vars
scoreboard players operation $scale vars /= $100 math

execute store result entity @s transformation.scale[0] float 0.01 run scoreboard players get $scale vars
execute store result entity @s transformation.scale[1] float 0.01 run scoreboard players get $scale vars 
execute store result entity @s transformation.scale[2] float 0.01 run scoreboard players get $scale vars

# scoreboard players reset $scale vars
scoreboard players reset $scale_high vars
scoreboard players reset $scale_low vars
