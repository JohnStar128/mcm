#> Remove voted tag
tag @a remove Voted
scoreboard players reset @a mapvote
scoreboard players reset $selectedMap CmdData

#> Kill potential old entities
kill @e[tag=MapVote]

#> Summon mapvote markers
summon marker 0 0 0 {Tags:["MapVote","Library"]}
summon marker 0 0 0 {Tags:["MapVote","Airship"]}
summon marker 0 0 0 {Tags:["MapVote","Vineyard"]}
scoreboard players set @e[tag=Library] MapValues 1
scoreboard players set @e[tag=Airship] MapValues 2
scoreboard players set @e[tag=Vineyard] MapValues 3
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

#> Set the pre-game start countdown to 10 seconds
scoreboard players set $startcountdown CmdData 200