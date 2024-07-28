#> Dequeue when a player leaves the theater
scoreboard players remove $queued CmdData 1
# this message uses maxplayers which isn't implemented yet

execute if score $gamestate CmdData matches 0 run tellraw @a {"translate":"mcm.lobby.dequeued", "with":[ {"selector":"@s","color":"green"}, {"translate":"mcm.lobby.queued.brackets","color":"yellow", "with":[{"translate":"mcm.lobby.queued.ratio","color":"dark_green","with":[{"score":{"name":"$queued","objective":"CmdData"},"color":"green"},{"score":{"name":"$maxplayers","objective":"GameRules"},"color":"green"}]}]} ]}

function mcm:cosmetics/change_cosmetics

tag @s remove queued