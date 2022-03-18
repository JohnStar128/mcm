#> Remove voted tag
tag @a remove Voted
scoreboard players reset @a mapvote

#> Kill potential old entities
kill @e[tag=MapVote]

#> Summon mapvote markers
summon marker 0 0 0 {Tags:["MapVote","Library"]}
scoreboard players set @e[tag=MapVote] CmdData 0

#> Set countdown to 20 seconds
scoreboard players set $countdown CmdData 20

#> Modify lobby bossbar to display the vote countdown
bossbar add lobbybar ["",{"text":"Vote for a map! ","color":"gold"},{"text":"[","color":"gray"},{"score":{"name":"$countdown","objective":"CmdData"},"bold":true,"color":"yellow"},{"text":"]","color":"gray"}]
bossbar set lobbybar max 20
bossbar set lobbybar value 20
bossbar set lobbybar color yellow
bossbar set lobbybar style notched_20

#> Change gamestate to -1 (Map vote status)
scoreboard players set $gamestate CmdData -1