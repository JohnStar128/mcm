#> Gets the player name of the current player and stores it in a specified output

#> Args: `out` the data path to the storage to be written to

#> Example `function mcm:util/get_player_name {out:"storage mcm:test name"}`

loot replace block -2 -50 72 container.0 loot mcm:playerhead

$data modify $(out) set from block -2 -50 72 Items[0].components.minecraft:profile.name

