#> Equip a cosmetic item

# If this is called from a cosmetic display,
# retarget it to be the player who made a selection
$execute if entity @s[type=marker] on vehicle run scoreboard players operation $temp vars = @s selected_$(type)
$execute if entity @s[type=marker] on vehicle on target run return run function mcm:cosmetic/equip with storage mcm:cosmetics list[{model:"$(model)"}]

# Check that they can equip it
$execute unless entity @s[$(req)] run return run function mcm:cosmetic/equip_failed

# Set stored score for restoring later if/when needed
$execute if score $temp vars matches 0.. run scoreboard players operation @s selected_$(type) = $temp vars
scoreboard players reset $temp vars

# Equip it
$data merge storage mcm:args {item:"$(model)",replace:1b}
function mcm:items/give_item with storage mcm:args
$playsound minecraft:$(sound) block @s ~ ~ ~ 3 1

data remove storage mcm:args item
data remove storage mcm:args replace
