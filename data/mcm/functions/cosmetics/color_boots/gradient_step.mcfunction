scoreboard players operation $temp math = $hue player_color
# put hue in the range [-60, 60] and walk a pseudorandom amount in that direction
scoreboard players set $temp2 math 120
scoreboard players operation $temp math %= $temp2 math
scoreboard players operation $temp math -= $sixty math
scoreboard players operation $temp math *= $minus_one math
scoreboard players operation $x pseudorandom *= $a pseudorandom
scoreboard players operation $x pseudorandom += $c pseudorandom
scoreboard players operation $temp2 math = $x pseudorandom 
scoreboard players operation $temp2 math %= $fifteen math
scoreboard players operation $temp2 math += $ten math
scoreboard players operation $temp math /= $temp2 math
scoreboard players operation $hue player_color += $temp math
