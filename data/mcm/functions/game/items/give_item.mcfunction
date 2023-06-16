#> Needs player as a sender to give an item to,
#> and $item_id and $preferred_slot need to be set
#> on the item_management scoreboard.

#> Slot 0-8 refer to hotbar slots (left to right)
#> Slot -1 is mainhand
#> Uses chest at 2 -50 72 as temporary item storage

#> item IDs:
# 0 - gun
# 1 - knife
# 2 - knife retrieval
# 3 - teleporter
# 4 - adrenaline
# 5 - player tracker
# 6 - card1 (riverboat ace card)
# 7 - card8 (riverboat 8 card)
# 8 - floating islands teleport crystal



#> Check wether to replace or give
execute if score $preferred_slot item_management matches -1 run tag @s[nbt=!{SelectedItem:{}}] add item_replace
execute if score $preferred_slot item_management matches 0 run tag @s[nbt=!{Inventory:[{Slot:0b}]}] add item_replace
execute if score $preferred_slot item_management matches 1 run tag @s[nbt=!{Inventory:[{Slot:1b}]}] add item_replace
execute if score $preferred_slot item_management matches 2 run tag @s[nbt=!{Inventory:[{Slot:2b}]}] add item_replace
execute if score $preferred_slot item_management matches 3 run tag @s[nbt=!{Inventory:[{Slot:3b}]}] add item_replace
execute if score $preferred_slot item_management matches 4 run tag @s[nbt=!{Inventory:[{Slot:4b}]}] add item_replace
execute if score $preferred_slot item_management matches 5 run tag @s[nbt=!{Inventory:[{Slot:5b}]}] add item_replace
execute if score $preferred_slot item_management matches 6 run tag @s[nbt=!{Inventory:[{Slot:6b}]}] add item_replace
execute if score $preferred_slot item_management matches 7 run tag @s[nbt=!{Inventory:[{Slot:7b}]}] add item_replace
execute if score $preferred_slot item_management matches 8 run tag @s[nbt=!{Inventory:[{Slot:8b}]}] add item_replace

#> Setup items
execute if entity @s[tag=item_replace] if score $item_id item_management matches 0 run item replace block 2 -50 72 container.0 with warped_fungus_on_a_stick{NoDrop:1b,Unbreakable:1,Autoqueue:0b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.gun","italic":false}]',Lore:['[{"translate":"mcm.item.gun.lore","italic":false}]']}} 1
execute if entity @s[tag=item_replace] if score $item_id item_management matches 1 run item replace block 2 -50 72 container.0 with snowball{NoDrop:0b,Unbreakable:1,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"translate":"mcm.item.knife","italic":false}]',Lore:['[{"translate":"mcm.item.knife.lore","italic":false}]']}} 1
execute if entity @s[tag=item_replace] if score $item_id item_management matches 2 run item replace block 2 -50 72 container.0 with carrot_on_a_stick{NoDrop:1b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.knife_retrieve","italic":false}]',Lore:['[{"translate":"mcm.item.knife_retrieve.lore","italic":false}]']}}
execute if entity @s[tag=item_replace] if score $item_id item_management matches 3 run item replace block 2 -50 72 container.0 with carrot_on_a_stick{NoDrop:1b,CustomModelData:1112,display:{Name:'[{"translate":"mcm.item.teleporter","italic":false}]',Lore:['[{"translate":"mcm.item.teleporter.lore","italic":false}]']}}
execute if entity @s[tag=item_replace] if score $item_id item_management matches 4 run item replace block 2 -50 72 container.0 with carrot_on_a_stick{NoDrop:1b,CustomModelData:1113,display:{Name:'[{"translate":"mcm.item.adrenaline","italic":false}]',Lore:['[{"translate":"mcm.item.adrenaline.lore","italic":false}]']}}
execute if entity @s[tag=item_replace] if score $item_id item_management matches 5 run item replace block 2 -50 72 container.0 with stick{NoDrop:1b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.player_tracker","italic":false}]',Lore:['[{"translate":"mcm.item.player_tracker.lore","italic":false}]']}}

#> Give if slot is taken
execute if score $item_id item_management matches 0 run give @s[tag=!item_replace] warped_fungus_on_a_stick{NoDrop:1b,Unbreakable:1,Autoqueue:0b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.gun","italic":false}]',Lore:['[{"translate":"mcm.item.gun.lore","italic":false}]']}} 1
execute if score $item_id item_management matches 1 run give @s[tag=!item_replace] snowball{NoDrop:0b,Unbreakable:1,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"translate":"mcm.item.knife","italic":false}]',Lore:['[{"translate":"mcm.item.knife.lore","italic":false}]']}} 1
execute if score $item_id item_management matches 2 run give @s[tag=!item_replace] carrot_on_a_stick{NoDrop:1b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.knife_retrieve","italic":false}]',Lore:['[{"translate":"mcm.item.knife_retrieve.lore","italic":false}]']}}
execute if score $item_id item_management matches 3 run give @s[tag=!item_replace] carrot_on_a_stick{NoDrop:1b,CustomModelData:1112,display:{Name:'[{"translate":"mcm.item.teleporter","italic":false}]',Lore:['[{"translate":"mcm.item.teleporter.lore","italic":false}]']}}
execute if score $item_id item_management matches 4 run give @s[tag=!item_replace] carrot_on_a_stick{NoDrop:1b,CustomModelData:1113,display:{Name:'[{"translate":"mcm.item.adrenaline","italic":false}]',Lore:['[{"translate":"mcm.item.adrenaline.lore","italic":false}]']}}
execute if score $item_id item_management matches 5 run give @s[tag=!item_replace] stick{NoDrop:1b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.player_tracker","italic":false}]',Lore:['[{"translate":"mcm.item.player_tracker.lore","italic":false}]']}}

#> Replace item
execute if entity @s[tag=item_replace] if score $preferred_slot item_management matches -1 run item replace entity @s weapon.mainhand from block 2 -50 72 container.0
execute if entity @s[tag=item_replace] if score $preferred_slot item_management matches 0 run item replace entity @s hotbar.0 from block 2 -50 72 container.0
execute if entity @s[tag=item_replace] if score $preferred_slot item_management matches 1 run item replace entity @s hotbar.1 from block 2 -50 72 container.0
execute if entity @s[tag=item_replace] if score $preferred_slot item_management matches 2 run item replace entity @s hotbar.2 from block 2 -50 72 container.0
execute if entity @s[tag=item_replace] if score $preferred_slot item_management matches 3 run item replace entity @s hotbar.3 from block 2 -50 72 container.0
execute if entity @s[tag=item_replace] if score $preferred_slot item_management matches 4 run item replace entity @s hotbar.4 from block 2 -50 72 container.0
execute if entity @s[tag=item_replace] if score $preferred_slot item_management matches 5 run item replace entity @s hotbar.5 from block 2 -50 72 container.0
execute if entity @s[tag=item_replace] if score $preferred_slot item_management matches 6 run item replace entity @s hotbar.6 from block 2 -50 72 container.0
execute if entity @s[tag=item_replace] if score $preferred_slot item_management matches 7 run item replace entity @s hotbar.7 from block 2 -50 72 container.0
execute if entity @s[tag=item_replace] if score $preferred_slot item_management matches 8 run item replace entity @s hotbar.8 from block 2 -50 72 container.0



tag @s remove item_replace