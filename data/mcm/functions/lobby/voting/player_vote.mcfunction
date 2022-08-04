#> Map voting
# Library
execute as @s[scores={mapvote=1}] run tellraw @s ["",{"text":"You voted for: ","color":"gray"},{"text":"Library","color":"dark_green"}]
execute as @s[scores={mapvote=1}] run scoreboard players add @e[type=marker,tag=MapVote,tag=Library] CmdData 1

# Airship
execute as @s[scores={mapvote=2}] run tellraw @s ["",{"text":"You voted for: ","color":"gray"},{"text":"Floating Islands","color":"dark_green"}]
execute as @s[scores={mapvote=2}] run scoreboard players add @e[type=marker,tag=MapVote,tag=Airship] CmdData 1

# Vineyard
execute as @s[scores={mapvote=3}] run tellraw @s ["",{"text":"You voted for: ","color":"gray"},{"text":"Vineyard","color":"dark_green"}]
execute as @s[scores={mapvote=3}] run scoreboard players add @e[type=marker,tag=MapVote,tag=Vineyard] CmdData 1

# Launch Complex
execute as @s[scores={mapvote=4}] run tellraw @s ["",{"text":"You voted for: ","color":"gray"},{"text":"Launch Complex","color":"dark_green"}]
execute as @s[scores={mapvote=4}] run scoreboard players add @e[type=marker,tag=MapVote,tag=Launchpad] CmdData 1

# Random
execute as @s[scores={mapvote=-1}] run tellraw @s ["",{"text":"You voted for a ","color":"gray"},{"text":"random map","color":"dark_green"}]
execute as @s[scores={mapvote=-1}] run scoreboard players add @e[type=marker,tag=MapVote,tag=Random] CmdData 1

playsound block.note_block.bit master @s ~ ~ ~ 1 1.4
tag @s add Voted

#> Remove previous vote
execute as @s[scores={current_vote=1}] run scoreboard players remove @e[type=marker,tag=MapVote,tag=Library] CmdData 1
execute as @s[scores={current_vote=2}] run scoreboard players remove @e[type=marker,tag=MapVote,tag=Airship] CmdData 1
execute as @s[scores={current_vote=3}] run scoreboard players remove @e[type=marker,tag=MapVote,tag=Vineyard] CmdData 1
execute as @s[scores={current_vote=4}] run scoreboard players remove @e[type=marker,tag=MapVote,tag=Launchpad] CmdData 1
execute as @s[scores={current_vote=-1}] run scoreboard players remove @e[type=marker,tag=MapVote,tag=Random] CmdData 1
#> Update current vote
scoreboard players operation @s current_vote = @s mapvote

#> Update visible counts
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
