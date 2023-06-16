#> Sets the maps in the frames at the start of voting
#> Can also be used to shuffle maps before voting starts via mcm:dev/shuffle_maps
#> Don't use this function to shuffle maps


execute as @e[type=interaction,tag=MapVoteEntity] run data merge entity @s {response:1b}
tag @e[type=text_display,tag=MapVoteEntity] remove disabled
tag @e[type=interaction,tag=MapVoteEntity] remove disabled

execute as @e[type=marker,tag=MapVote,tag=selected] run tag @s remove selected

scoreboard players reset @e[type=interaction,tag=MapVoteEntity] vote_map_id
scoreboard players reset @e[type=interaction,tag=MapVoteEntity] vote_position

# -2 for disabled
scoreboard players set @e[type=interaction,tag=MapVoteEntity] vote_map_id -2

#> MapVote markers moved to be always in the world
#> TODO: code for setting item frame maps
execute positioned 28 2 90.0 as @e[type=interaction,limit=1,sort=nearest] run scoreboard players set @s vote_position 1
execute positioned 28 2 90.0 as @e[type=marker,tag=!selected,tag=MapVote,tag=!Random,tag=!disabled,limit=1,sort=random] run function mcm:lobby/voting/map_position_id

execute positioned 28 2 95.0 as @e[type=interaction,limit=1,sort=nearest] run scoreboard players set @s vote_position 2
execute positioned 28 2 95.0 as @e[type=marker,tag=!selected,tag=MapVote,tag=!Random,tag=!disabled,limit=1,sort=random] run function mcm:lobby/voting/map_position_id

execute positioned 28 2 100.0 as @e[type=interaction,limit=1,sort=nearest] run scoreboard players set @s vote_position 3
execute positioned 28 2 100.0 as @e[type=marker,tag=!selected,tag=MapVote,tag=!Random,tag=!disabled,limit=1,sort=random] run function mcm:lobby/voting/map_position_id

execute positioned 28 2 106.0 as @e[type=interaction,limit=1,sort=nearest] run scoreboard players set @s vote_position 4
execute positioned 28 2 106.0 as @e[type=marker,tag=!selected,tag=MapVote,tag=!Random,tag=!disabled,limit=1,sort=random] run function mcm:lobby/voting/map_position_id

execute positioned 28 2 111.0 as @e[type=interaction,limit=1,sort=nearest] run scoreboard players set @s vote_position 5
execute positioned 28 2 111.0 as @e[type=marker,tag=!selected,tag=MapVote,tag=!Random,tag=!disabled,limit=1,sort=random] run function mcm:lobby/voting/map_position_id

execute positioned 28 2 116.0 as @e[type=interaction,limit=1,sort=nearest] run scoreboard players set @s vote_position 6
execute positioned 28 2 116.0 as @e[type=marker,tag=!selected,tag=MapVote,tag=!Random,tag=!disabled,limit=1,sort=random] run function mcm:lobby/voting/map_position_id

execute positioned 28 2 84.0 as @e[type=interaction,limit=1,sort=nearest] run scoreboard players set @s vote_position -1
execute positioned 28 2 84.0 as @e[type=marker,tag=!selected,tag=MapVote,tag=Random,limit=1,sort=random] run function mcm:lobby/voting/map_position_id

execute positioned 28 2 90.0 as @e[type=interaction,tag=MapVoteEntity,sort=nearest,limit=1] if score @s vote_map_id matches -2 run function mcm:lobby/voting/disabled_slot
execute positioned 28 2 95.0 as @e[type=interaction,tag=MapVoteEntity,sort=nearest,limit=1] if score @s vote_map_id matches -2 run function mcm:lobby/voting/disabled_slot
execute positioned 28 2 100.0 as @e[type=interaction,tag=MapVoteEntity,sort=nearest,limit=1] if score @s vote_map_id matches -2 run function mcm:lobby/voting/disabled_slot
execute positioned 28 2 106.0 as @e[type=interaction,tag=MapVoteEntity,sort=nearest,limit=1] if score @s vote_map_id matches -2 run function mcm:lobby/voting/disabled_slot
execute positioned 28 2 111.0 as @e[type=interaction,tag=MapVoteEntity,sort=nearest,limit=1] if score @s vote_map_id matches -2 run function mcm:lobby/voting/disabled_slot
execute positioned 28 2 116.0 as @e[type=interaction,tag=MapVoteEntity,sort=nearest,limit=1] if score @s vote_map_id matches -2 run function mcm:lobby/voting/disabled_slot

execute as @e[type=interaction,tag=MapVoteEntity] if score @s vote_map_id matches -2 run data merge entity @s {response:false}
execute as @e[type=interaction,tag=MapVoteEntity] if score @s vote_map_id matches -2 run tag @s add disabled
execute as @e[type=text_display,tag=VoteDisplay,tag=disabled] run data merge entity @s {text:''}


execute as @e[type=text_display,tag=map_random] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"random"},"color":"#FFE700"}]'}
execute as @e[type=text_display,tag=map1,tag=!disabled] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map1"},"color":"#FFE700"}]'}
execute as @e[type=text_display,tag=map2,tag=!disabled] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map2"},"color":"#FFE700"}]'}
execute as @e[type=text_display,tag=map3,tag=!disabled] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map3"},"color":"#FFE700"}]'}
execute as @e[type=text_display,tag=map4,tag=!disabled] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map4"},"color":"#FFE700"}]'}
execute as @e[type=text_display,tag=map5,tag=!disabled] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map5"},"color":"#FFE700"}]'}
execute as @e[type=text_display,tag=map6,tag=!disabled] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map6"},"color":"#FFE700"}]'}