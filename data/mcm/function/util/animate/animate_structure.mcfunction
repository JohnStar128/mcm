#> Animate a structure by loading the next frame

# Only run after each time the timer resets
# Use 1 instead of 0 because the timer will tick once before
# this runs after it's created
$execute unless score $(name)_$(id) timers matches 1 run return fail

#Place the structure
$place template $(name)_$(current_frame) $(pos) $(rotation) $(mirror) $(integrity) $(seed)

$scoreboard players set $frame vars $(current_frame)
$scoreboard players set $order vars $(order)
$scoreboard players set $repeat vars $(repeat)

# If we are repeating, start over and decrement repeat counter
$execute unless score $repeat vars matches ..0 if score $order vars matches 0 if score $frame vars matches $(frames) run scoreboard players set $frame vars -1
$execute unless score $repeat vars matches ..0 if score $order vars matches 0 if score $frame vars matches -1 store result storage mcm:animate active_structures[{id:$(id)}].repeat int 1 run scoreboard players remove $repeat vars 1
# $execute unless score $repeat vars matches ..0 if score $order vars matches 0 if score $frame vars matches -1 run data modify storage mcm:animate active_structures[{id:$(id)}].current_frame set value 0

$execute unless score $repeat vars matches ..0 unless score $order vars matches 0 if score $frame vars matches 0 run scoreboard players set $frame vars $(frames)
$execute unless score $repeat vars matches ..0 unless score $order vars matches 0 if score $frame vars matches $(frames) store result storage mcm:animate active_structures[{id:$(id)}].repeat int 1 run scoreboard players remove $repeat vars 1
# $execute unless score $repeat vars matches ..0 unless score $order vars matches 0 if score $frame vars matches $(frames) store result storage mcm:animate active_structures[{id:$(id)}].current_frame int 1 run scoreboard players remove $frame vars 1

# Update internal state to the next frame
$execute if score $order vars matches 0 store result storage mcm:animate active_structures[{id:$(id)}].current_frame int 1 run scoreboard players add $frame vars 1
$execute unless score $order vars matches 0 store result storage mcm:animate active_structures[{id:$(id)}].current_frame int 1 run scoreboard players remove $frame vars 1

# If we're at the end and not repeating, delete the animation,
# Leaving the last frame in place
$execute if score $repeat vars matches ..0 if score $order vars matches 0 if score $frame vars matches $(frames) run function mcm:util/animate/delete_structure_instance {id:$(id),name:"$(name)"}
$execute if score $repeat vars matches ..0 unless score $order vars matches 0 unless score $frame vars matches 0.. run function mcm:util/animate/delete_structure_instance {id:$(id),name:"$(name)"}

scoreboard players reset $frame vars
scoreboard players reset $order vars
scoreboard players reset $repeat vars
