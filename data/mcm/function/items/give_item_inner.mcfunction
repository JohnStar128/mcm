#> Called from `mcm:items/give_item` don't call directly

#> Args `id` id of item
#>      `item` item component storage name
#>      `slot` item slot
#>      @s[tag=item_replace] to replace item

#> Slot 0-8 refer to hotbar slots (left to right)
#> Slot -1 is mainhand
#> Slot -2 is offhand
#> Slot 103 is head
#> Slot 102 is chest
#> Slot 101 is legs
#> Slot 100 is feet


#> Topaz edit 1.21.10 - instead of component string,
#> put items in a chest and give them from there
execute positioned -1 -2 77 unless block ~ ~ ~ chest run setblock ~ ~ ~ chest
$item replace block -1 -2 77 container.0 with $(id)
$data modify block -1 -2 77 Items[0].components set from storage mcm:items $(item).components

#> Check wether to replace or give
$execute unless items entity @s $(slot) * run tag @s add item_replace

#> Give item if not replacing
execute at @s[tag=!item_replace] run summon item ~ ~0.5 ~ {Tags:["temp_drop"],Item:{id:"stick",count:1b},PickupDelay:0s}
data modify entity @e[type=item,tag=temp_drop,limit=1] Owner set from entity @s UUID
item replace entity @e[type=item,tag=temp_drop] contents from block -1 -2 77 container.0
tag @e[type=item,tag=temp_drop] remove temp_drop

#> Replace item
$execute if entity @s[tag=item_replace] run item replace entity @s $(slot) from block -1 -2 77 container.0
# for all intents and purposes at the moment, armor will always be replaced
# it really doesn't make sense in the context of our game to put armor in the player's inventory
execute if score $slot vars matches 103 run item replace entity @s armor.head from block -1 -2 77 container.0
execute if score $slot vars matches 102 run item replace entity @s armor.chest from block -1 -2 77 container.0
execute if score $slot vars matches 101 run item replace entity @s armor.legs from block -1 -2 77 container.0
execute if score $slot vars matches 100 run item replace entity @s armor.feet from block -1 -2 77 container.0

#> Clean up chest
item replace block -1 -2 77 container.0 with air
