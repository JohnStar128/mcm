#> Called from `mcm:items/give_item` don't call directly

#> Args `id` id of item
#>      `nbt` item nbt
#>      `slot` item slot
#>      @s[tag=item_replace] to replace item

$scoreboard players set slot temp $(slot)

#> Slot 0-8 refer to hotbar slots (left to right)
#> Slot -1 is mainhand
#> Slot -2 is offhand

#> Check wether to replace or give
execute if score slot temp matches -2 run tag @s[nbt=!{Inventory:[{Slot:-106b}]}] add item_replace
execute if score slot temp matches -1 run tag @s[nbt=!{SelectedItem:{}}] add item_replace
execute if score slot temp matches 0 run tag @s[nbt=!{Inventory:[{Slot:0b}]}] add item_replace
execute if score slot temp matches 1 run tag @s[nbt=!{Inventory:[{Slot:1b}]}] add item_replace
execute if score slot temp matches 2 run tag @s[nbt=!{Inventory:[{Slot:2b}]}] add item_replace
execute if score slot temp matches 3 run tag @s[nbt=!{Inventory:[{Slot:3b}]}] add item_replace
execute if score slot temp matches 4 run tag @s[nbt=!{Inventory:[{Slot:4b}]}] add item_replace
execute if score slot temp matches 5 run tag @s[nbt=!{Inventory:[{Slot:5b}]}] add item_replace
execute if score slot temp matches 6 run tag @s[nbt=!{Inventory:[{Slot:6b}]}] add item_replace
execute if score slot temp matches 7 run tag @s[nbt=!{Inventory:[{Slot:7b}]}] add item_replace
execute if score slot temp matches 8 run tag @s[nbt=!{Inventory:[{Slot:8b}]}] add item_replace

#> Give item if not replacing
execute as @e[type=item] run tag @s add dont_kill
$give @s[tag=!item_replace] $(id)$(nbt)
execute as @e[type=item,tag=!dont_kill] run kill @s
execute as @e[type=item,tag=dont_kill] run tag @s remove dont_kill

#> Replace item
$execute if entity @s[tag=item_replace] if score slot temp matches -2 run item replace entity @s weapon.offhand with $(id)$(nbt)
$execute if entity @s[tag=item_replace] if score slot temp matches -1 run item replace entity @s weapon.mainhand with $(id)$(nbt)
$execute if entity @s[tag=item_replace] if score slot temp matches 0 run item replace entity @s hotbar.0 with $(id)$(nbt)
$execute if entity @s[tag=item_replace] if score slot temp matches 1 run item replace entity @s hotbar.1 with $(id)$(nbt)
$execute if entity @s[tag=item_replace] if score slot temp matches 2 run item replace entity @s hotbar.2 with $(id)$(nbt)
$execute if entity @s[tag=item_replace] if score slot temp matches 3 run item replace entity @s hotbar.3 with $(id)$(nbt)
$execute if entity @s[tag=item_replace] if score slot temp matches 4 run item replace entity @s hotbar.4 with $(id)$(nbt)
$execute if entity @s[tag=item_replace] if score slot temp matches 5 run item replace entity @s hotbar.5 with $(id)$(nbt)
$execute if entity @s[tag=item_replace] if score slot temp matches 6 run item replace entity @s hotbar.6 with $(id)$(nbt)
$execute if entity @s[tag=item_replace] if score slot temp matches 7 run item replace entity @s hotbar.7 with $(id)$(nbt)
$execute if entity @s[tag=item_replace] if score slot temp matches 8 run item replace entity @s hotbar.8 with $(id)$(nbt)

