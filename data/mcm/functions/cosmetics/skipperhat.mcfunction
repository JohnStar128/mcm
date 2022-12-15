execute if entity @s[advancements={mcm:secrets/riverboat/riverboat=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1115}}]}] at @s run playsound minecraft:item.armor.equip_leather block @s ~ ~ ~ 1 0
execute if entity @s[advancements={mcm:secrets/riverboat/riverboat=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1115}}]}] run item replace entity @s armor.head with diamond_hoe{HideFlags:7,CustomModelData:1115,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1b,display:{Name:"{\"translate\":\"mcm.item.skipperhat\",\"color\":\"gray\",\"italic\":\"false\"}"}}

execute if entity @s[advancements={mcm:secrets/riverboat/riverboat=false}] run tellraw @s ["", {"text":"You can't equip this hat yet","color":"red"}]
execute if entity @s[advancements={mcm:secrets/riverboat/riverboat=false}] at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if entity @s[advancements={mcm:secrets/riverboat/riverboat=true}] run scoreboard players set @s selected_hat 7
execute unless entity @s[advancements={mcm:secrets/riverboat/riverboat=true}] run scoreboard players set @s selected_hat 0