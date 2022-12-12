execute if entity @s[advancements={mcm:secrets/vineyard=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1113}}]}] at @s run playsound minecraft:item.armor.equip_leather block @s ~ ~ ~ 1 0
execute if entity @s[advancements={mcm:secrets/vineyard=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1113}}]}] run item replace entity @s armor.head with diamond_hoe{HideFlags:7,CustomModelData:1113,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1b,display:{Name:"{\"translate\":\"mcm.item.bowlerhat\",\"color\":\"gray\",\"italic\":\"false\"}"}}

execute if entity @s[advancements={mcm:secrets/vineyard=false}] run tellraw @s ["", {"text":"You can't equip this hat yet","color":"red"}]
execute if entity @s[advancements={mcm:secrets/vineyard=false}] at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if entity @s[advancements={mcm:secrets/vineyard=true}] run scoreboard players set @s selected_hat 6
execute unless entity @s[advancements={mcm:secrets/vineyard=true}] run scoreboard players set @s selected_hat 0