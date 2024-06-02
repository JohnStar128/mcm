#> How to Add new Items
# Merge the tag into a descriptive name
# Set `index` to the next available number
# Set `id` to the id of the base item i.e. `carrot_on_a_stick`
# set `nbt` to the nbt of the item
# `slot` is the prefered slot of this item to be put into. It's will not be overwritten with this



# Slots
# -1 : Mainhand
# -2 : Offhand
# 0 - 9 hotbar.n



# Assign numeric ids to items using the `mcm:items/assign_id` function

# Dynamic allocation hard
data merge storage mcm:items {ids:["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]}

#> Extra nbt to be added to all items given to certain players
data modify storage mcm:items murderer_extra_nbt set value {murderer:1b}


data modify storage mcm:items gun set value {slot:1,id:"warped_fungus_on_a_stick", nbt:{gun:1b,NoDrop:1b,Unbreakable:1,Autoqueue:0b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.gun","italic":false}]',Lore:['[{"translate":"mcm.item.gun.lore","italic":false}]']}}}
data modify storage mcm:items knife set value {slot:1,id:"snowball", nbt:{knife:1b,NoDrop:0b,Unbreakable:1,no_drop_on_death:1b,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"translate":"mcm.item.knife","italic":false}]',Lore:['[{"translate":"mcm.item.knife.lore","italic":false}]']}}}
data modify storage mcm:items teleporter set value {slot:3,id:"carrot_on_a_stick", nbt:{NoDrop:1b,no_drop_on_death:1b,CustomModelData:1112,display:{Name:'[{"translate":"mcm.item.teleporter","italic":false}]',Lore:['[{"translate":"mcm.item.teleporter.lore","italic":false}]']}}}
data modify storage mcm:items adrenaline set value {slot:4,id:"carrot_on_a_stick", nbt:{NoDrop:1b,no_drop_on_death:1b,CustomModelData:1113,display:{Name:'[{"translate":"mcm.item.adrenaline","italic":false}]',Lore:['[{"translate":"mcm.item.adrenaline.lore","italic":false}]']}}}
data modify storage mcm:items player_tracker set value {slot:2,id:"stick", nbt:{NoDrop:1b,no_drop_on_death:1b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.player_tracker","italic":false}]',Lore:['[{"translate":"mcm.item.player_tracker.lore","italic":false}]']}}}
data modify storage mcm:items invisibility set value {slot:4,id:"carrot_on_a_stick",nbt:{NoDrop:1b,no_drop_on_death:1b,display:{Name:'"Invisibility"'}}}

#> Name the retrieval items `$(item)_retrieve` exactly
#> This is used later in the retrival system
#> Set `cost` to the scrap cost of using the retrieval
#> Set `retrieve` to the id of the item to be retrieved
data modify storage mcm:items knife_retrieve set value {slot:1,id:"carrot_on_a_stick", cost:10, nbt:{retrieve:"knife",knife_retrieve:1,cost:10,NoDrop:1b,no_drop_on_death:1b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.knife_retrieve","italic":false}]',Lore:['[{"translate":"mcm.item.knife_retrieve.lore","italic":false}]']}}}
data modify storage mcm:items teleporter_retrieve set value {slot:3,id:"carrot_on_a_stick", cost:10, nbt:{retrieve:"teleporter",cost:10,NoDrop:1b,no_drop_on_death:1b,CustomModelData:1115,display:{Name:'[{"translate":"mcm.item.randomtp_retrieve","italic":false}]',Lore:['[{"translate":"mcm.item.randomtp_retrieve.lore","italic":false}]']}}}
data modify storage mcm:items adrenaline_retrieve set value {slot:4,id:"carrot_on_a_stick", cost:10, nbt:{retrieve:"adrenaline",cost:10,NoDrop:1b,no_drop_on_death:1b,CustomModelData:1116,display:{Name:'[{"translate":"mcm.item.adrenaline_retrieve","italic":false}]',Lore:['[{"translate":"mcm.item.adrenaline_retrieve.lore","italic":false}]']}}}
data modify storage mcm:items invisibility_retrieve set value {slot:4,id:"carrot_on_a_stick", cost:10, nbt:{retrieve:"invisibility",cost:10,NoDrop:1b,no_drop_on_death:1b,display:{Name:'"Retrieve Invisibility"'}}}

scoreboard players set count temp 1

#> Don't reorder items, Add new ones at the bottom
function mcm:items/assign_id {item:"gun"}
function mcm:items/assign_id {item:"knife"}
function mcm:items/assign_id {item:"teleporter"}
function mcm:items/assign_id {item:"adrenaline"}
function mcm:items/assign_id {item:"player_tracker"}
function mcm:items/assign_id {item:"knife_retrieve"}
function mcm:items/assign_id {item:"teleporter_retrieve"}
function mcm:items/assign_id {item:"adrenaline_retrieve"}
function mcm:items/assign_id {item:"invisibility"}