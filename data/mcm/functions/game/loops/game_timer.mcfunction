scoreboard players remove $gametimer CmdData 1

scoreboard players operation $game_minutes CmdData = $gametimer CmdData
scoreboard players operation $game_minutes CmdData /= $1200 math
scoreboard players operation $game_seconds CmdData = $gametimer CmdData
scoreboard players operation $game_seconds CmdData /= $20 math

execute if score $gametimer CmdData matches 12000 run tellraw @a ["\n",{"translate":"mcm.game.timer.minutes","color":"dark_green", "with":[{"score":{"name":"$game_minutes","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 10800 run tellraw @a ["\n",{"translate":"mcm.game.timer.minutes","color":"dark_green", "with":[{"score":{"name":"$game_minutes","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 9600 run tellraw @a ["\n",{"translate":"mcm.game.timer.minutes","color":"dark_green", "with":[{"score":{"name":"$game_minutes","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 8400 run tellraw @a ["\n",{"translate":"mcm.game.timer.minutes","color":"dark_green", "with":[{"score":{"name":"$game_minutes","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 7200 run tellraw @a ["\n",{"translate":"mcm.game.timer.minutes","color":"dark_green", "with":[{"score":{"name":"$game_minutes","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 6000 run tellraw @a ["\n",{"translate":"mcm.game.timer.minutes","color":"dark_green", "with":[{"score":{"name":"$game_minutes","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 4800 run tellraw @a ["\n",{"translate":"mcm.game.timer.minutes","color":"dark_green", "with":[{"score":{"name":"$game_minutes","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 3600 run tellraw @a ["\n",{"translate":"mcm.game.timer.minutes","color":"dark_green", "with":[{"score":{"name":"$game_minutes","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 2400 run tellraw @a ["\n",{"translate":"mcm.game.timer.minutes","color":"dark_green", "with":[{"score":{"name":"$game_minutes","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 1200 run tellraw @a ["\n",{"translate":"mcm.game.timer.minutes","color":"dark_green", "with":[{"score":{"name":"$game_minutes","objective":"CmdData"},"color":"dark_green"}]},"\n"]

execute if score $gametimer CmdData matches 600 run tellraw @a ["\n",{"translate":"mcm.game.timer.seconds","color":"dark_green", "with":[{"score":{"name":"$game_seconds","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 200 run tellraw @a ["\n",{"translate":"mcm.game.timer.seconds","color":"dark_green", "with":[{"score":{"name":"$game_seconds","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 100 run tellraw @a ["\n",{"translate":"mcm.game.timer.seconds","color":"dark_green", "with":[{"score":{"name":"$game_seconds","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 80 run tellraw @a ["\n",{"translate":"mcm.game.timer.seconds","color":"dark_green", "with":[{"score":{"name":"$game_seconds","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 60 run tellraw @a ["\n",{"translate":"mcm.game.timer.seconds","color":"dark_green", "with":[{"score":{"name":"$game_seconds","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 40 run tellraw @a ["\n",{"translate":"mcm.game.timer.seconds","color":"dark_green", "with":[{"score":{"name":"$game_seconds","objective":"CmdData"},"color":"dark_green"}]},"\n"]
execute if score $gametimer CmdData matches 20 run tellraw @a ["\n",{"translate":"mcm.game.timer.second","color":"dark_green", "with":[{"score":{"name":"$game_seconds","objective":"CmdData"},"color":"dark_green"}]},"\n"]
# Not sure if this is needed
#execute if score $gametimer CmdData matches 0 run tellraw @a ["\n",{"translate":"mcm.game.innocent.win","color":"green"},"\n"]
execute if score $gametimer CmdData matches 0 run scoreboard players set $innocentWin CmdData 1
execute if score $gametimer CmdData matches 0 run scoreboard players set $gamestate CmdData 2
