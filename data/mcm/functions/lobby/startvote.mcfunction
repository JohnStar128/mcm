#> Remove voted tag
tag @a remove Voted
scoreboard players reset @a mapvote
scoreboard players reset $selectedMap CmdData

#> Kill potential old entities
kill @e[type=marker,tag=MapVote]

#> Reset lobby poster visual
fill 27 5 88 27 1 117 crimson_trapdoor[open=true,facing=west] replace warped_trapdoor

#> Summon mapvote markers
summon marker 0 0 0 {Tags:["MapVote","Library"]}
summon marker 0 0 0 {Tags:["MapVote","Airship"]}
summon marker 0 0 0 {Tags:["MapVote","Vineyard"]}
summon marker 0 0 0 {Tags:["MapVote","Launchpad"]}
summon marker 0 0 0 {Tags:["MapVote","Random"]}
scoreboard players set @e[type=marker,tag=Library] MapValues 1
scoreboard players set @e[type=marker,tag=Airship] MapValues 2
scoreboard players set @e[type=marker,tag=Vineyard] MapValues 3
scoreboard players set @e[type=marker,tag=Launchpad] MapValues 4
scoreboard players set @e[type=marker,tag=Random] MapValues -1
scoreboard players set @e[type=marker,tag=MapVote] CmdData 0

summon villager 27.5 2 89.5 {Invisible:1b,Invulnerable:1b,Tags:["map1","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 90.0 {Invisible:1b,Invulnerable:1b,Tags:["map1","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 90.5 {Invisible:1b,Invulnerable:1b,Tags:["map1","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}

summon villager 27.5 2 94.5 {Invisible:1b,Invulnerable:1b,Tags:["map2","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 95.0 {Invisible:1b,Invulnerable:1b,Tags:["map2","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 95.5 {Invisible:1b,Invulnerable:1b,Tags:["map2","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}

summon villager 27.5 2 99.5 {Invisible:1b,Invulnerable:1b,Tags:["map3","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 100.0 {Invisible:1b,Invulnerable:1b,Tags:["map3","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 100.5 {Invisible:1b,Invulnerable:1b,Tags:["map3","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}

summon villager 27.5 2 105.5 {Invisible:1b,Invulnerable:1b,Tags:["map4","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 106.0 {Invisible:1b,Invulnerable:1b,Tags:["map4","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 106.5 {Invisible:1b,Invulnerable:1b,Tags:["map4","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}

summon villager 27.5 2 115.5 {Invisible:1b,Invulnerable:1b,Tags:["map_random","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 116.0 {Invisible:1b,Invulnerable:1b,Tags:["map_random","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 116.5 {Invisible:1b,Invulnerable:1b,Tags:["map_random","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}

summon armor_stand 27.5 5 90.0 {Invisible:1b,Marker:1b,Tags:["map1","VoteDisplay","MapVoteEntity"],CustomName:"{\"text\":\"Current votes: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"CmdData\"}}]}",CustomNameVisible:1b}
summon armor_stand 27.5 5 95.0 {Invisible:1b,Marker:1b,Tags:["map2","VoteDisplay","MapVoteEntity"],CustomName:"{\"text\":\"Current votes: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"CmdData\"}}]}",CustomNameVisible:1b}
summon armor_stand 27.5 5 100.0 {Invisible:1b,Marker:1b,Tags:["map3","VoteDisplay","MapVoteEntity"],CustomName:"{\"text\":\"Current votes: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"CmdData\"}}]}",CustomNameVisible:1b}
summon armor_stand 27.5 5 106.0 {Invisible:1b,Marker:1b,Tags:["map4","VoteDisplay","MapVoteEntity"],CustomName:"{\"text\":\"Current votes: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"CmdData\"}}]}",CustomNameVisible:1b}
summon armor_stand 27.5 5 116.0 {Invisible:1b,Marker:1b,Tags:["map_random","VoteDisplay","MapVoteEntity"],CustomName:"{\"text\":\"Current votes: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"CmdData\"}}]}",CustomNameVisible:1b}

team join posters @e[tag=MapVoteEntity]

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

advancement revoke @a[advancements={mcm:lobby/start=true}] only mcm:lobby/start