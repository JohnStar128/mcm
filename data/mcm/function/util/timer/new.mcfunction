#> A new timer is a score that increments or decrements by 1 every tick
# Arguments:
#   name: Name of the timer
#   start: Starting value of the timer
#   period: Value that resets the timer
#   operation: Whether the timer counts up or down (add or remove)

$data modify storage mcm:timers list append value {name:"$(name)",start:"$(start)",period:"$(period)",operation:"$(operation)"}
$scoreboard players set $(name) timers $(start)
