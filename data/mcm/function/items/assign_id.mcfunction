#> Assigns the item id for a scoreboard lookup
#> Args: `item`: String The item's name

$data merge storage mcm:args {item:$(item)}

execute store result storage mcm:args id int 1 run scoreboard players get count temp

function mcm:items/assign_id_inner with storage mcm:args

scoreboard players add count temp 1
