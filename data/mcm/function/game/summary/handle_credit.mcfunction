
$tp @s ~ ~$(tp_speed) ~

execute store result score temp temp run data get entity @s Pos[1]

$execute if score temp temp matches 19.. run tp @s ~ ~$(down_tp) ~