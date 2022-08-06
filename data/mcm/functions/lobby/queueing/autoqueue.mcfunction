#>Handle autoqueueing players
tellraw @s ["", {"text":"You will now automatically join every game","color":"green"}]
tag @s add autoqueue

execute unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1235}}]}] run item replace entity @s weapon with warped_fungus_on_a_stick{CustomModelData:1235,NoDrop:1b,display:{Name:'[{"text":"Disable AutoQueue","italic":false,"color":"red"}]'}}
playsound minecraft:entity.arrow.hit_player hostile @s ~ ~ ~ 1 0 0

execute if score $gamestate CmdData matches 0 if entity @s[tag=!queued] run function mcm:lobby/queueing/try_queue
execute unless score $gamestate CmdData matches 0 run scoreboard players set @s deferred_queue 1

#> 3 second delay on changing autoqueue status
scoreboard players set @s autoqueue_delay 60