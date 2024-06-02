#> y = 118 is what we flip around
execute store result score $temp math run data get entity @s Pos[1]
scoreboard players remove $temp math 118
scoreboard players operation $temp math += $temp math
scoreboard players add $temp math 1
execute store result score $temp2 math run data get entity @s Pos[1]
scoreboard players operation $temp2 math -= $temp math
execute store result storage mcm:library ypos int 1 run scoreboard players get $temp2 math
function mcm:maps/library2/tp_to_flip with storage mcm:library
