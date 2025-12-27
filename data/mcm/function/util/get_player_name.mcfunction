#> Gets the player name of the current player and stores it in a specified output
#> Args: `out` the data path to the storage to be written to
#> Example `function mcm:util/get_player_name {out:"storage mcm:test name"}`

#> If we've already cached it, get it from there
$execute if data storage mcm:player_name_cache list[{id:$(uuid)}] run data modify $(out) set from storage mcm:player_name_cache list[{id:$(uuid)}].name
$execute if data storage mcm:player_name_cache list[{id:$(uuid)}] run return 1

#> Otherwise get it from the internet and cache it
loot replace block -2 -50 72 container.0 loot mcm:playerhead
$data modify storage mcm:player_name_cache list append value {id:$(uuid),name:""}
$data modify storage mcm:player_name_cache list[{id:$(uuid)}].name set from block -2 -50 72 Items[0].components.minecraft:profile.name
$data modify $(out) set from block -2 -50 72 Items[0].components.minecraft:profile.name
