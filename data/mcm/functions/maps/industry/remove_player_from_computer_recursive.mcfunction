#> Base case
execute store result score $temp math run data get entity @e[type=marker,tag=forklifttest,limit=1,sort=nearest] data.n
execute store result score $idx temp run data get storage mcm:industry computer_player_idx
scoreboard players operation $temp math -= $idx temp
execute if score $temp math matches 0 run return 1

#> If they match a UUID in the list, remove and return
$execute store result score $tempuuid playerUUID run data get entity @e[type=marker,tag=forklifttest,limit=1,sort=nearest] data.players[$(computer_player_idx)]
$execute if predicate mcm:matches_uuid run data remove entity @e[type=marker,tag=forklifttest,limit=1,sort=nearest] data.players[$(computer_player_idx)]
#> Update length
execute if predicate mcm:matches_uuid store result score $temp math run data get entity @e[type=marker,tag=forklifttest,limit=1,sort=nearest] data.n
execute if predicate mcm:matches_uuid run scoreboard players remove $temp math 1
execute if predicate mcm:matches_uuid store result entity @e[type=marker,tag=forklifttest,limit=1,sort=nearest] data.n int 1 run scoreboard players get $temp math
execute if predicate mcm:matches_uuid run return 0

#> Recurse
scoreboard players add $idx temp 1
execute store result storage mcm:industry computer_player_idx int 1 run scoreboard players get $idx temp
return run function mcm:maps/industry/remove_player_from_computer_recursive with storage mcm:industry
