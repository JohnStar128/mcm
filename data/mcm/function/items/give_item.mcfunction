#> Args :   `item`: The item to give
#>          `slot`: In `mcm:args` to override the default slot
#>          `nbt` in `mcm:args` for additional tags onto the item
#>          `replace` in `mcm:args` to replace the item in the targeted slot

#> Slot 0-8 refer to hotbar slots (left to right)
#> Slot -1 is mainhand
#> Slot -2 is offhand
#> Slots 100-103 are armor (feet, legs, chest, head in ascending order)

# Sad face we can't know for sure if we have a slot argument or not
execute if data storage mcm:args slot store result score $slot vars run data get storage mcm:args slot
$execute unless data storage mcm:args slot store result score $slot vars run data get storage mcm:items $(item).slot
execute if score $slot vars matches -2 run data modify storage mcm:args slot set value "weapon.offhand"
execute if score $slot vars matches -1 run data modify storage mcm:args slot set value "weapon.mainhand"
execute if score $slot vars matches 0 run data modify storage mcm:args slot set value "hotbar.0"
execute if score $slot vars matches 1 run data modify storage mcm:args slot set value "hotbar.1"
execute if score $slot vars matches 2 run data modify storage mcm:args slot set value "hotbar.2"
execute if score $slot vars matches 3 run data modify storage mcm:args slot set value "hotbar.3"
execute if score $slot vars matches 4 run data modify storage mcm:args slot set value "hotbar.4"
execute if score $slot vars matches 5 run data modify storage mcm:args slot set value "hotbar.5"
execute if score $slot vars matches 6 run data modify storage mcm:args slot set value "hotbar.6"
execute if score $slot vars matches 7 run data modify storage mcm:args slot set value "hotbar.7"
execute if score $slot vars matches 8 run data modify storage mcm:args slot set value "hotbar.8"
execute if score $slot vars matches 100 run data modify storage mcm:args slot set value "armor.feet"
execute if score $slot vars matches 101 run data modify storage mcm:args slot set value "armor.legs"
execute if score $slot vars matches 102 run data modify storage mcm:args slot set value "armor.chest"
execute if score $slot vars matches 103 run data modify storage mcm:args slot set value "armor.head"
scoreboard players reset $slot vars

$execute unless data storage mcm:args slot run data modify storage mcm:args slot set from storage mcm:items $(item).slot
execute if data storage mcm:args replace run tag @s add item_replace

$data modify storage mcm:args id set from storage mcm:items $(item).id
$data modify storage mcm:args item set value "$(item)"

function mcm:items/give_item_inner with storage mcm:args

function mcm:items/give_item_cleanup
