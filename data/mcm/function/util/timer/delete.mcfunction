#> Delete a timer variable

$scoreboard players reset $(name) timers
$data remove storage mcm:timers list[{name:"$(name)"}]
