scoreboard players add $countSec CmdData 1
scoreboard players enable @a mapvote

#> Start the countdown if someone has voted
execute if score $countSec CmdData matches 20.. if entity @a[tag=Voted] run function mcm:lobby/voting/countdown

#> Bossbar
bossbar set lobbybar players @a
bossbar set lobbybar name {"translate":"mcm.lobby.voteformap","color":"gold", "with":[ {"translate":"mcm.lobby.voteformap.time", "color":"gray", "with":[ {"score":{"name":"$countdown","objective":"CmdData"},"bold":true,"color":"yellow"} ] } ]}
execute store result bossbar lobbybar value run scoreboard players get $countdown CmdData

advancement revoke @a[advancements={mcm:lobby/start=true}] only mcm:lobby/start