#> Shuffles Votable maps
#> Only runs if game is in voting state and
#> No one has voted

data merge storage mcm:game_state {desired_stage:"voting"}
execute store success score $correct_stage vars run data modify storage mcm:game_state desired_stage set from storage mcm:game_state state.current_stage
data remove storage mcm:game_state desired_stage
execute unless score $correct_stage vars matches 0 run return run scoreboard players reset $correct_stage vars
scoreboard players reset $correct_stage vars

#> Reset all posters
data modify storage mcm:voting slots[].name set value ""
data remove storage mcm:voting slots[].model
data modify storage mcm:voting vacant_slots append from storage mcm:voting slots[]
data remove storage mcm:voting slots[]

# Move random back
data modify storage mcm:voting slots append from storage mcm:voting vacant_slots[0]
data modify storage mcm:voting slots[0] merge value {name:"random",model:"posters/random"}
data remove storage mcm:voting vacant_slots[0]


kill @e[type=marker, tag=map_vote]

scoreboard players reset @a map_vote

# Regenerate map selection
function mcm:voting/map_selection

# Notify players that the map they voted for has been disabled
tellraw @a [{"translate":"mcm.voting.voided", "color":"green", "bold":false, "italic":true}]

# Reset vote timer if there are no more votes
data modify storage mcm:timers list[{name:"$vote_countdown"}].period set value 1
scoreboard players set $vote_countdown timers 400
scoreboard players set $vote_countdown_seconds vars 20
