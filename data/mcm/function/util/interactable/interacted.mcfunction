# Runs when a player right clicks an interactable - forks to running that interaction's function
execute as @e[type=interaction,tag=interactable] if data entity @s interaction on passengers run function mcm:util/interactable/run_function with entity @s data
execute as @e[type=interaction,tag=interactable] if data entity @s interaction run data remove entity @s interaction
advancement revoke @s only mcm:util/interact
