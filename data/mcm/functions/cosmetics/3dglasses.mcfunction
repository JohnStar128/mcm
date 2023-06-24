execute if entity @s[advancements={mcm:secrets/library/library=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1112}}]}] at @s run playsound minecraft:item.armor.equip_leather block @s ~ ~ ~ 1 0
execute if entity @s[advancements={mcm:secrets/library/library=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1112}}]}] run item replace entity @s armor.head with diamond_hoe{HideFlags:7,CustomModelData:1112,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1b,display:{Name:"{\"translate\":\"mcm.item.dark3dglasses\",\"color\":\"gray\",\"italic\":\"false\"}"}}

execute if entity @s[advancements={mcm:secrets/library/library=false}] run tellraw @s {"translate":"mcm.cosmetic.cannot.equip","color":"red"}
execute if entity @s[advancements={mcm:secrets/library/library=false}] at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if entity @s[advancements={mcm:secrets/library/library=true}] run scoreboard players set @s selected_hat 4
execute unless entity @s[advancements={mcm:secrets/library/library=true}] run scoreboard players set @s selected_hat 0