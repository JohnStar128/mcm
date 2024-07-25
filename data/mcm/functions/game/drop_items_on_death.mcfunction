#> Drop non-blacklisted items as if the player died with keepinv off

# base case
$execute unless data entity @s Inventory[$(idx)] run return fail

$execute unless data entity @s Inventory[$(idx)].components.minecraft:custom_data.no_drop_on_death run summon item ~ ~0.5 ~ {Tags:["temp_drop"],Item:{id:"minecraft:stick",count:1b}}
$data modify entity @e[type=item,tag=temp_drop,limit=1] Item set from entity @s Inventory[$(idx)]
execute as @e[type=item,tag=temp_drop,limit=1] run data merge entity @s {PickupDelay:5}
tag @e[type=item,tag=temp_drop,limit=1] remove temp_drop

scoreboard players add $player_drop_inv_idx CmdData 1
execute store result storage mcm:player_inv_drop idx int 1 run scoreboard players get $player_drop_inv_idx CmdData
function mcm:game/drop_items_on_death with storage mcm:player_inv_drop
