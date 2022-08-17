#> May seem pointless to have this function, but these commands need to be
#> run atomically so that the result of dist isn't overwritten for the last murderer
function mcm:math/dist
title @s actionbar ["Closest innocent is ", {"score": {"name": "$out", "objective": "temp"},"color":"gold"}, " blocks away"]