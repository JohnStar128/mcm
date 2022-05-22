#> TEMPORARY COMMANDS REMOVE LATER
# set map to library
scoreboard players set $selectedMap CmdData 1

# set $gamestate to 0 (pregame, post vote)
scoreboard players set $gamestate CmdData 0

# teleport
tp @a 0 -59 0

# clear old tags
tag @a remove murderer
tag @a remove innocent

# remove death related scores
scoreboard players reset @a dead
scoreboard players set $gametimer CmdData 0
