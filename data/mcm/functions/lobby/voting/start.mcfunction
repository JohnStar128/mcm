#> Reset old MapVote entities
execute as @e[type=marker,tag=MapVote] run scoreboard players set @s CmdData 0
execute as @e[type=marker,tag=MapVote] run tag @s remove SelectedMap

#> Remove voted tag
tag @a remove Voted
scoreboard players reset @a mapvote
scoreboard players reset $selectedMap CmdData

#> Generate a game ID
summon marker 0 100 0 {Tags:["gameID"]}
execute store result score $gameID CmdData run data get entity @e[tag=gameID,limit=1,sort=nearest] UUID[0]
scoreboard players operation @a gameID = $gameID CmdData
kill @e[tag=gameID]

#> Reset lobby poster visual
fill 27 5 88 27 1 117 crimson_trapdoor[open=true,facing=west] replace warped_trapdoor

#> MapVote markers moved to be always in the world

execute as @e[type=villager,tag=available,tag=map1,limit=1] positioned 27.5 2 89.5 run function mcm:util/alloc_entity
execute as @e[type=villager,tag=available,tag=map1,limit=1] positioned 27.5 2 90.0 run function mcm:util/alloc_entity
execute as @e[type=villager,tag=available,tag=map1,limit=1] positioned 27.5 2 90.5 run function mcm:util/alloc_entity

execute as @e[type=villager,tag=available,tag=map2,limit=1] positioned 27.5 2 94.5 run function mcm:util/alloc_entity
execute as @e[type=villager,tag=available,tag=map2,limit=1] positioned 27.5 2 95.0 run function mcm:util/alloc_entity
execute as @e[type=villager,tag=available,tag=map2,limit=1] positioned 27.5 2 95.5 run function mcm:util/alloc_entity

execute as @e[type=villager,tag=available,tag=map3,limit=1] positioned 27.5 2 99.5 run function mcm:util/alloc_entity
execute as @e[type=villager,tag=available,tag=map3,limit=1] positioned 27.5 2 100.0 run function mcm:util/alloc_entity
execute as @e[type=villager,tag=available,tag=map3,limit=1] positioned 27.5 2 100.5 run function mcm:util/alloc_entity

execute as @e[type=villager,tag=available,tag=map4,limit=1] positioned 27.5 2 105.5 run function mcm:util/alloc_entity
execute as @e[type=villager,tag=available,tag=map4,limit=1] positioned 27.5 2 106.0 run function mcm:util/alloc_entity
execute as @e[type=villager,tag=available,tag=map4,limit=1] positioned 27.5 2 106.5 run function mcm:util/alloc_entity

execute as @e[type=villager,tag=available,tag=map_random,limit=1] positioned 26.5 2 83.5 run function mcm:util/alloc_entity
execute as @e[type=villager,tag=available,tag=map_random,limit=1] positioned 26.5 2 84.0 run function mcm:util/alloc_entity
execute as @e[type=villager,tag=available,tag=map_random,limit=1] positioned 26.5 2 84.5 run function mcm:util/alloc_entity

execute as @e[type=armor_stand,tag=available,tag=map1,limit=1] positioned 27.5 5 90.0 run function mcm:util/alloc_entity
execute as @e[type=armor_stand,tag=available,tag=map2,limit=1] positioned 27.5 5 95.0 run function mcm:util/alloc_entity
execute as @e[type=armor_stand,tag=available,tag=map3,limit=1] positioned 27.5 5 100.0 run function mcm:util/alloc_entity
execute as @e[type=armor_stand,tag=available,tag=map4,limit=1] positioned 27.5 5 106.0 run function mcm:util/alloc_entity
execute as @e[type=armor_stand,tag=available,tag=map_random,limit=1] positioned 26.5 5 84.0 run function mcm:util/alloc_entity
execute as @e[type=armor_stand,tag=MapVoteEntity] run data merge entity @s {CustomNameVisible:1b}

team join posters @e[tag=MapVoteEntity]

#> Set countdown to 20 seconds
scoreboard players set $countdown CmdData 20

#> Modify lobby bossbar to display the vote countdown
bossbar add lobbybar ["",{"text":"Vote for a map! ","color":"gold"},{"text":"[","color":"gray"},{"score":{"name":"$countdown","objective":"CmdData"},"bold":true,"color":"yellow"},{"text":"]","color":"gray"}]
bossbar set lobbybar max 20
bossbar set lobbybar value 20
bossbar set lobbybar color yellow
bossbar set lobbybar style notched_20

#> Change gamestate to -1 (Map vote status)
scoreboard players set $gamestate CmdData -1

#> Set the pre-game start countdown to 10 seconds
scoreboard players set $startcountdown CmdData 200

#> Place signs
setblock 29 3 89 minecraft:oak_wall_sign[facing=west]
setblock 29 3 94 minecraft:oak_wall_sign[facing=west]
setblock 29 3 99 minecraft:oak_wall_sign[facing=west]
setblock 29 3 104 minecraft:oak_wall_sign[facing=west]
setblock 29 3 83 minecraft:oak_wall_sign[facing=west]

#> Update counts
data merge block 29 3 89 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 1"}}',Text2:'{"text":"Library","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"text":"Votes: ","extra":[{"score":{"name":"@e[type=marker,tag=MapVote,tag=Library,limit=1]","objective":"CmdData"},"color":"#FFE700"}]}'}
data merge block 29 3 94 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 2"}}',Text2:'{"text":"Airship","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"text":"Votes: ","extra":[{"score":{"name":"@e[type=marker,tag=MapVote,tag=Airship,limit=1]","objective":"CmdData"},"color":"#FFE700"}]}'}
data merge block 29 3 99 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 3"}}',Text2:'{"text":"Vineyard","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"text":"Votes: ","extra":[{"score":{"name":"@e[type=marker,tag=MapVote,tag=Vineyard,limit=1]","objective":"CmdData"},"color":"#FFE700"}]}'}
data merge block 29 3 104 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 4"}}',Text2:'{"text":"Launch Complex","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"text":"Votes: ","extra":[{"score":{"name":"@e[type=marker,tag=MapVote,tag=Launchpad,limit=1]","objective":"CmdData"},"color":"#FFE700"}]}'}
data merge block 29 3 83 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set -1"}}',Text2:'{"text":"Random","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"text":"Votes: ","extra":[{"score":{"name":"@e[type=marker,tag=MapVote,tag=Random,limit=1]","objective":"CmdData"},"color":"#FFE700"}]}'}

scoreboard players reset @s mapvote

execute as @e[type=armor_stand,tag=map1,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 89 Text4
execute as @e[type=armor_stand,tag=map2,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 94 Text4
execute as @e[type=armor_stand,tag=map3,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 99 Text4
execute as @e[type=armor_stand,tag=map4,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 104 Text4
execute as @e[type=armor_stand,tag=map_random,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 83 Text4