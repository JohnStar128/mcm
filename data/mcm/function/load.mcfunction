
#> Make sure 0,0 and spawn are loaded, this is where all the ✨ magic ✨ happens
setworldspawn -1 1 69
forceload add -64 16 47 184
forceload add 0 0
spawnpoint @a -1 1 69

#> Prevent villagers from picking up trades
execute as @e[type=villager] run data modify entity @s Offers.Recipes set value []
# #> Respawn villagers if they're dead
# schedule function mcm:respawn_entities 1s

#> Generate a game ID to force anyone who logs in to be reset to a default state
kill @e[tag=gameID]
summon marker 0 100 0 {Tags:["gameID"]}
execute store result score $gameID vars run data get entity @e[tag=gameID,limit=1,sort=nearest] UUID[0]
scoreboard players operation @a gameID = $gameID vars

# #> Refresh lobby lectern book
# item modify block -1 -1 79 container.0 mcm:refresh_book 

# Very first load only!!
execute unless data storage mcm:game_state finished_init run data merge storage mcm:game_state {state:{current_stage:"init"}}
