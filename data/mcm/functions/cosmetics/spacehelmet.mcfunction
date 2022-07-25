execute if entity @s[advancements={mcm:secrets/spaceship=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1111}}]}] at @s run playsound minecraft:item.armor.equip_iron block @s ~ ~ ~ 1 0
execute if entity @s[advancements={mcm:secrets/spaceship=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1111}}]}] run item replace entity @s armor.head with diamond_hoe{HideFlags:7,CustomModelData:1111,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1b,display:{Name:"{\"translate\":\"mcm.item.space_helmet\",\"color\":\"gray\",\"italic\":\"false\"}"}}

execute if entity @s[advancements={mcm:secrets/spaceship=false}] run tellraw @s ["", {"text":"You can't equip this hat yet","color":"red"}]
execute if entity @s[advancements={mcm:secrets/spaceship=false}] at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if entity @s[advancements={mcm:secrets/spaceship=true}] run scoreboard players set @s selected_hat 3
execute unless entity @s[advancements={mcm:secrets/spaceship=true}] run scoreboard players set @s selected_hat 0