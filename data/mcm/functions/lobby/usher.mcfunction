#> Don't start if map isn't selected
execute if score $gamestate CmdData matches -1 run tellraw @s ["\n", {"text":"Usher: ","color":"dark_green"},{"text":"We can't start if we don't know what we're watching!", "color":"green"}, "\n"]
execute if score $gamestate CmdData matches -1 run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

#> Don't start if not enough players are queued
execute if score $gamestate CmdData matches 0 if score $queued CmdData matches ..1 run tellraw @s ["\n", {"text":"Usher: ","color":"dark_green"},{"text":"Not enough players ready to start the movie!","color":"green"}, "\n"]
execute if score $gamestate CmdData matches 0 if score $queued CmdData matches ..1 at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0
execute if score $gamestate CmdData matches 0 if score $queued CmdData matches ..1 unless score $startcountdown CmdData matches ..200 run scoreboard players set $start CmdData 0

execute if score $gamestate CmdData matches 0 if score $queued CmdData matches 2.. run function mcm:lobby/start