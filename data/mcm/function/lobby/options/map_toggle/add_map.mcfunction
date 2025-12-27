
#> Adds a map to the map toggle options
#> Args:
#>   `name` the internal name of the map
#>   `translate` the translation tag of the map name


$execute if data storage mcm:options options.map_toggle.$(name) run return fail

$data modify storage mcm:options options.map_toggle.maps append value $(name)
$data modify storage mcm:options options.map_toggle.$(name) set value {translate:$(name), enabled:1}
$data modify storage mcm:options options.map_toggle.$(name).index set from storage mcm:maps name_idx_map.$(name)

execute store result score count temp run data get storage mcm:options options.map_toggle.map_count 1
execute store result storage mcm:options options.map_toggle.map_count int 1 run scoreboard players add count temp 1

data remove storage mcm:options temp[0]