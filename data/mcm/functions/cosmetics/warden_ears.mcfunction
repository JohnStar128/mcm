execute if entity @s[advancements={mcm:secrets/sculk/message=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1123}}]}] at @s run playsound minecraft:block.sculk.place block @s ~ ~ ~ 3 1
execute if entity @s[advancements={mcm:secrets/sculk/message=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:1123}}]}] run item replace entity @s armor.head with diamond_hoe{no_drop_on_death:1b,HideFlags:7,CustomModelData:1123,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1b,display:{Name:'{"translate":"mcm.item.warden_ears","color":"gray","italic":false}'}}

execute if entity @s[advancements={mcm:secrets/sculk/message=false}] run tellraw @s {"translate":"mcm.cosmetic.cannot.equip","color":"red"}
execute if entity @s[advancements={mcm:secrets/sculk/message=false}] at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if entity @s[advancements={mcm:secrets/sculk/message=true}] run scoreboard players set @s selected_hat 13
execute unless entity @s[advancements={mcm:secrets/sculk/message=true}] run scoreboard players set @s selected_hat 0