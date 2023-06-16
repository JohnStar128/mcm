
tag @e[type=text_display,tag=instruction] add remove

execute at @e[type=text_display,tag=instruction] run summon text_display ~ ~ ~ {Tags:["instruction"]}

execute as @e[type=text_display,tag=instruction] at @s run data modify entity @e[type=text_display,tag=instruction,tag=!remove,distance=..1,limit=1] text set from entity @s text
execute as @e[type=text_display,tag=instruction] at @s run data modify entity @e[type=text_display,tag=instruction,tag=!remove,distance=..1,limit=1] Rotation set from entity @s Rotation
execute as @e[type=text_display,tag=instruction] at @s run data modify entity @e[type=text_display,tag=instruction,tag=!remove,distance=..1,limit=1] billboard set from entity @s billboard

kill @e[type=text_display,tag=instruction,tag=remove]

kill @e[type=text_display,tag=VoteDisplay]

summon text_display 26.25 5.2 84.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"random"},"color":"#FFE700"}]',billboard:"center",Tags:["map_random","VoteDisplay","MapVoteEntity"]}
summon text_display 27.25 5.2 90.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map1"},"color":"#FFE700"}]',billboard:"center",Tags:["map1","VoteDisplay","MapVoteEntity"]}
summon text_display 27.25 5.2 95.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map2"},"color":"#FFE700"}]',billboard:"center",Tags:["map2","VoteDisplay","MapVoteEntity"]}
summon text_display 27.25 5.2 100.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map3"},"color":"#FFE700"}]',billboard:"center",Tags:["map3","VoteDisplay","MapVoteEntity"]}
summon text_display 27.25 5.2 106.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map4"},"color":"#FFE700"}]',billboard:"center",Tags:["map4","VoteDisplay","MapVoteEntity"]}
summon text_display 27.25 5.2 111.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map5"},"color":"#FFE700"}]',billboard:"center",Tags:["map5","VoteDisplay","MapVoteEntity"]}
summon text_display 27.25 5.2 116.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map6"},"color":"#FFE700"}]',billboard:"center",Tags:["map6","VoteDisplay","MapVoteEntity"]}

