
execute store result score index temp run data get storage mcm:options options.map_toggle.page
execute store result score size temp run data get storage mcm:options options.map_toggle.page_size
scoreboard players operation index temp *= size temp
$scoreboard players add index temp $(index)

data merge storage mcm:options {temp:{}}


execute store result storage mcm:options temp.index int 1 run scoreboard players get index temp
function mcm:lobby/options/map_toggle/update_map_slot_get_name with storage mcm:options temp
function mcm:lobby/options/map_toggle/map_slot_interaction_inner with storage mcm:options temp

#data remove storage mcm:options temp