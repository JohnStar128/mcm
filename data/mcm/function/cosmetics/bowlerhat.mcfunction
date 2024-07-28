execute if entity @s[advancements={mcm:secrets/vineyard/vineyard=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1113}}]}] at @s run playsound minecraft:item.armor.equip_leather block @s ~ ~ ~ 3 0
execute if entity @s[advancements={mcm:secrets/vineyard/vineyard=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1113}}]}] run item replace entity @s armor.head with diamond_hoe[custom_data={no_drop_on_death:1b},custom_model_data=1113,enchantments={levels:{binding_curse:1},show_in_tooltip:false},unbreakable={show_in_tooltip:false},custom_name='{"translate":"mcm.item.bowlerhat","color":"gray","italic":false}']

execute if entity @s[advancements={mcm:secrets/vineyard/vineyard=false}] run tellraw @s {"translate":"mcm.cosmetic.cannot.equip","color":"red"}
execute if entity @s[advancements={mcm:secrets/vineyard/vineyard=false}] at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if entity @s[advancements={mcm:secrets/vineyard/vineyard=true}] run scoreboard players set @s selected_hat 6
execute unless entity @s[advancements={mcm:secrets/vineyard/vineyard=true}] run scoreboard players set @s selected_hat 0