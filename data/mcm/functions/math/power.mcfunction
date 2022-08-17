#> Takes input as $temp math, leaves output in $out math
#> Requires $power math, will destroy value
#> Only works for non-negative powers
execute if score $out math matches 0 run scoreboard players operation $out math = $temp math
execute if score $power math matches 0 run scoreboard players set $out math 1
execute if score $power math matches 2.. run scoreboard players operation $out math *= $temp math
execute if score $power math matches 2.. run scoreboard players remove $power math 1
execute if score $power math matches 2.. run function mcm:math/power
