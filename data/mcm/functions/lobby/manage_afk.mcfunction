#> re-autoqueue them
execute as @s[tag=autoqueue] at @s run function mcm:lobby/queueing/autoqueue

tag @s remove afk
