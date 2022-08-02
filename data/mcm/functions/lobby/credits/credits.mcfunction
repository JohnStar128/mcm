#> Handles playing the credits and anything else related to the credits room

#> Leave back to arcade
execute as @a[predicate=mcm:bounding_boxes/credits_exit] run tp -24 1 87

#> Activate the credits in game via clicking the credits usher

#> Roll credits
execute if score $credit_timer CmdData matches 0.. positioned -30 -38 154 run function mcm:lobby/credits/run