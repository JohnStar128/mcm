#> Don't call this function directly

$data merge entity @s $(data)
$summon marker ~ ~ ~ {Tags:["marker_temp_option"],data:$(extra)}
$data merge entity @e[type=marker,tag=marker_temp_option,limit=1] {data:{callback:"$(callback)"}}


ride @e[type=marker,tag=marker_temp_option,limit=1] mount @s
tag @e[type=marker,tag=marker_temp_option] remove marker_temp_option

tag @s add option



# Adding width and height info to the marker for disabling the interaction
data merge storage mcm:options {temp:{}}

data modify storage mcm:options temp merge from entity @s

execute on passengers run data modify entity @s data.width set from storage mcm:options temp.width
execute on passengers run data modify entity @s data.height set from storage mcm:options temp.height

data remove storage mcm:options temp

execute on passengers unless data entity @s data.enable_callback run \
    data modify entity @s data.enable_callback set value "mcm:lobby/options/backend/always_enable"


tag @s add updatable