# Create a new animated structure storage

data modify storage mcm:animate active_structures append from storage mcm:args animate

$scoreboard players set $order vars $(order)
$scoreboard players set $frames vars $(frames)
$function mcm:util/timer/new {name:"$(name)_$(id)",start:0,period:"$(duration)",operation:"add"}
$execute unless score $order vars matches 0 store result storage mcm:animate active_structures[{name:"$(name)"}].current_frame int 1 run scoreboard players remove $frames vars 1
scoreboard players reset $order vars
scoreboard players reset $frames vars
