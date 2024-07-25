#> Gives the player their retrieve in the mainhand if they can get it
#> This should be called when an item is used
#> This will replace their mainhand with the apropriate retrieval item

#> Use `mcm:retrieves/knife_mainhand` for the knife specifically instead of this function

#> For this to work the item must be in the offhand of the player

# Read the item type directly from the player `item` tag in their mainhand
# This won't return anything if the loadout item has no retrieval
function mcm:items/get_retrieval_id with entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data

# Exit early if no retrieval exists
# This shouldn't ever run becuase this function should only be called
# if the retrieval exists
execute unless data storage mcm:args item run return fail

# Setup the recal item nbt
data merge storage mcm:args {nbt:{is_retrieve:1b}}
data modify storage mcm:args nbt.retrieve_loadout set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.loadout

# Calculate cost
execute store result score cost temp run function mcm:items/get_retrieval_cost with storage mcm:args
execute store result score scrap temp run clear @s netherite_scrap 0

# Get rid of the mainhand always
item replace entity @s weapon.offhand with air

execute if score scrap temp >= cost temp run function mcm:items/give_offhand with storage mcm:args
