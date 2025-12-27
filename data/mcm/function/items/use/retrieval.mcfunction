#> Recall the item

# A couple special cases:
# The player has the freebie recall we give them at the start
# The player has two recalls in main- and off- hand

# Process in order of free recall main, other main, free recall off, other off
# The order is reversed because the highest-priority parameters will remain in mcm:args

data merge storage mcm:args {retrieve:{}}

execute if items entity @s weapon.offhand *[custom_data~{retrieval:1b}] run data modify storage mcm:args retrieve set from entity @s equipment.offhand.components."minecraft:custom_data"
execute if entity @s[tag=free_recall] if items entity @s weapon.offhand *[custom_data~{retrieve:"knife"}] run data modify storage mcm:args retrieve set value {retrieve:"knife",cost:0}

execute if items entity @s weapon.mainhand *[custom_data~{retrieval:1b}] run data modify storage mcm:args retrieve set from entity @s SelectedItem.components."minecraft:custom_data"
execute if entity @s[tag=free_recall] if items entity @s weapon.mainhand *[custom_data~{retrieve:"knife"}] run data modify storage mcm:args retrieve set value {retrieve:"knife",cost:0}

# Try to retrieve the item
function mcm:items/cleanup/retrieval with storage mcm:args retrieve
scoreboard players reset $cost_check vars

data remove storage mcm:args retrieve
advancement revoke @s only mcm:items/retrieval
