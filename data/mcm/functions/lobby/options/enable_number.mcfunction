#> Use this function on a number option `extra.enable_callback`
#> Disables the option for the correct button if the value is at the limit

$scoreboard players set $option_diff temp $(diff)
$execute store result score $option temp run data get storage mcm:options options.$(option).value
$execute store result score $option_min temp run data get storage mcm:options options.$(option).min
$execute store result score $option_max temp run data get storage mcm:options options.$(option).max

execute if score $option temp <= $option_min temp if score $option_diff temp matches ..0 run return fail
execute if score $option temp > $option_min temp if score $option_diff temp matches ..0 run return 1

execute if score $option temp >= $option_max temp if score $option_diff temp matches 0.. run return fail
execute if score $option temp < $option_max temp if score $option_diff temp matches 0.. run return 1