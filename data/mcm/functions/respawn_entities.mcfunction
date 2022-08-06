#> Resummon required (persistent) entities if they don't exist
function mcm:util/recursive_player_spawns
function mcm:util/recursive_scrap_spawns
function mcm:util/recursive_sound_markers
execute store result score $map_vote_entities available_entities if entity @e[tag=MapVoteEntity]
execute unless score $map_vote_entities available_entities matches 20 run function mcm:util/respawn_map_vote_entities
execute unless entity @e[type=marker,tag=SpectatorSpawn] run summon marker 0 -49 70 {Tags:["available","map_marker","SpectatorSpawn"]}
execute unless entity @e[type=marker,tag=JohnSpawn] run summon marker 0 -49 70 {Tags:["available","map_marker","JohnSpawn"]}
execute unless entity @e[type=marker,tag=BlockySpawn] run summon marker 0 -49 70 {Tags:["available","map_marker","BlockySpawn"]}