# Current count used: 20
execute store result $spawn_markers available_entities if entity @e[type=marker,tag=ScrapSpawn]
execute if score $spawn_markers available_entities matches ..19 run summon marker 0 -49 70 {Tags:["available","map_marker","ScrapSpawn"]}
execute if score $spawn_markers available_entities matches ..19 run function mcm:util/recursive_player_spawns