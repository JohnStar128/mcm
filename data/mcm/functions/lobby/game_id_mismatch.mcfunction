tag @s remove Voted
scoreboard players operation @s gameID = $gameID CmdData

#> Reset votes
scoreboard players reset @s vote_position
scoreboard players reset @s vote_map_id