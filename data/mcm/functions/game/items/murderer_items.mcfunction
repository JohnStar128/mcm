#> This file handles murderer items

data modify storage mcm:args item set from entity @s SelectedItem.tag.item
function mcm:game/items/handle_item with entity @s SelectedItem.tag
data remove storage mcm:args item