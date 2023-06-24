execute if entity @s[advancements={mcm:secrets/airship/captain=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1118}}]}] at @s run playsound minecraft:item.armor.equip_leather block @s ~ ~ ~ 1 1
execute if entity @s[advancements={mcm:secrets/airship/captain=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1118}}]}] run item replace entity @s armor.head with diamond_hoe{HideFlags:7,CustomModelData:1118,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1b,display:{Name:"{\"translate\":\"mcm.item.aviatorcap\",\"color\":\"gray\",\"italic\":\"false\"}"}}

execute if entity @s[advancements={mcm:secrets/airship/captain=false}] run tellraw @s {"translate":"mcm.cosmetic.cannot.equip","color":"red"}
execute if entity @s[advancements={mcm:secrets/airship/captain=false}] at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if entity @s[advancements={mcm:secrets/airship/captain=true}] run scoreboard players set @s selected_hat 8
execute unless entity @s[advancements={mcm:secrets/airship/captain=true}] run scoreboard players set @s selected_hat 0