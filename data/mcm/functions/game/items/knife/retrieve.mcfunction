#> Have the auto retrieval item do stuff

execute as @e[type=arrow,tag=knife] run function mcm:game/items/knife/kill_owned_entity
execute as @e[type=item,tag=knifeCosmetic] run function mcm:game/items/knife/kill_owned_entity
summon lightning_bolt ~ ~ ~
tag @s add retrieved
execute unless entity @s[nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] run give @s snowball{Unbreakable:1,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"translate":"mcm.item.knife","italic":false}]',Lore:['[{"text":"Right click to throw","italic":false}]']}} 1
clear @s carrot_on_a_stick{CustomModelData:1111}
scoreboard players reset @s knifeRetrieval
scoreboard players reset @s adrenalineClick
scoreboard players reset @s teleporterClick