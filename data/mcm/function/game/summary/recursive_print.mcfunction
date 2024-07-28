
# format timestamp 
#> seconds = time alive / ticks per second % seconds per minute
$scoreboard players set $temp math $(timestamp) 
scoreboard players operation $temp math /= $twenty math
execute store result score $sec math run scoreboard players operation $temp math %= $sixty math
#> minutes = time alive / ticks per second / seconds per minute
$scoreboard players set $temp math $(timestamp)
scoreboard players operation $temp math /= $twenty math
execute store result score $min math run scoreboard players operation $temp math /= $sixty math

$scoreboard players set $event_type temp $(event_type)

#> Print time
$execute if score $event_type temp matches 1 if score $sec math < $10 math run data merge storage mcm:game_summary {print_temp: '[{"text":"| ","color":"gray","bold":true}, {"score":{"objective":"math", "name":"$min"},\
        "color":"gold", "bold":false}, {"text":":", "color":"gold", "bold":false}, {"translate":"mcm.time.leading.0", "color":"gold", "bold":false,\
        "with":[{"score":{"objective":"math", "name":"$sec"}, "color":"gold"}]}, {"text":" - ","color":"gray","bold":true},\
        {"translate":"$(extra_text)", "color":"$(extra_color)", "bold":false, "with":[{"text":"$(player_text)", "color":"$(player_color)", "bold":false}]}]'}
$execute if score $event_type temp matches 1 if score $sec math >= $10 math run data merge storage mcm:game_summary {print_temp: '[{"text":"| ","color":"gray","bold":true}, {"score":{"objective":"math", "name":"$min"},\
        "color":"gold", "bold":false}, {"text":":", "color":"gold", "bold":false}, {"score":{"objective":"math", "name":"$sec"},\
        "color":"gold", "bold":false}, {"text":" - ","color":"gray","bold":true}, \
        {"translate":"$(extra_text)", "color":"$(extra_color)", "bold":false, "with":[{"text":"$(player_text)", "color":"$(player_color)", "bold":false}]}]'}

$execute if score $event_type temp matches 2..3 if score $sec math < $10 math run data merge storage mcm:game_summary {print_temp: \
        '[{"text":"| ","color":"gray","bold":true},\
        {"score":{"objective":"math", "name":"$min"},\
                "color":"gold", "bold":false},\
        {"text":":", "color":"gold", "bold":false},\
        {"translate":"mcm.time.leading.0", "color":"gold", "bold":false,\
                "with":[{"score":{"objective":"math", "name":"$sec"}, "color":"gold"}]},\
        {"text":" - ","color":"gray","bold":true},\
        {"translate":"$(extra_text)", "color":"$(extra_color)", "bold":false,\
                "with":[{"text":"$(player_text)", "color":"$(player_color)", "bold":false},{"text":"$(player2_text)", "color":"$(player2_color)", "bold":false}]\
        }]'}
        
$execute if score $event_type temp matches 2..3 if score $sec math >= $10 math run data merge storage mcm:game_summary {print_temp: '[{"text":"| ","color":"gray","bold":true}, {"score":{"objective":"math", "name":"$min"},\
        "color":"gold", "bold":false}, {"text":":", "color":"gold", "bold":false}, {"score":{"objective":"math", "name":"$sec"},\
        "color":"gold", "bold":false}, {"text":" - ","color":"gray","bold":true}, {"translate":"$(extra_text)", "color":"$(extra_color)", "bold":false, \
                "with":[{"text":"$(player_text)", "color":"$(player_color)", "bold":false},{"text":"$(player2_text)", "color":"$(player2_color)", "bold":false}]}]'}


execute if score $display_type temp matches 0 run function mcm:game/summary/tellraw with storage mcm:game_summary
execute if score $display_type temp matches 1 summon text_display run function mcm:game/summary/text_display with storage mcm:game_summary



# recurse
data remove storage mcm:game_summary temp[0]
execute unless data storage mcm:game_summary temp[0] run return fail
function mcm:game/summary/recursive_print with storage mcm:game_summary temp[0]
