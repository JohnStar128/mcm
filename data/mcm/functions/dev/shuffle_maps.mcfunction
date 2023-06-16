#> Shuffles Votable maps
#> Only runs if game is in voting state and
#> No one has voted

execute if score $gamestate CmdData matches -1 if score $countdown CmdData matches 20 run function mcm:lobby/voting/set_maps