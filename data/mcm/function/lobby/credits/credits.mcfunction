#> Handles playing the credits and anything else related to the credits room

#> Activate the credits in game via clicking the credits usher

#> Roll credits
execute if score $credit_timer CmdData matches 0.. positioned -7 1 128 run function mcm:lobby/credits/run
