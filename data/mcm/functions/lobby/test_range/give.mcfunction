#> Give a player the item in the display
execute at @s run summon item ~ ~0.5 ~ {Tags:["temp_drop"],Item:{id:"minecraft:stick",Count:1b}}
$data modify entity @e[type=item,tag=temp_drop,limit=1] Item set value $(item)
tag @e[type=item,tag=temp_drop,limit=1] remove temp_drop
