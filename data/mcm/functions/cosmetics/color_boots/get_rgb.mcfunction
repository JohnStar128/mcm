#> Get red
scoreboard players operation $temp player_color = $prev player_color
scoreboard players operation $temp player_color /= $red_offset player_color
scoreboard players operation $temp player_color %= $max_rgb player_color
scoreboard players operation $red player_color = $temp player_color

#> Get green
scoreboard players operation $temp player_color = $prev player_color
scoreboard players operation $temp player_color /= $green_offset player_color
scoreboard players operation $temp player_color %= $max_rgb player_color
scoreboard players operation $green player_color = $temp player_color

#> Get blue
scoreboard players operation $temp player_color = $prev player_color
scoreboard players operation $temp player_color %= $max_rgb player_color
scoreboard players operation $blue player_color = $temp player_color

#> Get max and min
scoreboard players operation $max player_color = $red player_color
scoreboard players operation $max player_color > $green player_color
scoreboard players operation $max player_color > $blue player_color

scoreboard players operation $min player_color = $red player_color
scoreboard players operation $min player_color < $green player_color
scoreboard players operation $min player_color < $blue player_color
