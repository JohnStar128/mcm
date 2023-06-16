# Takes position vote in as @s vote_position
# Takes map_id vote in as @s vote_map_id

playsound block.note_block.bit master @s ~ ~ ~ 1 1.4
tag @s add Voted

#> Update visible counts

scoreboard players set random vote_count 0
scoreboard players set map1 vote_count 0
scoreboard players set map2 vote_count 0
scoreboard players set map3 vote_count 0
scoreboard players set map4 vote_count 0
scoreboard players set map5 vote_count 0
scoreboard players set map6 vote_count 0

execute as @a[scores={vote_position=-1}] run scoreboard players add random vote_count 1
execute as @a[scores={vote_position=1}] run scoreboard players add map1 vote_count 1
execute as @a[scores={vote_position=2}] run scoreboard players add map2 vote_count 1
execute as @a[scores={vote_position=3}] run scoreboard players add map3 vote_count 1
execute as @a[scores={vote_position=4}] run scoreboard players add map4 vote_count 1
execute as @a[scores={vote_position=5}] run scoreboard players add map5 vote_count 1
execute as @a[scores={vote_position=6}] run scoreboard players add map6 vote_count 1

execute as @e[type=text_display,tag=map_random] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"random"},"color":"#FFE700"}]'}
execute as @e[type=text_display,tag=map1,tag=!disabled] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map1"},"color":"#FFE700"}]'}
execute as @e[type=text_display,tag=map2,tag=!disabled] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map2"},"color":"#FFE700"}]'}
execute as @e[type=text_display,tag=map3,tag=!disabled] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map3"},"color":"#FFE700"}]'}
execute as @e[type=text_display,tag=map4,tag=!disabled] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map4"},"color":"#FFE700"}]'}
execute as @e[type=text_display,tag=map5,tag=!disabled] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map5"},"color":"#FFE700"}]'}
execute as @e[type=text_display,tag=map6,tag=!disabled] run data merge entity @s {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map6"},"color":"#FFE700"}]'}


tellraw @s[scores={vote_map_id=-1}] [{"text":"| ","color":"gray","bold":true}, {"text":"You voted for: ","color":"gray"},{"text":"a random map","color":"green"}]
tellraw @s[scores={vote_map_id=1}] [{"text":"| ","color":"gray","bold":true}, {"text":"You voted for: ","color":"gray"},{"text":"Library","color":"green"}]
tellraw @s[scores={vote_map_id=2}] [{"text":"| ","color":"gray","bold":true}, {"text":"You voted for: ","color":"gray"},{"text":"Floating Islands","color":"green"}]
tellraw @s[scores={vote_map_id=3}] [{"text":"| ","color":"gray","bold":true}, {"text":"You voted for: ","color":"gray"},{"text":"Vineyard","color":"green"}]
tellraw @s[scores={vote_map_id=4}] [{"text":"| ","color":"gray","bold":true}, {"text":"You voted for: ","color":"gray"},{"text":"Launch Complex","color":"green"}]
tellraw @s[scores={vote_map_id=5}] [{"text":"| ","color":"gray","bold":true}, {"text":"You voted for: ","color":"gray"},{"text":"Color Filth","color":"green"}]
tellraw @s[scores={vote_map_id=6}] [{"text":"| ","color":"gray","bold":true}, {"text":"You voted for: ","color":"gray"},{"text":"Murder on the Mississippi","color":"green"}]
tellraw @s[scores={vote_map_id=7}] [{"text":"| ","color":"gray","bold":true}, {"text":"You voted for: ","color":"gray"},{"text":"Industry","color":"green"}]
tellraw @s[scores={vote_map_id=8}] [{"text":"| ","color":"gray","bold":true}, {"text":"You voted for: ","color":"gray"},{"text":"Tragedy on the Boreal Express","color":"green"}]
tellraw @s[scores={vote_map_id=9}] [{"text":"| ","color":"gray","bold":true}, {"text":"You voted for: ","color":"gray"},{"text":"Snowed Inn","color":"green"}]
