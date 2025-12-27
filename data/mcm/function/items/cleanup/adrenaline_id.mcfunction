
$data modify storage mcm:args timer.name set value "$adrenaline_$(id)"
data modify storage mcm:args timer.operation set value "remove"
execute store result storage mcm:args timer.start double 1 run data get storage mcm:game_state state.rules.adrenaline_duration 20
execute store result score $temp vars run data get storage mcm:game_state state.rules.adrenaline_duration 20
execute store result storage mcm:args timer.period int 1 run scoreboard players add $temp vars 1
function mcm:util/timer/new with storage mcm:args timer
$tag @s add $(id)

$function mcm:util/queue/add {fn:"execute as @a[tag=$(id)] run function mcm:items/cleanup/adrenaline {id:$(id)}", condition:"if score $adrenaline_$(id) timers matches ..0 if entity @a[tag=$(id)]"}

data remove storage mcm:args timer
scoreboard players reset $temp vars
