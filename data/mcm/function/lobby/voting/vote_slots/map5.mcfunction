advancement revoke @s only mcm:map_votes/map5

#> Set the current vote scores before calling the main function
scoreboard players set @s vote_position 5
execute as @e[type=interaction,scores={vote_position=5}] store result score $current_vote vote_map_id run scoreboard players add @s vote_map_id 0
scoreboard players operation @s vote_map_id = $current_vote vote_map_id

function mcm:lobby/voting/player_vote

