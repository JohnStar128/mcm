#> Have the auto retrieval item do stuff

execute as @e[type=arrow,tag=knife] run function mcm:game/items/knife/kill_owned_entity
execute as @e[type=item,tag=knifeCosmetic] run function mcm:game/items/knife/kill_owned_entity
summon lightning_bolt ~ ~ ~
tag @s add retrieved

item replace entity @s weapon.mainhand with air
scoreboard players set $item_id item_management 1
scoreboard players set $preferred_slot item_management -1
function mcm:game/items/give_item

function mcm:util/reset_carrot_on_stick