# Current count used: 30
execute store result score $sound_markers available_entities if entity @e[type=marker,tag=sound_marker]
execute if score $sound_markers available_entities matches ..29 run summon marker 0 -49 70 {Tags:["available","map_marker","sound_marker"]}
execute if score $sound_markers available_entities matches ..29 run function mcm:util/recursive_sound_markers