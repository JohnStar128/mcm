#> This file handles murderer items

data modify storage mcm:args item set from entity @s SelectedItem.components."minecraft:custom_data".item
function mcm:game/items/handle_item with storage mcm:args
data remove storage mcm:args item