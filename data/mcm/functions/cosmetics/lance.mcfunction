execute if entity @s[advancements={mcm:secrets/vineyard/lance=true}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:turtle_helmet",Count:1b}]}] run item replace entity @s armor.head with turtle_helmet{HideFlags:7,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1b,display:{Name:"{\"translate\":\"mcm.item.lance_hat\",\"color\":\"green\",\"italic\":\"false\"}"}}

execute if entity @s[advancements={mcm:secrets/vineyard/lance=false}] run tellraw @s ["", {"text":"You can't equip this hat yet","color":"red"}]
execute if entity @s[advancements={mcm:secrets/vineyard/lance=false}] at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if entity @s[advancements={mcm:secrets/vineyard/lance=true}] run scoreboard players set @s selected_hat 2
execute unless entity @s[advancements={mcm:secrets/vineyard/lance=true}] run scoreboard players set @s selected_hat 0