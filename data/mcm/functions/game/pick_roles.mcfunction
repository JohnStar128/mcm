#> Assign roles when grace period is over
# Murderer
execute as @a[tag=queued,tag=!prevMurderer,tag=!murderer,sort=random,limit=1] at @s unless entity @a[tag=murderer] run tag @s add murderer
tellraw @a[tag=murderer] {"text":"You are ","color":"gold","extra":[{"text":"the murderer!","color":"red"}]}
title @a[tag=murderer] title {"text":"You are ","color":"gold","extra":[{"text":"the murderer!","color":"red"}]}
title @a[tag=murderer] subtitle {"text":"Kill the innocent ","color":"gold"}
execute as @a[tag=murderer,limit=1,sort=random] run item replace entity @s hotbar.1 with snowball{Unbreakable:1,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"translate":"mcm.item.knife","italic":false}]',Lore:['[{"text":"Right click to throw","italic":false}]']}} 1

# Innocent
execute as @e[tag=queued,tag=!murderer] at @s run tag @s add innocent
item replace entity @e[tag=innocent] hotbar.8 with netherite_scrap{display:{Name:'{"translate":"mcm.item.scrap","italic":"false"}',Lore:['[{"text":"Collect 10 to craft a gun","italic":false}]']}}
tellraw @a[tag=innocent] {"text":"You are ","color":"gold","extra":[{"text":"innocent!","color":"light_purple"}]}
title @a[tag=innocent] title {"text":"You are ","color":"gold","extra":[{"text":"innocent!","color":"light_purple"}]}
title @a[tag=innocent] subtitle {"text":"Objective: Survive ","color":"gold"}

# Gunner
execute as @e[tag=queued,tag=innocent,limit=1,sort=random] run item replace entity @s hotbar.1 with warped_fungus_on_a_stick{CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.gun","italic":false}]'}} 1
execute as @a[tag=innocent,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}]},limit=1] at @s run tag @s add gunner
execute as @a[tag=gunner] at @s run tellraw @s ["","\n",{"text":"You are ","color":"gold"},{"text":"the gunner","color":"dark_aqua"}]
execute as @a[tag=gunner] at @s run title @s title ["",{"text":"You are ","color":"gold"},{"text":"the gunner","color":"dark_aqua"}]
execute as @a[tag=gunner] at @s run title @s subtitle ["",{"text":"Kill the murderer ","color":"dark_gray"}]
execute as @a[tag=gunner] at @s run item replace entity @s hotbar.8 with netherite_scrap{Item:{id:"minecraft:netherite_scrap",Count:1b,tag:{display:{Name:"{\"translate\":\"mcm.item.scrap\",\"italic\":\"false\"}"},Lore:['[{"translate":"mcm.item.scrap.lore","italic":false}]']}}}

# Give everyone a spyglass in their 8th slot
item replace entity @a[tag=murderer] hotbar.7 with spyglass
item replace entity @a[tag=innocent] hotbar.7 with spyglass

scoreboard players set $pickedroles CmdData 1
playsound minecraft:block.beehive.enter ambient @a ~ ~ ~ 1 0 1