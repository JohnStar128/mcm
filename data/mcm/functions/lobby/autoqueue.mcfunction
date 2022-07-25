#>Handle autoqueueing players
tellraw @s ["", {"text":"You will now automatically join every game","color":"green"}]
tag @s add autoqueue

item replace entity @s hotbar.8 with warped_fungus_on_a_stick{CustomModelData:1235,NoDrop:1b,display:{Name:'[{"text":"Disable AutoQueue","italic":false,"color":"red"}]'}}
playsound minecraft:entity.arrow.hit_player hostile @s ~ ~ ~ 1 0 0

execute if score $gamestate CmdData matches 0 run function mcm:lobby/queue
execute unless score $gamestate CmdData matches 0 run scoreboard players set @s deferred_queue 1

scoreboard players reset @s autoqueue