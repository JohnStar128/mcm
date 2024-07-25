#> Gives the player the knife retrieve in the mainhand
#> This is a different function because the knife is not in the inventory when this is called


execute store result storage mcm:args id int 1 run scoreboard players get @s loadout_knife

# Load the retrieval item id
function mcm:items/id with storage mcm:args
function mcm:items/get_retrieval_id with storage mcm:args

# Exit early if no retrieval exists
# This shouldn't ever run becuase this function should only be called
# if the retrieval exists
execute unless data storage mcm:args item run return fail


# Calculate cost
execute store result score cost temp run function mcm:items/get_retrieval_cost with storage mcm:args
execute store result score scrap temp run clear @s netherite_scrap 0

data merge storage mcm:args {replace:1b,nbt:{is_retrieve:1b,retrieve_loadout:knife}}

# Put in offhand if mainhand has something
execute if data entity @s Inventory[{Slot:-106b}] run data merge storage mcm:args {slot:-2}
# Otherwise put in mainhand
execute unless data entity @s Inventory[{Slot:-106b}] run data merge storage mcm:args {slot:-1}

# Free knife logic
execute if entity @s[tag=free_knife] run return run function mcm:items/give with storage mcm:args


execute if score scrap temp >= cost temp run function mcm:items/give with storage mcm:args
