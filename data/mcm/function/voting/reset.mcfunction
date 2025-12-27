#> End of the voting period: select a winner and reset states

# Select a winner
scoreboard players set $most_votes vars 1
tag @e[type=marker, tag=map_vote] add winner
# Runs twice because order isn't sorted
execute as @e[type=marker, tag=map_vote] run function mcm:voting/tally_votes with entity @s data
execute as @e[type=marker, tag=map_vote] run function mcm:voting/tally_votes with entity @s data


# Check random
execute if score $random vote_totals > $most_votes vars run tag @e[type=marker, tag=map_vote, sort=random, limit=1] add real_winner
execute if score $random vote_totals = $most_votes vars run tag @e[type=marker, tag=map_vote, sort=random, limit=1] add winner
execute unless entity @e[type=marker, tag=real_winner] as @e[type=marker, tag=winner, sort=random, limit=1] run tag @s add real_winner


# Remaining one is the winner
execute as @e[type=marker, tag=map_vote] run function mcm:voting/reset_votes with entity @s data
scoreboard players reset $random vote_totals
kill @e[type=marker, tag=!real_winner, tag=map_vote]
data modify storage mcm:game_state state.selected_map set from entity @e[type=marker, tag=map_vote, limit=1] data.name
data modify storage mcm:game_state state.selected_map_idx set from entity @e[type=marker, tag=map_vote, limit=1] data.map_idx
function mcm:game_state/prep_map with storage mcm:game_state state


#> Sounds
execute as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1.2
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.7
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0


#> Remove bossbar
bossbar remove vote_countdown


# Set game state to the next stage
data modify storage mcm:game_state state.current_stage set value "queueing"
data remove storage mcm:game_state state.current_stage_started


# Kill entities no longer needed
kill @e[type=text_display,tag=vote_text_display]
execute as @e[type=interaction,tag=vote_interaction] run function mcm:util/interactable/remove
function mcm:util/trigger/disable_trigger {objective:"print_events"}
kill @e[type=text_display,tag=game_summary]


# Reset variables
function mcm:util/timer/delete {name:"$vote_countdown"}
scoreboard players reset $most_votes vars
scoreboard players reset @a map_vote
scoreboard players reset $vote_countdown_seconds vars


# Queue up the curtain animation
fill -28 -2 115 -28 18 93 black_concrete replace white_wool
fill -28 -2 115 -28 18 93 coal_block replace calcite
data merge storage mcm:args {animate:{pos:"-22 -2 93",order:1}}
function mcm:util/animate/new_structure_instance {name:"mcm:lobby/theater_curtains"}
data remove storage mcm:args animate

# Reset game summary statistics
function mcm:summary/reset
