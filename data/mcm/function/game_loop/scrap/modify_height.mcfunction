execute store result score $scrapY vars run data get entity @s Pos[1]
scoreboard players add $scrapY vars 3

execute store result storage mcm:args scrapY int 1 run scoreboard players get $scrapY vars

scoreboard players reset $scrapY vars 