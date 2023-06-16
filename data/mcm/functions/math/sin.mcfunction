
#> Takes input as $temp math in 1000*radians/pi, leaves output in $out math

scoreboard players operation $angle math = $temp math
scoreboard players operation $angle math *= $2^4 math
function mcm:math/raw_sin

scoreboard players operation $out math = $result math

scoreboard players operation $out math *= $1000 math
scoreboard players operation $out math /= $2^12 math