
#> This callback disables the number change buttons
#> if the value is at it's min/max

#> Requires
#>   `diff` the difference this button represents
#>   `option` the name of the option stored in the `mcm:options` storage
#>   `enabled` the text to display if enabled
#>   `disabled` the text to display if disabled

$scoreboard players set $option_diff temp $(diff)
$execute store result score $option temp run data get storage mcm:options options.$(option).value
$execute store result score $option_min temp run data get storage mcm:options options.$(option).min
$execute store result score $option_max temp run data get storage mcm:options options.$(option).max

execute if data storage mcm:options options.locked run data modify entity @s text set from entity @s Passengers[0].data.disabled
execute if data storage mcm:options options.locked run return 1

execute if score $option temp <= $option_min temp if score $option_diff temp matches ..0 run data modify entity @s text set from entity @s Passengers[0].data.disabled
execute if score $option temp > $option_min temp if score $option_diff temp matches ..0 run data modify entity @s text set from entity @s Passengers[0].data.enabled

execute if score $option temp >= $option_max temp if score $option_diff temp matches 0.. run data modify entity @s text set from entity @s Passengers[0].data.disabled
execute if score $option temp < $option_max temp if score $option_diff temp matches 0.. run data modify entity @s text set from entity @s Passengers[0].data.enabled