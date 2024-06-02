
tp @s ~ ~ ~ ~ ~

tag @s add game_summary

execute store result score pos temp run data get entity @s Pos[1] 1000
data merge entity @s {alignment:"center",line_width: 10000,transformation:[3f,0f,0f,0f, 0f,3f,0f,0f, 0f,0f,3f,0f, 0f,0f,0f,1f]}

execute store result score offset temp run data get storage mcm:game_summary offset 1000
scoreboard players operation offset temp *= count temp
scoreboard players operation pos temp += offset temp
scoreboard players add count temp 1

execute store result entity @s Pos[1] double 0.001 run scoreboard players get pos temp

#$data merge entity @s {text:$(print_temp)}
data modify entity @s text set from storage mcm:game_summary print_temp