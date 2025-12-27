
tag @s add queued
execute if items entity @s weapon.* *[custom_data~{latejoin_spyglass:1b}] run team join ingame_players

execute if items entity @s weapon.* *[custom_data~{spectate_spyglass:1b}] run tag @s add spectator
execute if items entity @s weapon.* *[custom_data~{spectate_spyglass:1b}] run gamemode spectator

advancement revoke @s only mcm:items/lobby_spyglass
