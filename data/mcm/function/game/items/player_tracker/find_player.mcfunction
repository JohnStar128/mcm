#> May seem pointless to have this function, but these commands need to be
#> run atomically so that the result of dist isn't overwritten for the last murderer
function mcm:math/dist
title @s actionbar {"translate":"mcm.item.player_tracker.subtitle","bold":false,"italic":false,"color":"white","with":[{"score": {"name": "$out", "objective": "temp"},"color":"gold"}]}
