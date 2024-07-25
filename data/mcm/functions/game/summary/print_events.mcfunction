# Call with @s being the player who recieves the messages
# Set up recursive event printer
data modify storage mcm:game_summary temp set from storage mcm:game_summary events
execute unless data storage mcm:game_summary temp[0] run return fail

# 0 for tellraw
scoreboard players set $display_type temp 0

function mcm:game/summary/recursive_print with storage mcm:game_summary temp[0]

data remove storage mcm:game_summary print_temp