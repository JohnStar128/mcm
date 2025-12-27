#> Get the next psuedo-random number, stored in mcm:prng.next

execute store result score $temp vars run data get storage mcm:prng next
scoreboard players operation $temp vars *= $five math
scoreboard players add $temp vars 3
execute store result storage mcm:prng next int 1 run scoreboard players get $temp vars
scoreboard players reset $temp vars
return run data get storage mcm:prng next
