
# Extract vars into scoreboards
$scoreboard players set $option_diff temp $(diff)
execute store result score $option temp run data get storage mcm:options options.map_toggle.page
execute store result score $option_max temp run data get storage mcm:options options.map_toggle.max_page
scoreboard players add $option_max temp 1
# Do the math
scoreboard players operation $option temp += $option_diff temp

# Keep in range wrapping
scoreboard players operation $option temp %= $option_max temp


execute store result storage mcm:options options.map_toggle.page int 1 run \
    scoreboard players get $option temp