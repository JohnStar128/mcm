scoreboard players operation $x pseudorandom *= $a pseudorandom
scoreboard players operation $x pseudorandom += $c pseudorandom
scoreboard players operation $hue player_color = $x pseudorandom
scoreboard players operation $hue player_color %= $max_angle player_color

function mcm:cosmetics/color_boots/gradient_step
function mcm:cosmetics/color_boots/gradient_step
#function mcm:cosmetics/color_boots/gradient_step
#function mcm:cosmetics/color_boots/gradient_step
#function mcm:cosmetics/color_boots/gradient_step

scoreboard players operation $hue player_color %= $max_angle player_color

scoreboard players set $value player_color 128
scoreboard players set $temp2 math 128
scoreboard players operation $x pseudorandom *= $a pseudorandom
scoreboard players operation $x pseudorandom += $c pseudorandom
scoreboard players operation $temp math = $x pseudorandom
scoreboard players operation $temp math %= $temp2 math

scoreboard players operation $value player_color += $temp math
