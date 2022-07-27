#>Handle autoqueueing players
tellraw @s ["", {"text":"You will now automatically join every game","color":"green"}]
tag @s add autoqueue

playsound minecraft:entity.arrow.hit_player hostile @s ~ ~ ~ 1 0 0

execute if score $gamestate CmdData matches 0 run function mcm:lobby/queue
execute unless score $gamestate CmdData matches 0 run scoreboard players set @s deferred_queue 1

#scoreboard players reset @s autoqueue