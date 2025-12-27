function mcm:util/timer/delete {name:"$postgame"}
function mcm:util/timer/delete {name:"$sound"}

bossbar remove game_display

#> Lobby kit
clear @a[tag=queued]
kill @e[type=item,tag=key_item]
execute as @a[tag=queued] run function mcm:items/loadouts/lobby

#> Move players back to the lobby in the right state
gamemode adventure @a[tag=queued] 
tp @a[tag=queued] -1 1 69 0 0
team join nametags @a[tag=queued]
tag @a[tag=queued] remove queued

# Time
time set 13500

function mcm:util/trigger/disable_trigger {objective:"map_trigger"}

data merge storage mcm:game_state {state:{current_stage:"voting"}}

#> Kill props including player spawns
$execute as @e[type=interaction,tag=interactable,predicate=mcm:map_bounds/$(selected_map)/bounds] run function mcm:util/interactable/remove
$kill @e[tag=prop,predicate=mcm:map_bounds/$(selected_map)/bounds]

#> Stop animations
data modify storage mcm:args animate.list set from storage mcm:animate active_structures
function mcm:util/loops/for_each {iter:"data storage mcm:args animate.list[]", \
                                  fn:"mcm:util/animate/delete_structure_instance", \
                                  args:"with storage mcm:args animate.list[0]", \
                                  update:"data remove storage mcm:args animate.list[0]"}
data remove storage mcm:args animate.list

#> Reset and unload the map
$function mcm:maps/$(selected_map)/reset

$data modify storage mcm:maps temp.load set from storage mcm:maps list[$(selected_map_idx)].forceload
$function mcm:util/loops/for_each {iter:"data storage mcm:maps list[$(selected_map_idx)].forceload", \
                                  fn:"mcm:game_state/unload_map", \
                                  args:"with storage mcm:maps temp.load[0]", \
                                  update:"data remove storage mcm:maps temp.load[0]"}
data remove storage mcm:maps temp
