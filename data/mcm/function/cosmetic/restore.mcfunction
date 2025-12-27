#> Restore a player's cosmetics if they get changed by game process
#> such as equipping 3D glasses while queueing for a game
execute store result storage mcm:args cosmetic_restore.id int 1 run scoreboard players get @s selected_head
function mcm:cosmetic/restore_helper with storage mcm:args cosmetic_restore

# repeat with chest, legs, feet if we ever add those
