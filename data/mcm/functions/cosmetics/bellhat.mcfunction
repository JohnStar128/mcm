execute if entity @s[advancements={mcm:secrets/cyberpunk=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1117}}]}] at @s run playsound minecraft:block.bell.use block @s ~ ~ ~ 1 1
execute if entity @s[advancements={mcm:secrets/cyberpunk=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1117}}]}] run item replace entity @s armor.head with diamond_hoe{HideFlags:7,CustomModelData:1117,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1b,display:{Name:"{\"translate\":\"mcm.item.bell\",\"color\":\"gray\",\"italic\":\"false\"}"}}

execute if entity @s[advancements={mcm:secrets/cyberpunk=false}] run tellraw @s ["", {"text":"You can't equip this hat yet","color":"red"}]
execute if entity @s[advancements={mcm:secrets/cyberpunk=false}] at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if entity @s[advancements={mcm:secrets/cyberpunk=true}] run scoreboard players set @s selected_hat 5
execute unless entity @s[advancements={mcm:secrets/cyberpunk=true}] run scoreboard players set @s selected_hat 0