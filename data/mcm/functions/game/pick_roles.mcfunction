#> Assign roles when grace period is over

scoreboard players operation $num_murderers CmdData = $murderers GameRules
function mcm:game/assign_murderer

execute if score $murderers GameRules matches ..1 run tellraw @a[tag=murderer] {"translate":"mcm.game.role","color":"gold","with":[{"translate":"mcm.game.murderer","color":"red"}]}
title @a[tag=murderer] title {"translate":"mcm.game.role","color":"gold","with":[{"translate":"mcm.game.murderer","color":"red"}]}
execute if score $murderers GameRules matches ..1 run title @a[tag=murderer] subtitle {"translate":"mcm.game.murderer.subtitle","color":"gold"}
schedule function mcm:game/murderertip 6s

execute if score $murderers GameRules matches 2 as @a[tag=murderer] at @s run title @s subtitle {"translate":"mcm.game.murderer2.subtitle", "color":"gold", "with" :[{"selector" : "@p[tag=murderer,distance=0.01..]", "color":"green"}]}
execute if score $murderers GameRules matches 2 as @a[tag=murderer] at @s run tellraw @s {"translate":"mcm.game.murderer2.msg","color":"gold","with":[{"selector":"@p[tag=murderer,distance=0.01..]", "color":"green"}, {"selector":"@s","color":"green"}, {"translate":"mcm.game.murderers","color":"gold"}]}

execute if score $murderers GameRules matches 2 as @a[tag=murderer] at @s run title @s subtitle {"translate":"mcm.game.murderer3.subtitle", "color":"gold", "with" :[{"selector" :"@p[tag=murderer,distance=0.01..]", "color":"green"},{"selector" :"@p[tag=murderer,distance=0.01..,sort=furthest]", "color":"green"}]}
execute if score $murderers GameRules matches 2 as @a[tag=murderer] at @s run tellraw @s {"translate":"mcm.game.murderer3.msg","color":"gold","with":[{"selector":"@p[tag=murderer,distance=0.01..]", "color":"green"}, {"selector":"@p[tag=murderer,distance=0.01..,sort=furthest]", "color":"green"}, {"selector":"@s","color":"green"}, {"translate":"mcm.game.murderers","color":"gold"}]}

# Murderer items
execute as @a[tag=murderer] run function mcm:game/items/knife/give
execute as @a[tag=murderer] run function mcm:game/items/player_tracker/give
execute as @a[tag=murderer] run function mcm:game/items/teleporter/give
execute as @a[tag=murderer] run function mcm:game/items/adrenaline/give
execute as @a[tag=murderer] run item replace entity @s hotbar.8 with netherite_scrap{CustomModelData:1, Tags: ["KeyItem"], display:{Name:'{"translate":"mcm.item.scrap","italic":"false"}',Lore: ['[{"translate":"mcm.item.scrap.lore","italic":false}]']}}

# Gunner
execute as @a[tag=queued,tag=!murderer,limit=1,sort=random] at @s run tag @s add gunner
# Gun gets NoDrop because it's already in an inventory
execute as @a[tag=gunner] run function mcm:game/items/gun/give
execute as @a[tag=gunner] at @s run tellraw @s {"translate":"mcm.game.role","color":"gold","with":[{"translate":"mcm.game.gunner","color":"dark_aqua"}]}
execute as @a[tag=gunner] at @s run title @s title {"translate":"mcm.game.role","color":"gold","with":[{"translate":"mcm.game.gunner","color":"dark_aqua"}]}
execute as @a[tag=gunner] at @s run title @s subtitle {"translate":"mcm.game.gunner.subtitle","color":"dark_gray"}
schedule function mcm:game/gunnertip 6s
execute as @a[tag=gunner] at @s run item replace entity @s hotbar.8 with netherite_scrap{Item:{NoDrop:1b,display:{Name:"{\"translate\":\"mcm.item.scrap\",\"italic\":\"false\"}"},Lore:['[{"translate":"mcm.item.scrap.lore","italic":false}]']}}

# Innocent
execute as @a[tag=queued,tag=!murderer,tag=!gunner] at @s run tag @s add innocent
execute if score $startscrap GameRules matches 1.. run item replace entity @a[tag=innocent] hotbar.8 with netherite_scrap{CustomModelData:1, Tags: ["KeyItem"], display:{Name:'{"translate":"mcm.item.scrap","italic":"false"}',Lore: ['[{"translate":"mcm.item.scrap.lore","italic":false}]']}}
tellraw @a[tag=innocent] {"translate":"mcm.game.role","color":"gold","with":[{"translate":"mcm.game.innocent","color":"light_purple"}]}
title @a[tag=innocent] title {"translate":"mcm.game.role","color":"gold","with":[{"translate":"mcm.game.innocent","color":"light_purple"}]}
title @a[tag=innocent] subtitle {"translate":"mcm.game.innocent.subtitle","color":"gold"}
schedule function mcm:game/innocenttip 6s
# Make it easier to track the gunner as an innocent
execute as @a[tag=queued,tag=gunner] at @s run tag @s add innocent

# Give everyone a spyglass in their 8th slot
item replace entity @a[tag=murderer] hotbar.7 with spyglass{NoDrop:1b}
item replace entity @a[tag=innocent] hotbar.7 with spyglass{NoDrop:1b}

scoreboard players set $pickedroles CmdData 1
playsound minecraft:block.beehive.enter ambient @a ~ ~ ~ 1 0 1