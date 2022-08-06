#> Dequeue when a player leaves the theater
scoreboard players remove $queued CmdData 1
# this message uses maxplayers which isn't implemented yet
execute if score $gamestate CmdData matches 0 run tellraw @a ["", {"selector":"@s","color":"green"},{"text":" has left the theater!"}, {"text":" (","color":"yellow"}, {"score":{"name":"$queued","objective":"CmdData"},"color":"green"}, {"text":"/","color":"dark_green"}, {"score":{"name":"$maxplayers","objective":"GameRules"},"color":"green"}, {"text":")","color":"yellow"}]
#execute if score $gamestate CmdData matches 0 run tellraw @a ["", {"selector":"@s","color":"green"},{"text":" has left the theater!"}, {"text":" (","color":"yellow"}, {"score":{"name":"$queued","objective":"CmdData"},"color":"green"}, {"text":")","color":"yellow"}]
function mcm:cosmetics/change_hat

tag @s remove queued