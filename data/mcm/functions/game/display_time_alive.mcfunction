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
execute if score $sec math < $ten math run tellraw @a ["", {"text":"| ","color":"gray","bold":true}, {"selector":"@s","color":"green"}, {"text":" - time: ", "color":"gold"}, {"score":{"objective":"math", "name":"$min"}, "color":"gold"}, {"text":":0", "color":"gold"}, {"score":{"objective":"math", "name":"$sec"}, "color":"gold"}]
execute if score $sec math >= $ten math run tellraw @a ["", {"text":"| ","color":"gray","bold":true}, {"selector":"@s","color":"green"}, {"text":" - time: ", "color":"gold"}, {"score":{"objective":"math", "name":"$min"}, "color":"gold"}, {"text":":", "color":"gold"}, {"score":{"objective":"math", "name":"$sec"}, "color":"gold"}]
