#> Turn the knife snowball into an arrow with the knife item as a passenger
playsound minecraft:entity.wither.shoot block @a ~ ~ ~ 1 2 0

#> If they used the retrieval item at the same time, cancel the throw
execute store result score @s playerUUID run data get entity @s Owner[0]
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute as @a[predicate=mcm:matches_uuid,scores={knifeRetrieval=1..}] run item replace entity @s weapon.mainhand with snowball{Unbreakable:1,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"translate":"mcm.item.knife","italic":false}]',Lore:['[{"translate":"mcm.item.knife.lore","italic":false}]']}} 1
execute if entity @a[predicate=mcm:matches_uuid,scores={knifeRetrieval=1..}] run kill @s
scoreboard players reset $tempuuid playerUUID

#> Summon arrow with the knife item riding it
execute if entity @s run summon arrow ~ ~ ~ {life:1100s,Fire:-12000s,Invulnerable:1b,Tags:["knife","MapEntity","new"],Passengers:[{id:"minecraft:item",PickupDelay:5s,Tags:["knifeCosmetic","MapEntity","KeyItem","new"],Item:{id:"minecraft:snowball",Count:1b,Fire:-12000s,Invulnerable:1b,tag:{NoDrop:0b,CustomModelData:1111,PickupDelay:10,display:{Name:'[{"translate":"mcm.item.knife","italic":false}]',Lore:['[{"translate":"mcm.item.knife.lore","italic":false}]']}}}}]}

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
