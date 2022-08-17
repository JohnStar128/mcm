#> Assign roles when grace period is over

scoreboard players operation $num_murderers CmdData = $murderers GameRules
function mcm:game/assign_murderer

execute if score $murderers GameRules matches ..1 run tellraw @a[tag=murderer] {"text":"You are ","color":"gold","extra":[{"text":"the murderer!","color":"red"}]}
title @a[tag=murderer] title {"text":"You are ","color":"gold","extra":[{"text":"the murderer!","color":"red"}]}
execute if score $murderers GameRules matches ..1 run title @a[tag=murderer] subtitle {"text":"Kill the innocents ","color":"gold"}
execute if score $murderers GameRules matches 2 as @a[tag=murderer] at @s run title @s subtitle ["", {"text":"with ","color":"gold"}, {"selector":"@p[tag=murderer,distance=1..]","color":"green"}]
execute if score $murderers GameRules matches 2 as @a[tag=murderer] at @s run tellraw @s ["" ,{"selector":"@p[tag=murderer,distance=1..]","color":"red"}, {"text":" and ","color":"gold"}, {"selector":"@s","color":"red"} ,{"text":" are the ","color":"gold"},{"text":"murderers!","color":"red"}]
execute if score $murderers GameRules matches 3.. as @a[tag=murderer] at @s run title @s subtitle ["", {"text":"with ","color":"gold"}, {"selector":"@p[tag=murderer,distance=1..,sort=nearest]","color":"green"}, {"text":" and ","color":"gold"}, {"selector":"@p[tag=murderer,distance=1..,sort=furthest]","color":"green"}]
execute if score $murderers GameRules matches 3.. as @a[tag=murderer] at @s run tellraw @s ["" ,{"selector":"@p[tag=murderer,distance=1..,sort=nearest]","color":"red"}, {"text":", ","color":"gold"}, {"selector":"@p[tag=murderer,distance=1..,sort=furthest]","color":"red"}, {"text":" and ","color":"gold"}, {"selector":"@s","color":"red"} ,{"text":" are the ","color":"gold"},{"text":"murderers!","color":"red"}]

# Murderer items
execute as @a[tag=murderer] run item replace entity @s hotbar.1 with snowball{Unbreakable:1,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"translate":"mcm.item.knife","italic":false}]',Lore:['[{"translate":"mcm.item.knife.lore","italic":false}]']}} 1
execute as @a[tag=murderer] run item replace entity @s hotbar.2 with stick{NoDrop:1b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.player_tracker","italic":false}]',Lore:['[{"translate":"mcm.item.player_tracker.lore","italic":false}]']}}
execute as @a[tag=murderer] run item replace entity @s hotbar.3 with carrot_on_a_stick{NoDrop:1b,CustomModelData:1112,display:{Name:'[{"translate":"mcm.item.teleporter","italic":false}]',Lore:['[{"translate":"mcm.item.teleporter.lore","italic":false}]']}}
execute as @a[tag=murderer] run item replace entity @s hotbar.4 with carrot_on_a_stick{NoDrop:1b,CustomModelData:1113,display:{Name:'[{"translate":"mcm.item.adrenaline","italic":false}]',Lore:['[{"translate":"mcm.item.adrenaline.lore","italic":false}]']}}
execute as @a[tag=murderer] run item replace entity @s hotbar.8 with netherite_scrap{CustomModelData:1, Tags: ["KeyItem"], display:{Name:'{"translate":"mcm.item.scrap","italic":"false"}',Lore: ['[{"translate":"mcm.item.scrap.lore","italic":false}]']}}

# Gunner
execute as @a[tag=queued,tag=!murderer,limit=1,sort=random] at @s run tag @s add gunner
# Gun gets NoDrop because it's already in an inventory
execute as @a[tag=gunner] run item replace entity @s hotbar.1 with warped_fungus_on_a_stick{NoDrop:1b,Unbreakable:1,Autoqueue:0b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.gun","italic":false}]',Lore:['[{"translate":"mcm.item.gun.lore","italic":false}]']}} 1
execute as @a[tag=gunner] at @s run tellraw @s ["","\n",{"text":"You are ","color":"gold"},{"text":"the gunner","color":"dark_aqua"}]
execute as @a[tag=gunner] at @s run title @s title ["",{"text":"You are ","color":"gold"},{"text":"the gunner","color":"dark_aqua"}]
execute as @a[tag=gunner] at @s run title @s subtitle ["",{"text":"Kill the murderer ","color":"dark_gray"}]
execute as @a[tag=gunner] at @s run item replace entity @s hotbar.8 with netherite_scrap{Item:{NoDrop:1b,display:{Name:"{\"translate\":\"mcm.item.scrap\",\"italic\":\"false\"}"},Lore:['[{"translate":"mcm.item.scrap.lore","italic":false}]']}}

# Innocent
execute as @a[tag=queued,tag=!murderer,tag=!gunner] at @s run tag @s add innocent
execute if score $startscrap GameRules matches 1.. run item replace entity @a[tag=innocent] hotbar.8 with netherite_scrap{CustomModelData:1, Tags: ["KeyItem"], display:{Name:'{"translate":"mcm.item.scrap","italic":"false"}',Lore: ['[{"translate":"mcm.item.scrap.lore","italic":false}]']}}
tellraw @a[tag=innocent] {"text":"You are ","color":"gold","extra":[{"text":"innocent!","color":"light_purple"}]}
title @a[tag=innocent] title {"text":"You are ","color":"gold","extra":[{"text":"innocent!","color":"light_purple"}]}
title @a[tag=innocent] subtitle {"text":"Objective: Survive ","color":"gold"}
# Make it easier to track the gunner as an innocent
execute as @a[tag=queued,tag=gunner] at @s run tag @s add innocent

# Give everyone a spyglass in their 8th slot
item replace entity @a[tag=murderer] hotbar.7 with spyglass{NoDrop:1b}
item replace entity @a[tag=innocent] hotbar.7 with spyglass{NoDrop:1b}

scoreboard players set $pickedroles CmdData 1
playsound minecraft:block.beehive.enter ambient @a ~ ~ ~ 1 0 1