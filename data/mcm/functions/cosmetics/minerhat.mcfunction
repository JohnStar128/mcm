execute if entity @s[advancements={mcm:secrets/canyon/mines=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1120}}]}] at @s run playsound minecraft:item.armor.equip_leather block @s ~ ~ ~ 3 1
execute if entity @s[advancements={mcm:secrets/canyon/mines=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1120}}]}] run item replace entity @s armor.head with diamond_hoe{no_drop_on_death:1b,HideFlags:7,CustomModelData:1120,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1b,display:{Name:'{"translate":"mcm.item.miner_hat","color":"gray","italic":false}'}}

execute if entity @s[advancements={mcm:secrets/canyon/mines=false}] run tellraw @s {"translate":"mcm.cosmetic.cannot.equip","color":"red"}
execute if entity @s[advancements={mcm:secrets/canyon/mines=false}] at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if entity @s[advancements={mcm:secrets/canyon/mines=true}] run scoreboard players set @s selected_hat 10
execute unless entity @s[advancements={mcm:secrets/canyon/mines=true}] run scoreboard players set @s selected_hat 0