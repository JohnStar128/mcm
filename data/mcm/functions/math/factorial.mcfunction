#> Takes input as $temp math and will destroy value, leaves output in $out math
#> Only works for non-negative powers
execute if score $out math matches 0 run scoreboard players operation $out math = $temp math
execute if score $temp math matches 0 run scoreboard players set $out math 1
execute if score $temp math matches 1.. run scoreboard players remove $temp math 1
execute if score $temp math matches 1.. run scoreboard players operation $out math *= $temp math

execute if score $temp math matches 1.. run function mcm:math/factorial
