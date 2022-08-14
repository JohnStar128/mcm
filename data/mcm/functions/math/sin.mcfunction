#> Takes input as $temp math, leaves output in $out math
scoreboard players operation $temp math *= $pi math
scoreboard players operation $temp math /= $forty math
scoreboard players operation $x math = $temp math

#> Use Taylor approximation for calculating sin, values are scaled up by 1000 because no floating point :(
scoreboard players set $three_fact math 6
scoreboard players set $five_fact math 120
scoreboard players set $seven_fact math 5040

#> This weird order is for numerical stability
scoreboard players operation $x_cubed math = $temp math
scoreboard players operation $x_cubed math *= $temp math
scoreboard players operation $x_cubed math /= $one_thousand math
scoreboard players operation $x_cubed math *= $temp math
scoreboard players operation $x_cubed math /= $one_thousand math

scoreboard players operation $x_fifth math = $temp math
scoreboard players operation $x_fifth math *= $temp math
scoreboard players operation $x_fifth math /= $one_thousand math
scoreboard players operation $x_fifth math *= $temp math
scoreboard players operation $x_fifth math /= $one_thousand math
scoreboard players operation $x_fifth math *= $temp math
scoreboard players operation $x_fifth math /= $one_thousand math
scoreboard players operation $x_fifth math *= $temp math
scoreboard players operation $x_fifth math /= $one_thousand math

scoreboard players operation $x_cubed math /= $three_fact math
scoreboard players operation $x_fifth math /= $five_fact math

scoreboard players operation $out math = $x math
scoreboard players operation $out math -= $x_cubed math
scoreboard players operation $out math += $x_fifth math

#> This should really be moved somewhere else, it's unrelated but it works because this is only used in one place
scoreboard players set $temp math 127
scoreboard players operation $out math *= $temp math
scoreboard players operation $out math /= $one_thousand math