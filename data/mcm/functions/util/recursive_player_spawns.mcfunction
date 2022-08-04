# Current count used: 50
execute store result score $spawn_markers available_entities if entity @e[type=marker,tag=PlayerSpawn]
execute if score $spawn_markers available_entities matches ..49 run summon marker 0 -49 70 {Tags:["available","map_marker","PlayerSpawn"]}
execute if score $spawn_markers available_entities matches ..49 run function mcm:util/recursive_player_spawns