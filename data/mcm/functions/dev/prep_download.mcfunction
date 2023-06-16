#> We keep forgetting this lol
kill @e[type=armor_stand,tag=fakeplayer]
time set 13850
gamerule sendCommandFeedback false

#> Renable maps
tag @e[type=marker,tag=MapVote] remove disabled
#> Shuffle maps so disabled slots don't show
function mcm:dev/shuffle_maps
