
# Move map scores to interaction entities
scoreboard players operation @e[type=interaction,tag=map_random] vote_count = random vote_count
scoreboard players operation @e[type=interaction,tag=map1] vote_count = map1 vote_count
scoreboard players operation @e[type=interaction,tag=map2] vote_count = map2 vote_count
scoreboard players operation @e[type=interaction,tag=map3] vote_count = map3 vote_count
scoreboard players operation @e[type=interaction,tag=map4] vote_count = map4 vote_count
scoreboard players operation @e[type=interaction,tag=map5] vote_count = map5 vote_count
scoreboard players operation @e[type=interaction,tag=map6] vote_count = map6 vote_count

# Calculate max score
scoreboard players set max_votes vote_count 0
scoreboard players operation max_votes vote_count > @e[type=interaction,tag=vote_counter] vote_count

# Mark all maps that have the max score
execute as @e[type=interaction,tag=vote_counter] if score @s vote_count = max_votes vote_count run tag @s add selected

# Add random map to the pool if random is voted for
execute as @e[type=interaction,tag=vote_counter,tag=map_random,tag=selected] run tag @e[type=interaction,tag=vote_counter,tag=!disabled,tag=!selected,limit=1,sort=random] add selected
tag @e[type=interaction,tag=vote_counter,tag=map_random] remove selected

execute as @e[type=marker,tag=MapVote] if score @s MapValues = @e[type=interaction,tag=selected,tag=vote_counter,limit=1] vote_map_id run tag @s add map_selected


tag @e[type=interaction,tag=vote_counter,tag=selected] remove selected

# Chose a map
tag @e[type=marker,tag=map_selected,limit=1,sort=random] add SelectedMap

tag @e[type=marker,tag=map_selected,tag=MapVote] remove map_selected

# Set map for map based functionality to work
scoreboard players operation $selectedMap CmdData = @e[type=marker,limit=1,tag=SelectedMap] MapValues

# Fill in map border
execute as @e[type=interaction,tag=vote_counter] if score @s vote_map_id = @e[type=marker,tag=SelectedMap,limit=1] MapValues at @s run fill ~-1 ~-1 ~-2 ~-1 ~3 ~1 warped_trapdoor[open=true,facing=west] replace crimson_trapdoor