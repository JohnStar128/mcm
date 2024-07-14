#> Args :   `item`: The item to give
#>          `slot`: In `mcm:args` to override the default slot
#>          `nbt` in `mcm:args` for additional tags onto the item
#>          `replace` in `mcm:args` to replace the item in the targeted slot

#> Slot 0-8 refer to hotbar slots (left to right)
#> Slot -1 is mainhand
#> Slot -2 is offhand


$execute unless data storage mcm:args slot run data modify storage mcm:args slot set from storage mcm:items $(item).slot
execute if data storage mcm:args replace run tag @s add item_replace
execute if entity @s[tag=murderer] run data modify storage mcm:args nbt merge from storage mcm:items murderer_extra_nbt

$data modify storage mcm:args nbt merge value {item:$(item)}
$data modify storage mcm:args nbt set from storage mcm:items $(item).components
$data modify storage mcm:args id set from storage mcm:items $(item).id

function mcm:items/give_item_inner with storage mcm:args

function mcm:items/give_item_cleanup
