#> We keep forgetting this lol
kill @e[type=armor_stand,tag=fakeplayer]
time set 13850
gamerule sendCommandFeedback false

#> Renable maps
tag @e[type=marker,tag=MapVote] remove disabled
#> Shuffle maps so disabled slots don't show
function mcm:dev/shuffle_maps

#> Update version counter to make sure players who update get any new root advancements
scoreboard players add $current_version version 1

#> Remove old credits before download
kill @e[type=text_display,tag=game_summary]

function mcm:dev/reset_loadouts

#> Reset default game rules
function mcm:lobby/options/reset_to_defaults
