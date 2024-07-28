#> Currently unused because it's way easier to just make up HSV values, but does work

#> Value
scoreboard players operation $value player_color = $max player_color

#> Chroma
scoreboard players operation $chroma player_color = $max player_color
scoreboard players operation $chroma player_color -= $min player_color

#> Hue
execute if score $chroma player_color matches 0 run scoreboard players set $hue player_color 0
# Max was red
execute if score $value player_color = $red player_color run scoreboard players operation $hue player_color = $green player_color
execute if score $value player_color = $red player_color run scoreboard players operation $hue player_color -= $blue player_color
execute if score $value player_color = $red player_color run scoreboard players operation $hue player_color %= $max_angle player_color
execute if score $value player_color = $red player_color run scoreboard players operation $hue player_color *= $sixty math
execute if score $value player_color = $red player_color run scoreboard players operation $hue player_color /= $chroma player_color
# Max was green
execute if score $value player_color = $green player_color run scoreboard players operation $hue player_color = $blue player_color
execute if score $value player_color = $green player_color run scoreboard players operation $hue player_color -= $red player_color
execute if score $value player_color = $green player_color run scoreboard players operation $hue player_color %= $max_angle player_color
execute if score $value player_color = $green player_color run scoreboard players operation $hue player_color *= $sixty math
execute if score $value player_color = $green player_color run scoreboard players operation $hue player_color /= $chroma player_color
execute if score $value player_color = $green player_color run scoreboard players operation $temp player_color = $two math
execute if score $value player_color = $green player_color run scoreboard players operation $temp player_color *= $sixty math
execute if score $value player_color = $green player_color run scoreboard players operation $hue player_color += $temp player_color
# Max was blue
execute if score $value player_color = $blue player_color run scoreboard players operation $hue player_color = $red player_color
execute if score $value player_color = $blue player_color run scoreboard players operation $hue player_color -= $green player_color
execute if score $value player_color = $blue player_color run scoreboard players operation $hue player_color %= $max_angle player_color
execute if score $value player_color = $blue player_color run scoreboard players operation $hue player_color *= $sixty math
execute if score $value player_color = $blue player_color run scoreboard players operation $hue player_color /= $chroma player_color
execute if score $value player_color = $blue player_color run scoreboard players operation $temp player_color = $four math
execute if score $value player_color = $blue player_color run scoreboard players operation $temp player_color *= $sixty math
execute if score $value player_color = $blue player_color run scoreboard players operation $hue player_color += $temp player_color

scoreboard players operation $hue player_color %= $max_angle player_color

#> We won't actually need saturation because we already have chroma
