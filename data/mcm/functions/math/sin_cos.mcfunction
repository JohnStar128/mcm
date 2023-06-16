#> Input in $angle math
#> Input is (0-pi/2) maps to (0-8192)

#> Output in $result_in math, $result_cos math


scoreboard players operation $angle_in math = $angle math

function mcm:math/raw_sin
scoreboard players operation $result_sin math = $result math
scoreboard players operation $angle math = $angle_in math
function mcm:math/raw_cos
scoreboard players operation $result_cos math = $result math

scoreboard players operation $angle math = $angle_in math