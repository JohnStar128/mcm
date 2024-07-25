
# Exit early if the player still has the knife
execute if items entity @s container.* snowball[custom_data~{knife:1b}] run return fail


execute store result storage mcm:args id int 1 run scoreboard players get @s loadout_knife


# Load the base item
function mcm:items/id with storage mcm:args

# This won't return anything if the loadout item has no retrieval
function mcm:items/get_retrieval_id with storage mcm:args

# Exit early if no retrieval exists
execute unless data storage mcm:args item run return fail


# Calculate cost
execute store result score cost temp run function mcm:items/get_retrieval_cost with storage mcm:args

# If the player has less scrap then needed to use the retrieve remove it
execute if entity @s[tag=!free_knife] if score scrap temp < cost temp run return run clear @s carrot_on_a_stick[custom_data={retrieve:"knife"}]

# Don't regive the retrieve if they already have it
execute if items entity @s container.* carrot_on_a_stick[custom_data~{knife_retrieve:1}] run return 0

# Load default retrieval nbt
data merge storage mcm:args {nbt:{is_retrieve:1b,retrieve_loadout:knife}}

# Give Item
function mcm:items/give with storage mcm:args
