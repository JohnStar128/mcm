#> Input in $angle math output in $result math

function mcm:math/sin_cos

scoreboard players operation $result math = $result_sin math
scoreboard players operation $result math *= $2^12 math
scoreboard players operation $result math /= $result_cos math