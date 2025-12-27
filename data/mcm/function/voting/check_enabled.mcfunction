#> Check that this map hasn't been disabled while we can still vote for it
$execute store result score $active vars run data get storage mcm:maps list[$(map_idx)].active
execute if score $active vars matches 1 run return 1
# Also return for random since it's always enabled
$scoreboard players set $active vars $(map_idx)
execute if score $active vars matches 0 run return 1

# If it was disabled, reset votes for it and assign a new map to this slot
$scoreboard players reset $$(name) vote_totals
$tag @a[scores={map_vote=$(slot)}] add vote_voided
$scoreboard players reset @a[scores={map_vote=$(slot)}] map_vote

$data modify storage mcm:voting slots[$(slot)].name set value ""
$data remove storage mcm:voting slots[$(slot)].model
$data modify storage mcm:voting vacant_slots append from storage mcm:voting slots[$(slot)]
$data remove storage mcm:voting slots[$(slot)]

$kill @e[type=marker, tag=map_vote, tag=$(name)]

# Regenerate map selection
function mcm:voting/map_selection

# Notify players that the map they voted for has been disabled
tellraw @a[tag=vote_voided] [{"translate":"mcm.voting.voided", "color":"green", "bold":false, "italic":true}]
tag @a[tag=vote_voided] remove vote_voided
# Reset vote timer if there are no more votes
execute unless entity @a[scores={map_vote=0..}] run data modify storage mcm:timers list[{name:"$vote_countdown"}].period set value 1
execute unless entity @a[scores={map_vote=0..}] run scoreboard players set $vote_countdown timers 400
execute unless entity @a[scores={map_vote=0..}] run scoreboard players set $vote_countdown_seconds vars 20
