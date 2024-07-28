
$execute store result score temp temp run data get storage mcm:options options.$(option)
scoreboard players add temp temp 1
scoreboard players operation temp temp %= $two math

$execute store result storage mcm:options options.$(option) int 1 run scoreboard players get temp temp