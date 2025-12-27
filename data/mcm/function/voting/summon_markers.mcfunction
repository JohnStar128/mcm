# Summon a new map_vote marker for this map
$execute if entity @e[type=marker, tag=map_vote, tag=$(name)] run return 1

$scoreboard players set $active vars $(active)
$execute if score $active vars matches 1 run summon marker ~ ~ ~ {Tags:["map_vote","new","$(name)"],data:{name:"$(name)"}}
$execute as @e[type=marker,tag=new] store result entity @s data.map_idx int 1 run data get storage mcm:maps name_idx_map.$(name)
tag @e[type=marker,tag=new] remove new
scoreboard players reset $active vars
