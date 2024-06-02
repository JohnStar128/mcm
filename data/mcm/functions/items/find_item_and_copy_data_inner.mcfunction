
$execute unless data entity @s Inventory[$(count)] run return fail
$execute if data entity @s Inventory[$(count)].$(path) run return run data modify storage $(storage) $(storage_path) set from entity @s Inventory[$(count)].$(path)

execute store result storage mcm:args count int 1 run scoreboard players add count temp 1
function mcm:items/find_item_and_copy_data_inner with storage mcm:args