#> Don't call this function directly

tag @s remove text_display_temp

$data merge entity @s $(data)
$summon marker ~ ~ ~ {Tags:["marker_temp_option"],data:$(extra)}
$data merge entity @e[type=marker,tag=marker_temp_option,limit=1] {data:{callback:"$(callback)"}}


ride @e[type=marker,tag=marker_temp_option,limit=1] mount @s
tag @e[type=marker,tag=marker_temp_option] remove marker_temp_option
tag @s add option
tag @s add updatable