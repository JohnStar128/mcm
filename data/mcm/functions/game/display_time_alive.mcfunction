#> needs @s pre-specified

#> seconds = time alive / ticks per second % seconds per minute
scoreboard players operation $temp math = @s time_alive
scoreboard players operation $temp math /= $twenty math
execute store result score $sec math run scoreboard players operation $temp math %= $sixty math
#> seconds = time alive / ticks per second / seconds per minute
scoreboard players operation $temp math = @s time_alive
scoreboard players operation $temp math /= $twenty math
execute store result score $min math run scoreboard players operation $temp math /= $sixty math

#> Print time

execute if score $sec math < $10 math run tellraw @a [{"text":"| ","color":"gray","bold":true}, {"translate":"mcm.game.stats.time","color":"gold","bold":false, "with":[{"selector":"@s","color":"green"}, {"translate":"mcm.time.minsec","color":"gold","with":[ {"score":{"objective":"math", "name":"$min"}, "color":"gold"}, {"translate":"mcm.time.leading.0", "color":"gold", "with":[{"score":{"objective":"math", "name":"$sec"}, "color":"gold"}]}  ] } ]}]
execute if score $sec math >= $10 math run tellraw @a [{"text":"| ","color":"gray","bold":true}, {"translate":"mcm.game.stats.time","color":"gold","bold":false, "with":[{"selector":"@s","color":"green"}, {"translate":"mcm.time.minsec","color":"gold","with":[ {"score":{"objective":"math", "name":"$min"}, "color":"gold"}, {"score":{"objective":"math", "name":"$sec"}, "color":"gold"} ] } ]}]
