
scoreboard players set count temp 0
data merge storage mcm:options {temp:{count:0}}

function mcm:lobby/options/sync/sync_maps_iter with storage mcm:options temp

#data remove storage mcm:options temp