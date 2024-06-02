execute if entity @s[advancements={mcm:secrets/industry/forklift=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1122}}]}] at @s run playsound minecraft:item.armor.equip_leather block @s ~ ~ ~ 3 1
execute if entity @s[advancements={mcm:secrets/industry/forklift=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1122}}]}] run item replace entity @s armor.head with diamond_hoe{no_drop_on_death:1b,HideFlags:7,CustomModelData:1122,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1b,display:{Name:'{"translate":"mcm.item.hard_hat","color":"gray","italic":false}'}}

execute if entity @s[advancements={mcm:secrets/industry/forklift=false}] run tellraw @s {"translate":"mcm.cosmetic.cannot.equip","color":"red"}
execute if entity @s[advancements={mcm:secrets/industry/forklift=false}] at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if entity @s[advancements={mcm:secrets/industry/forklift=true}] run scoreboard players set @s selected_hat 12
execute unless entity @s[advancements={mcm:secrets/industry/forklift=true}] run scoreboard players set @s selected_hat 0