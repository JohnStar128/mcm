#> Run by the player clicking the interaction

advancement revoke @s only mcm:lobby/click_option

execute as @e[type=interaction,tag=option,nbt={interaction:{}}] run function mcm:lobby/options/backend/click_interaction

# Update game rules
function mcm:lobby/options/sync_game_rules
