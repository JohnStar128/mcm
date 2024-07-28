#> Find intermediate point
scoreboard players operation $chroma player_color = $saturation player_color
scoreboard players operation $chroma player_color *= $value player_color
scoreboard players set $temp math 256
scoreboard players operation $chroma player_color /= $temp math

scoreboard players operation $hue_prime player_color = $hue player_color
scoreboard players operation $hue_prime player_color /= $sixty math

scoreboard players operation $temp player_color = $hue player_color
scoreboard players operation $temp math = $sixty math
scoreboard players operation $temp math *= $two math

scoreboard players operation $temp player_color %= $temp math
scoreboard players operation $temp player_color -= $sixty math
execute if score $temp player_color matches ..0 run scoreboard players operation $temp player_color *= $minus_one math
scoreboard players operation $temp player_color *= $minus_one math
scoreboard players operation $temp player_color += $sixty math
scoreboard players operation $temp player_color *= $chroma player_color
scoreboard players operation $temp player_color /= $sixty math
scoreboard players operation $intermediate player_color = $temp player_color

#>Get RGB colors
execute if score $hue_prime player_color matches 0 run scoreboard players operation $red player_color = $chroma player_color
execute if score $hue_prime player_color matches 0 run scoreboard players operation $green player_color = $intermediate player_color
execute if score $hue_prime player_color matches 0 run scoreboard players set $blue player_color 0

execute if score $hue_prime player_color matches 1 run scoreboard players operation $red player_color = $intermediate player_color
execute if score $hue_prime player_color matches 1 run scoreboard players operation $green player_color = $chroma player_color
execute if score $hue_prime player_color matches 1 run scoreboard players set $blue player_color 0

execute if score $hue_prime player_color matches 2 run scoreboard players set $red player_color 0
execute if score $hue_prime player_color matches 2 run scoreboard players operation $green player_color = $chroma player_color
execute if score $hue_prime player_color matches 2 run scoreboard players operation $blue player_color = $intermediate player_color

execute if score $hue_prime player_color matches 3 run scoreboard players set $red player_color 0
execute if score $hue_prime player_color matches 3 run scoreboard players operation $green player_color = $intermediate player_color
execute if score $hue_prime player_color matches 3 run scoreboard players operation $blue player_color = $chroma player_color

execute if score $hue_prime player_color matches 4 run scoreboard players operation $red player_color = $intermediate player_color
execute if score $hue_prime player_color matches 4 run scoreboard players set $green player_color 0
execute if score $hue_prime player_color matches 4 run scoreboard players operation $blue player_color = $chroma player_color

execute if score $hue_prime player_color matches 5 run scoreboard players operation $red player_color = $chroma player_color
execute if score $hue_prime player_color matches 5 run scoreboard players set $green player_color 0
execute if score $hue_prime player_color matches 5 run scoreboard players operation $blue player_color = $intermediate player_color

scoreboard players operation $temp player_color = $value player_color
scoreboard players operation $temp player_color -= $chroma player_color
scoreboard players operation $red player_color += $temp player_color
scoreboard players operation $green player_color += $temp player_color
scoreboard players operation $blue player_color += $temp player_color
