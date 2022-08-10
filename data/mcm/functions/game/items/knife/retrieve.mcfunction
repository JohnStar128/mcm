#> Have the auto retrieval item do stuff

execute as @e[type=arrow,tag=knife] run function mcm:game/items/knife/kill_owned_entity
execute as @e[type=item,tag=knifeCosmetic] run function mcm:game/items/knife/kill_owned_entity
summon lightning_bolt ~ ~ ~
tag @s add retrieved
item replace entity @s weapon.mainhand with minecraft:snowball{CustomModelData:1111}
scoreboard players reset @s knifeRetrieval
scoreboard players reset @s adrenalineClick
scoreboard players reset @s teleporterClick