#> Cancel throw if throw delay isn't up

execute if score @s droppedKnife matches 1.. run function mcm:items/retrieve/knife_use
execute if score @s droppedKnife matches 1.. run scoreboard players set @s retrieval_delay 5
execute if score @s droppedKnife matches 1.. run tag @s remove has_knife
execute if score @s droppedKnife matches 1.. run return run scoreboard players reset @s droppedKnife

execute at @s as @e[type=snowball,sort=nearest,limit=1] store result score @s playerUUID run data get entity @s Owner[0]
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if score @s throw_delay matches 1.. as @e[type=snowball,predicate=mcm:matches_uuid] run kill @s
execute unless entity @e[type=snowball,predicate=mcm:matches_uuid] store result score scrap temp run clear @s netherite_scrap 0
execute unless entity @e[type=snowball,predicate=mcm:matches_uuid] if score scrap temp matches 10.. run function mcm:items/give_mainhand {item:"knife"}
execute unless entity @e[type=snowball,predicate=mcm:matches_uuid] run scoreboard players reset @s droppedKnife
execute unless entity @e[type=snowball,predicate=mcm:matches_uuid] run scoreboard players reset @s throwKnife
execute unless entity @e[type=snowball,predicate=mcm:matches_uuid] run return fail

execute store result storage mcm:args id int 1 run scoreboard players get @s loadout_knife

function mcm:items/id with storage mcm:args
function mcm:items/mc_id with storage mcm:args
function mcm:items/get_item_nbt with storage mcm:args

#data merge storage mcm:args {nbt:{loadout:knife}}

execute as @e[type=snowball,sort=nearest,limit=1] at @s run function mcm:game/items/knife/throw_inner with storage mcm:args

scoreboard players reset @s throwKnife
data remove storage mcm:args nbt
data remove storage mcm:args mc_id
data remove storage mcm:args item
data remove storage mcm:args id

function mcm:items/retrieve/knife_use
scoreboard players set @s retrieval_delay 5
scoreboard players reset @s droppedKnife
tag @s remove has_knife
