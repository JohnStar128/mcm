#> Lobby players
team add nametags
team modify nametags nametagVisibility never
team modify nametags color gray

#> Dev team
team add test4
team modify test4 prefix ["", {"text":"[","color":"gold"}, {"text":"The","color":"white"},{"text":"] ","color":"gold"}]

#> Queued players in-game
team add ingame_players
team modify ingame_players friendlyFire true
team modify ingame_players nametagVisibility never
team modify ingame_players color green 

