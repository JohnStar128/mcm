#> Handle de-autoqueueing players
tellraw @s ["", {"text":"You will no longer automatically join every game","color":"red"}]
tag @s remove autoqueue

playsound minecraft:entity.arrow.hit_player hostile @s ~ ~ ~ 1 0 0

function mcm:lobby/dequeue
scoreboard players reset @s deferred_queue

scoreboard players reset @s autoqueue