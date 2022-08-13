#> Shift red and green values left to get final hex code
scoreboard players operation $red player_color *= $red_offset player_color
scoreboard players operation $green player_color *= $green_offset player_color

scoreboard players operation $temp player_color = $red player_color
scoreboard players operation $temp player_color += $green player_color
scoreboard players operation $temp player_color += $blue player_color
