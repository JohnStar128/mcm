
function mcm:util/reset_carrot_on_stick

# knife has a special function for free retrieve
$execute if items entity @s weapon.* carrot_on_a_stick[custom_data~{knife_retrieve:1}] run return run function mcm:game/items/knife_retrieve {retrieve: $(retrieve), cost: $(cost)}



execute store result score scrap temp run clear @s netherite_scrap 0

$execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{retrieve:$(retrieve)}] run data modify storage mcm:args nbt.loadout set from entity @s SelectedItem.components.minecraft:custom_data.retrieve_loadout
$execute unless items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{retrieve:$(retrieve)}] run data modify storage mcm:args nbt.loadout set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.retrieve_loadout

$execute if score scrap temp matches $(cost).. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{retrieve:$(retrieve)}] run function mcm:items/give_mainhand {item:$(retrieve)}
$execute if score scrap temp matches $(cost).. if items entity @s weapon.offhand carrot_on_a_stick[custom_data~{retrieve:$(retrieve)}] run function mcm:items/give_offhand {item:$(retrieve)}
$execute if score scrap temp matches $(cost).. run clear @s netherite_scrap $(cost)

execute store result score scrap temp run clear @s netherite_scrap 0

execute unless score scrap temp matches 1.. run function mcm:items/retrieve/all_loadout_retrieves





