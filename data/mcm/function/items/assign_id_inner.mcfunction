#> Call mcm:items/assign_id instead


$data modify storage mcm:items ids[$(id)] set value $(item)
$execute store result storage mcm:items $(item).num_id int 1 run scoreboard players get count temp
#$data merge storage mcm:items {$(item):{item:$(item)}}

$data modify storage mcm:items $(item).item set value $(item)