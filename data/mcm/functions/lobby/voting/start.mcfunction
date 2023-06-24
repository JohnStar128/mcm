#> Map Ids
#-1: Random
# 1: Library
# 2: Floating Islands (airship)
# 3: Vineyard
# 4: Launch Complex (launchpad)
# 5: Color Filth (cyberpunk)
# 6: Murder on the Mississippi (riverboat)
# 7: Industry
# 8: A Tragedy on the Boreal Express (train)
# 9: Snowed Inn (cabin)
# 10: Gumdrop Plains

#> Set interaction response tag to 1 because apparently you can't vote when it's 0
execute as @e[type=interaction,tag=MapVoteEntity] run data merge entity @s {response:1b}

#> Reset old MapVote entities
execute as @e[type=marker,tag=MapVote] run scoreboard players set @s CmdData 0
#> SelectedMap is what we just played, selected means we were able to vote for it
execute as @e[type=marker,tag=MapVote] run tag @s remove SelectedMap

#> Remove voted tag
tag @a remove Voted
scoreboard players reset @a mapvote
scoreboard players reset $selectedMap CmdData
scoreboard players reset @a vote_position
scoreboard players reset @a vote_map_id

#> Generate a game ID
kill @e[tag=gameID]
summon marker 0 100 0 {Tags:["gameID"]}
execute store result score $gameID CmdData run data get entity @e[tag=gameID,limit=1,sort=nearest] UUID[0]
scoreboard players operation @a gameID = $gameID CmdData

#> Reset lobby poster visual
fill 27 5 88 27 1 117 crimson_trapdoor[open=true,facing=west] replace warped_trapdoor

team join posters @e[tag=MapVoteEntity]

#> Set countdown to 20 seconds
scoreboard players set $countdown CmdData 20

#> Modify lobby bossbar to display the vote countdown
bossbar add lobbybar ""
bossbar set lobbybar name {"translate":"mcm.lobby.voteformap","color":"gold", "with":[ {"translate":"mcm.lobby.voteformap.time", "color":"gray", "with":[ {"score":{"name":"$countdown","objective":"CmdData"},"bold":true,"color":"yellow"} ] } ]}
bossbar set lobbybar max 20
bossbar set lobbybar value 20
bossbar set lobbybar color yellow
bossbar set lobbybar style notched_20

#> Change gamestate to -1 (Map vote status)
scoreboard players set $gamestate CmdData -1

#> Set the pre-game start countdown to 10 seconds
scoreboard players set $startcountdown CmdData 200

#> Reset Counts
scoreboard players set random vote_count 0
scoreboard players set map1 vote_count 0
scoreboard players set map2 vote_count 0
scoreboard players set map3 vote_count 0
scoreboard players set map4 vote_count 0
scoreboard players set map5 vote_count 0
scoreboard players set map6 vote_count 0

function mcm:lobby/voting/set_maps