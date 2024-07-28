
kill @e[type=text_display,tag=game_summary]

data modify storage mcm:game_summary temp set from storage mcm:game_summary events
execute unless data storage mcm:game_summary temp[0] run return fail

# 1 for the lobby credit display
scoreboard players set $display_type temp 1
scoreboard players set count temp 0

data merge storage mcm:game_summary {offset: -1f, tp_speed: 0.05}

execute positioned -26.9 8 104 facing ~1 ~ ~ run function mcm:game/summary/recursive_print with storage mcm:game_summary temp[0]

# Max y 19

# Lower floor is -3

# Get a bit more spacing
scoreboard players add count temp 2

execute store result score offset temp run data get storage mcm:game_summary offset 1000
scoreboard players set pos temp 19000
scoreboard players operation offset temp *= count temp
scoreboard players set min_loop temp -22000
scoreboard players operation offset temp < min_loop temp

execute store result storage mcm:game_summary down_tp double 0.001 run scoreboard players get offset temp


data remove storage mcm:game_summary offset
data remove storage mcm:game_summary print_temp