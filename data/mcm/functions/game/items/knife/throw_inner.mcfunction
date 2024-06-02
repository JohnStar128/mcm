#> Turn the knife snowball into an arrow with the knife item as a passenger
playsound minecraft:entity.wither.shoot block @a ~ ~ ~ 1 2 0

#> If they used the retrieval item at the same time, cancel the throw
execute store result score @s playerUUID run data get entity @s Owner[0]
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @a[predicate=mcm:matches_uuid,scores={knifeRetrieval=1..}] run kill @s
scoreboard players reset $tempuuid playerUUID


#> Summon arrow with the knife item riding it
$execute if entity @s run summon arrow ~ ~ ~ {life:1100s,Fire:-12000s,Invulnerable:1b,Tags:["knife","MapEntity","new"],\
    Passengers:[\
        {id:"minecraft:item",PickupDelay:5s,Tags:["knifeCosmetic","MapEntity","KeyItem","new"],\
            Item:{id:"$(mc_id)",Count:1b,Fire:-12000s,Invulnerable:1b,\
                tag:$(nbt)}}]}

execute store result score @s motion_x run data get entity @s Motion[0] 1000
execute store result score @s motion_y run data get entity @s Motion[1] 1000
execute store result score @s motion_z run data get entity @s Motion[2] 1000

execute store result entity @s Motion[0] double 0.0001 run scoreboard players operation @s motion_x *= $twelve math
execute store result entity @s Motion[1] double 0.0001 run scoreboard players operation @s motion_y *= $twelve math
execute store result entity @s Motion[2] double 0.0001 run scoreboard players operation @s motion_z *= $twelve math

data modify entity @e[type=arrow,tag=new,limit=1,sort=nearest] Motion set from entity @s Motion
data modify entity @e[type=arrow,tag=new,limit=1,sort=nearest] Owner set from entity @s Owner
data modify entity @e[type=item,tag=new,limit=1,sort=nearest] Owner set from entity @s Owner
kill @s
execute as @e[type=arrow,tag=new] at @s run tag @s remove new
execute as @e[type=item,tag=new] at @s run tag @s remove new
