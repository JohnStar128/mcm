#> Call with `item` as the loadout item to be given
#> Valid item: `knife`, `1`, `2`, `3`

$execute store result storage mcm:args id int 1 run scoreboard players get @s loadout_$(item)
$data merge storage mcm:args {nbt:{loadout:$(item)}}
execute if entity @s[tag=murderer] run data modify storage mcm:args nbt merge from storage mcm:items murderer_extra_nbt


function mcm:items/id with storage mcm:args

function mcm:items/give with storage mcm:args
