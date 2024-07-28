#> Find computer
scoreboard players operation $tempuuid playerUUID = @s forklift_interact
execute as @e[type=interaction,tag=forklifttest,predicate=mcm:matches_uuid] at @s as @e[type=marker,tag=forklifttest,limit=1,sort=nearest] run tag @s add active_computer

#> Add player's UUID
data modify entity @e[type=marker,tag=active_computer,limit=1] data.players append from entity @s UUID[0]

#> Update length
execute store result score $temp math run data get entity @e[type=marker,tag=active_computer,limit=1] data.n
scoreboard players add $temp math 1
execute store result entity @e[type=marker,tag=active_computer,limit=1] data.n int 1 run scoreboard players get $temp math

tag @e[type=marker,tag=active_computer] remove active_computer
scoreboard players reset @s forklift_interact
