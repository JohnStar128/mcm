#> Handle de-autoqueueing players
tellraw @s ["", {"text":"You will no longer automatically join every game","color":"red"}]
tag @s remove autoqueue

item replace entity @s weapon with warped_fungus_on_a_stick{CustomModelData:1234,NoDrop:1b,display:{Name:'[{"text":"Enable AutoQueue","italic":false,"color":"green"}]'}}
playsound minecraft:entity.arrow.hit_player hostile @s ~ ~ ~ 1 0 0

function mcm:lobby/dequeue
scoreboard players reset @s deferred_queue

#> 3 second delay on changing autoqueue status
scoreboard players set @s autoqueue_delay 60