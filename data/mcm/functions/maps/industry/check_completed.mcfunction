#> Base case
execute store result score $temp math run data get entity @e[type=marker,tag=active_computer,limit=1] data.n
execute store result score $idx temp run data get storage mcm:industry computer_player_idx
scoreboard players operation $temp math -= $idx temp
execute if score $temp math matches 0 run return 1

#> If they match a UUID in the list, return failure
$execute store result score $tempuuid playerUUID run data get entity @e[type=marker,tag=active_computer,limit=1] data.players[$(computer_player_idx)]
execute as @s[predicate=mcm:matches_uuid] run return 0

#> Recurse
scoreboard players add $idx temp 1
execute store result storage mcm:industry computer_player_idx int 1 run scoreboard players get $idx temp
return run function mcm:maps/industry/check_completed with storage mcm:industry
