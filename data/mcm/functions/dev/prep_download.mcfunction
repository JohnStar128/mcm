#> We keep forgetting this lol
kill @e[type=armor_stand,tag=fakeplayer]
time set 13850
gamerule sendCommandFeedback false

#> Renable maps
tag @e[type=marker,tag=MapVote] remove disabled
#> Shuffle maps so disabled slots don't show
function mcm:dev/shuffle_maps

#> 1.2.xx - remove unreleased map markers
kill @e[type=marker,tag=Gumdrop]

#> Update version counter to make sure players who update get any new root advancements
scoreboard players add $current_version version 1
