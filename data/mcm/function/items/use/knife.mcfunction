#> Handles knife throwing
clear @s crossbow[custom_data~{knife:1b}]
execute as @e[type=arrow,sort=nearest,limit=1] store result score @s playerUUID run data get entity @s Owner[0]
scoreboard players operation $tempuuid playerUUID = @s playerUUID

execute at @e[type=arrow,predicate=mcm:matches_uuid,limit=1] run summon item ~ ~ ~ {Item:{id:"stick"},PickupDelay:2,Tags:["new"]}
execute as @e[type=arrow,predicate=mcm:matches_uuid,limit=1] at @s run ride @e[type=item,tag=new,sort=nearest,limit=1] mount @s
execute as @e[type=item,tag=new] run data modify entity @s Item set from storage mcm:items knife 
data modify entity @e[type=item,tag=new,limit=1] Owner set from entity @s UUID
data modify entity @e[type=item,tag=new,limit=1] Thrower set from entity @s UUID
execute as @e[type=item,tag=new] run scoreboard players operation @s playerUUID = $tempuuid playerUUID
tag @e[type=item,tag=new] remove new
scoreboard players reset $tempuuid playerUUID

execute at @s run playsound entity.wither.shoot block @a ~ ~ ~ 1 2 0
function mcm:items/give {item:"knife_retrieve"}

advancement revoke @s only mcm:items/knife
