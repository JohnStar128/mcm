#>Handle autoqueueing players - the leave clause is to prevent rejoining players getting the message since resource pack hasn't loaded yet
execute unless score @s leave matches 1.. run tellraw @s {"translate":"mcm.lobby.autoqueued","color":"green"}
tag @s add autoqueue

execute if entity @s[nbt={SelectedItem:{tag:{Autoqueue:1b}}}] run item modify entity @s weapon.mainhand mcm:autoqueue
playsound minecraft:entity.arrow.hit_player hostile @s ~ ~ ~ 1 0 0

execute if score $gamestate CmdData matches 0 if entity @s[tag=!queued] run function mcm:lobby/queueing/try_queue
execute unless score $gamestate CmdData matches 0 run scoreboard players set @s deferred_queue 1

#> 3 second delay on changing autoqueue status
scoreboard players set @s autoqueue_delay 60