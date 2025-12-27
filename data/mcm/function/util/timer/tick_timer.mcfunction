# Increment the timer by 1
# If the timer reaches its reset value, start it over

$scoreboard players $(operation) $(name) timers 1
$scoreboard players set $temp vars $(start)
$scoreboard players $(operation) $temp vars $(period)
$execute if score $(name) timers = $temp vars run scoreboard players set $(name) timers $(start)
scoreboard players reset $temp vars
