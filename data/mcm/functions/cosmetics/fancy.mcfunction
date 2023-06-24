execute if entity @s[advancements={mcm:secrets/train/dinner=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1119}}]}] at @s run playsound minecraft:item.armor.equip_leather block @s ~ ~ ~ 1 1
execute if entity @s[advancements={mcm:secrets/train/dinner=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1119}}]}] run item replace entity @s armor.head with diamond_hoe{HideFlags:7,CustomModelData:1119,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1b,display:{Name:"{\"translate\":\"mcm.item.fancy\",\"color\":\"gray\",\"italic\":\"false\"}"}}

execute if entity @s[advancements={mcm:secrets/train/dinner=false}] run tellraw @s {"translate":"mcm.cosmetic.cannot.equip","color":"red"}
execute if entity @s[advancements={mcm:secrets/train/dinner=false}] at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if entity @s[advancements={mcm:secrets/train/dinner=true}] run scoreboard players set @s selected_hat 9
execute unless entity @s[advancements={mcm:secrets/train/dinner=true}] run scoreboard players set @s selected_hat 0