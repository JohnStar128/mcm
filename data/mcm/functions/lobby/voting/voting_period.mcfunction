scoreboard players add $countSec CmdData 1
scoreboard players enable @a mapvote

#> Villager right click detection
execute as @a[advancements={mcm:map_votes/map1=true}] at @s run trigger mapvote set 1
execute as @a[advancements={mcm:map_votes/map1=true}] at @s run advancement revoke @s only mcm:map_votes/map1

execute as @a[advancements={mcm:map_votes/map2=true}] at @s run trigger mapvote set 2
execute as @a[advancements={mcm:map_votes/map2=true}] at @s run advancement revoke @s only mcm:map_votes/map2

execute as @a[advancements={mcm:map_votes/map3=true}] at @s run trigger mapvote set 3
execute as @a[advancements={mcm:map_votes/map3=true}] at @s run advancement revoke @s only mcm:map_votes/map3

execute as @a[advancements={mcm:map_votes/map4=true}] at @s run trigger mapvote set 4
execute as @a[advancements={mcm:map_votes/map4=true}] at @s run advancement revoke @s only mcm:map_votes/map4

execute as @a[advancements={mcm:map_votes/map_random=true}] at @s run trigger mapvote set -1
execute as @a[advancements={mcm:map_votes/map_random=true}] at @s run advancement revoke @s only mcm:map_votes/map_random

#> Voting code
execute as @a[scores={mapvote=1..}] at @s run function mcm:lobby/voting/player_vote
execute as @a[scores={mapvote=-1}] at @s run function mcm:lobby/voting/player_vote

#> Start the countdown if someone has voted
execute if score $countSec CmdData matches 20.. if entity @e[type=marker,tag=MapVote,scores={CmdData=1..}] run function mcm:lobby/voting/countdown

#> Bossbar
bossbar set lobbybar players @a
bossbar set lobbybar name ["",{"text":"Vote for a map! ","color":"gold"},{"text":"[","color":"gray"},{"score":{"name":"$countdown","objective":"CmdData"},"bold":true,"color":"yellow"},{"text":"]","color":"gray"}]
execute store result bossbar lobbybar value run scoreboard players get $countdown CmdData

advancement revoke @a[advancements={mcm:lobby/start=true}] only mcm:lobby/start