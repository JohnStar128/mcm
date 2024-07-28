
# Extract vars into scoreboards
$scoreboard players set $option_diff temp $(diff)
$execute store result score $option temp run data get storage mcm:options options.$(option).value
$execute store result score $option_min temp run data get storage mcm:options options.$(option).min
$execute store result score $option_max temp run data get storage mcm:options options.$(option).max

# Do the math
scoreboard players operation $option temp += $option_diff temp

#Check max
scoreboard players operation $option temp < $option_max temp
# Check min
scoreboard players operation $option temp > $option_min temp

# Update values in storage and update displays
$execute store result storage mcm:options options.$(option).value int 1 run scoreboard players get $option temp
$execute as @e[type=text_display,tag=option,tag=option.$(option)] run data modify entity @s text set from storage mcm:options options.$(option).text