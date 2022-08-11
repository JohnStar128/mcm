#>Handle autoqueueing players
tellraw @s ["", {"text":"You will now automatically join every game","color":"green"}]
tag @s add autoqueue

execute unless entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Autoqueue:1b}}] run item modify entity @s weapon.mainhand mcm:autoqueue
playsound minecraft:entity.arrow.hit_player hostile @s ~ ~ ~ 1 0 0

execute if score $gamestate CmdData matches 0 if entity @s[tag=!queued] run function mcm:lobby/queueing/try_queue
execute unless score $gamestate CmdData matches 0 run scoreboard players set @s deferred_queue 1

#> 3 second delay on changing autoqueue status
scoreboard players set @s autoqueue_delay 60