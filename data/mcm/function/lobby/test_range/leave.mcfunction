#> Remove test range items and give back lobby items
function mcm:items/loadouts/lobby
#> Kill extra owned items
execute as @e[type=item] run function mcm:lobby/test_range/kill_items 
#> Remove tag
tag @s remove test_range
