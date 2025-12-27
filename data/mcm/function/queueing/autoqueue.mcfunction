# Executes when a player clicks their (de)autoqueue ticket

execute store result score $autoqueue vars if entity @s[tag=autoqueue]

execute if score $autoqueue vars matches 1 run data modify storage mcm:args components set from storage mcm:items deautoqueue.components
execute if score $autoqueue vars matches 0 run data modify storage mcm:args components set from storage mcm:items autoqueue.components
execute if items entity @s weapon.mainhand feather[custom_data~{autoqueue:1b}] run data merge storage mcm:args {slot:"weapon.mainhand"}
execute if items entity @s weapon.offhand feather[custom_data~{autoqueue:1b}] run data merge storage mcm:args {slot:"weapon.offhand"}

function mcm:items/modify_slot with storage mcm:args
data remove storage mcm:args components
data remove storage mcm:args slot

execute if score $autoqueue vars matches 0 run tag @s add autoqueue
execute if score $autoqueue vars matches 1 run tag @s remove autoqueue
execute if score $autoqueue vars matches 1 if data storage mcm:game_state {state:{current_stage:"queueing"}} run function mcm:queueing/dequeue

execute if score $autoqueue vars matches 0 run tellraw @s {"translate":"mcm.lobby.autoqueued","color":"green"}
execute if score $autoqueue vars matches 1 run tellraw @s {"translate":"mcm.lobby.deautoqueue","color":"red"}

execute at @s run playsound minecraft:entity.arrow.hit_player hostile @s ~ ~ ~ 1 0 0

advancement revoke @s only mcm:items/autoqueue
scoreboard players reset $autoqueue vars
