
$data modify storage mcm:args reload_timer.name set value "$reload_$(id)"
data modify storage mcm:args reload_timer.operation set value "remove"
execute store result storage mcm:args reload_timer.start double 1 run data get storage mcm:game_state state.rules.gun_delay 20
execute store result score $temp vars run data get storage mcm:game_state state.rules.gun_delay 20
execute store result storage mcm:args reload_timer.period int 1 run scoreboard players add $temp vars 1
function mcm:util/timer/new with storage mcm:args reload_timer
$tag @s add $(id)

$function mcm:util/queue/add {fn:"execute as @a[tag=$(id)] run function mcm:items/cleanup/reload {id:$(id)}", condition:"if score $reload_$(id) timers matches ..0 if entity @a[tag=$(id)]"}

data remove storage mcm:args reload_timer
scoreboard players reset $temp vars
