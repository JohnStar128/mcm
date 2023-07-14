#> We keep forgetting this lol
kill @e[type=armor_stand,tag=fakeplayer]
time set 13850
gamerule sendCommandFeedback false

#> Renable maps
tag @e[type=marker,tag=MapVote] remove disabled
#> Shuffle maps so disabled slots don't show
function mcm:dev/shuffle_maps

#> kill unreleased map markers via whitelisting ones that are released
execute as @e[type=marker,tag=MapVote] unless entity @s[tag=Random] unless entity @s[tag=Library] unless entity @s[tag=Airship] unless entity @s[tag=Vineyard] unless entity @s[tag=Launchpad] unless entity @s[tag=Cyberpunk] unless entity @s[tag=Riverboat] unless entity @s[tag=Industry] unless entity @s[tag=Train] unless entity @s[tag=Cabin] run kill @s

#> Update version counter to make sure players who update get any new root advancements
scoreboard players add $current_version version 1
