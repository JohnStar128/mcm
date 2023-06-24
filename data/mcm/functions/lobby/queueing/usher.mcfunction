#> Don't start if map isn't selected
execute if score $gamestate CmdData matches -1 run tellraw @s ["\n", {"translate":"mcm.lobby.usher.say","color":"dark_green", "with":[{"translate":"mcm.lobby.usher.no.movie","color":"green"}]}, "\n"]
execute if score $gamestate CmdData matches -1 run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0

#> Don't start if not enough players are queued
execute if score $gamestate CmdData matches 0 if score $queued CmdData matches ..3 run tellraw @s ["\n", {"translate":"mcm.lobby.usher.say","color":"dark_green", "with":[{"translate":"mcm.lobby.usher.not.enough.players","color":"green"}]}, "\n"]
execute if score $gamestate CmdData matches 0 if score $queued CmdData matches ..3 at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0
execute if score $gamestate CmdData matches 0 if score $queued CmdData matches ..3 unless score $startcountdown CmdData matches ..200 run scoreboard players set $start CmdData 0

execute if score $gamestate CmdData matches 0 if score $queued CmdData matches 4.. run function mcm:lobby/start