#> Run the queued function if its condition is met
$execute store result score $temp vars $(condition)

$execute if score $temp vars matches 1 run $(fn)
$execute if score $temp vars matches 1 run data remove storage mcm:queue list[{id:$(id)}]

scoreboard players reset $temp vars
