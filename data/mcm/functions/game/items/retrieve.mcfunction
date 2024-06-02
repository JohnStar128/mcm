
function mcm:util/reset_carrot_on_stick

# knife has a special function for free retrieve
$execute if data entity @s SelectedItem.tag.knife_retrieve run return run function mcm:game/items/knife_retrieve {retrieve: $(retrieve), cost: $(cost)}



execute store result score scrap temp run clear @s netherite_scrap 0

data modify storage mcm:args nbt.loadout set from entity @s SelectedItem.tag.retrieve_loadout

$execute if score scrap temp matches $(cost).. run function mcm:items/give_mainhand {item:$(retrieve)}
$execute if score scrap temp matches $(cost).. run clear @s netherite_scrap $(cost)

execute store result score scrap temp run clear @s netherite_scrap 0

execute unless score scrap temp matches 1.. run function mcm:items/retrieve/all_loadout_retrieves





