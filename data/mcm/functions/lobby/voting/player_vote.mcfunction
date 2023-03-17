#> Map voting
execute store result score $current_vote vote_position run scoreboard players add @s mapvote 0
execute as @e[type=villager,scores={vote_position=1..}] if score @s vote_position = $current_vote vote_position store result score $current_vote vote_map_id run add @s vote_map_id 0
execute as @e[type=villager,scores={vote_position=-1}] if score @s vote_position = $current_vote vote_position store result score $current_vote vote_map_id run add @s vote_map_id 0
execute as @e[type=marker,tag=MapVote] if score @s MapValues = $current_vote vote_map_id run scoreboard players add @s CmdData 1

playsound block.note_block.bit master @s ~ ~ ~ 1 1.4
tag @s add Voted

#> Remove previous vote
execute store result score $current_vote vote_position run scoreboard players add @s current_vote 0
execute as @e[type=villager,scores={vote_position=1..}] if score @s vote_position = $current_vote vote_position store result score $current_vote vote_map_id run add @s vote_map_id 0
execute as @e[type=villager,scores={vote_position=-1}] if score @s vote_position = $current_vote vote_position store result score $current_vote vote_map_id run add @s vote_map_id 0
execute as @e[type=marker,tag=MapVote] if score @s MapValues = $current_vote vote_map_id run scoreboard players remove @s CmdData 1

#> Update current vote and reset so they can vote again
scoreboard players operation @s current_vote = @s mapvote
scoreboard players reset @s mapvote

#> Update visible counts
execute positioned 29 3 89 as @e[type=marker,tag=MapVote] if score @s MapValues = @e[type=villager,limit=1,sort=nearest] vote_map_id run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 1"}}',Text2:'{"text":"","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"translate":"mcm.lobby.vote","extra":[{"score":{"name":"@s","objective":"CmdData"},"color":"#FFE700"}]}'}
execute positioned 29 3 94 as @e[type=marker,tag=MapVote] if score @s MapValues = @e[type=villager,limit=1,sort=nearest] vote_map_id run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 1"}}',Text2:'{"text":"","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"translate":"mcm.lobby.vote","extra":[{"score":{"name":"@s","objective":"CmdData"},"color":"#FFE700"}]}'}
execute positioned 29 3 99 as @e[type=marker,tag=MapVote] if score @s MapValues = @e[type=villager,limit=1,sort=nearest] vote_map_id run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 1"}}',Text2:'{"text":"","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"translate":"mcm.lobby.vote","extra":[{"score":{"name":"@s","objective":"CmdData"},"color":"#FFE700"}]}'}
execute positioned 29 3 104 as @e[type=marker,tag=MapVote] if score @s MapValues = @e[type=villager,limit=1,sort=nearest] vote_map_id run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 1"}}',Text2:'{"text":"","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"translate":"mcm.lobby.vote","extra":[{"score":{"name":"@s","objective":"CmdData"},"color":"#FFE700"}]}'}
execute positioned 29 3 109 as @e[type=marker,tag=MapVote] if score @s MapValues = @e[type=villager,limit=1,sort=nearest] vote_map_id run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 1"}}',Text2:'{"text":"","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"translate":"mcm.lobby.vote","extra":[{"score":{"name":"@s","objective":"CmdData"},"color":"#FFE700"}]}'}
execute positioned 29 3 114 as @e[type=marker,tag=MapVote] if score @s MapValues = @e[type=villager,limit=1,sort=nearest] vote_map_id run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 1"}}',Text2:'{"text":"","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"translate":"mcm.lobby.vote","extra":[{"score":{"name":"@s","objective":"CmdData"},"color":"#FFE700"}]}'}
execute positioned 29 3 83 as @e[type=marker,tag=MapVote] if score @s MapValues = @e[type=villager,limit=1,sort=nearest] vote_map_id run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 1"}}',Text2:'{"text":"","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"translate":"mcm.lobby.vote","extra":[{"score":{"name":"@s","objective":"CmdData"},"color":"#FFE700"}]}'}

execute as @e[type=armor_stand,tag=map1,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 89 Text4
execute as @e[type=armor_stand,tag=map2,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 94 Text4
execute as @e[type=armor_stand,tag=map3,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 99 Text4
execute as @e[type=armor_stand,tag=map4,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 104 Text4
execute as @e[type=armor_stand,tag=map5,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 109 Text4
execute as @e[type=armor_stand,tag=map6,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 114 Text4
execute as @e[type=armor_stand,tag=map_random,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 83 Text4
