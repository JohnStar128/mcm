#> Turn the knife snowball into an arrow with the knife item as a passenger
playsound minecraft:entity.wither.shoot block @a ~ ~ ~ 1 2 0
#> Summon arrow with the knife item riding it
summon arrow ~ ~ ~ {life:1100s,Tags:["knife","MapEntity","new"],Passengers:[{id:"minecraft:item",PickupDelay:5s,Tags:["knifeCosmetic","MapEntity","KeyItem","new"],Item:{id:"minecraft:snowball",Count:1b,tag:{NoDrop:0b,CustomModelData:1111,PickupDelay:10,display:{Name:'[{"translate":"mcm.item.knife","italic":false}]',Lore:['[{"translate":"mcm.item.knife.lore","italic":false}]']}}}}]}

data modify entity @e[type=arrow,tag=new,limit=1,sort=nearest] Motion set from entity @s Motion
data modify entity @e[type=arrow,tag=new,limit=1,sort=nearest] Owner set from entity @s Owner
data modify entity @e[type=item,tag=new,limit=1,sort=nearest] Owner set from entity @s Owner
kill @s
execute as @e[type=arrow,tag=new] at @s run tag @s remove new
execute as @e[type=item,tag=new] at @s run tag @s remove new