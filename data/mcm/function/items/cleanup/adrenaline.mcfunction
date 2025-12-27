#> Remove adrenaline boost
attribute @s movement_speed modifier remove mcm:adrenaline
attribute @s jump_strength modifier remove mcm:adrenaline

$tag @s remove $(id)
$function mcm:util/timer/delete {name:"$adrenaline_$(id)"}
