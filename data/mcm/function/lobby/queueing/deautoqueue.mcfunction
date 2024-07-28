#> Handle de-autoqueueing players
tellraw @s {"translate":"mcm.lobby.deautoqueue","color":"red"}
tag @s remove autoqueue

execute if items entity @s weapon.mainhand *[custom_data~{Autoqueue:1b}] run item modify entity @s weapon.mainhand mcm:deautoqueue
execute if items entity @s weapon.offhand *[custom_data~{Autoqueue:1b}] run item modify entity @s weapon.offhand mcm:deautoqueue
playsound minecraft:entity.arrow.hit_player hostile @s ~ ~ ~ 1 0 0

execute as @s[predicate=!mcm:bounding_boxes/queue_area] run function mcm:lobby/queueing/dequeue
scoreboard players reset @s deferred_queue

#> 3 second delay on changing autoqueue status
scoreboard players set @s autoqueue_delay 60