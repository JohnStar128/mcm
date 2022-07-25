execute if entity @s[advancements={mcm:secrets/ring_bell=true}] at @s run playsound minecraft:block.glass.place block @s ~ ~ ~ 1 1
execute if entity @s[advancements={mcm:secrets/ring_bell=true}] run item replace entity @s armor.head with diamond_hoe{CustomModelData:1114,HideFlags:7,display:{Name:"{\"translate\":\"mcm.item.rainbow_hat\",\"color\":\"light_purple\"}"},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

execute if entity @s[advancements={mcm:secrets/ring_bell=false}] run tellraw @s ["", {"text":"You can't equip this hat yet","color":"red"}]
execute if entity @s[advancements={mcm:secrets/ring_bell=false}] at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if entity @s[advancements={mcm:secrets/ring_bell=true}] run scoreboard players set @s selected_hat 1
execute unless entity @s[advancements={mcm:secrets/ring_bell=true}] run scoreboard players set @s selected_hat 0