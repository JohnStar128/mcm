
$execute unless data storage mcm:options options.map_toggle.maps[$(count)] run return fail

execute store result storage mcm:options temp.count int 1 run scoreboard players add count temp 1
$data modify storage mcm:options temp.map set from storage mcm:options options.map_toggle.maps[$(count)]


function mcm:lobby/options/sync/sync_map with storage mcm:options temp
function mcm:lobby/options/sync/sync_maps_iter with storage mcm:options temp