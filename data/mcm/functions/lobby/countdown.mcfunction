scoreboard players add $countSec CmdData 1
scoreboard players enable @a[tag=!Voted] mapvote

#> Fancy countdown sounds
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 5..9 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.8
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 4 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.9
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 3 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1.0
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 2 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1.1
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1.2
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.7
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0

#> Finish vote
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 run scoreboard players add @e[type=marker,tag=MapVote] CmdData 1
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 if entity @e[type=marker,tag=MapVote,scores={CmdData=1..}] run function mcm:lobby/map_poggercalculation
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 run tag @e[type=marker,tag=MapVote,scores={CmdData=0},sort=random,limit=1] add SelectedMap
execute if entity @e[type=marker,tag=SelectedMap,tag=Random] run tag @e[type=marker,tag=MapVote,tag=!SelectedMap,limit=1,sort=random] add SelectedMap
execute as @e[type=marker,tag=SelectedMap,tag=Random] run tag @s remove SelectedMap
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 run scoreboard players operation $selectedMap CmdData = @e[type=marker,tag=SelectedMap] MapValues

#> Map specific activation
#Library
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 if entity @e[type=marker,tag=SelectedMap,tag=Library] run function mcm:maps/library/activate
#Airship
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 if entity @e[type=marker,tag=SelectedMap,tag=Airship] run function mcm:maps/airship/activate
#Vineyard
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 if entity @e[type=marker,tag=SelectedMap,tag=Vineyard] run function mcm:maps/vineyard/activate
#Launch Complex
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 if entity @e[type=marker,tag=SelectedMap,tag=Launchpad] run function mcm:maps/launchpad/activate

#> A normal person would want the rules printed here, BEFORE the game starts, but alas, we live in a lazy world
# execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 as @a run function mcm:lobby/print_game_rules

#> Change gamestate to 0 (Players can now join, game has not started yet)
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 as @e[type=villager,tag=!available,tag=MapVoteEntity] run function mcm:util/dealloc_entity
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 as @e[type=armor_stand,tag=!available,tag=MapVoteEntity] run function mcm:util/dealloc_entity
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 as @e[type=armor_stand,tag=MapVoteEntity] run data merge entity @s {CustomNameVisible:0b}
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 run bossbar remove lobbybar
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 run scoreboard players set $gamestate CmdData 0

#> Remove 1 from countdown, reset countSec
execute if entity @e[type=marker,tag=MapVote,scores={CmdData=1..}] if score $countSec CmdData matches 20.. run scoreboard players remove $countdown CmdData 1
execute if score $countSec CmdData matches 20.. run scoreboard players set $countSec CmdData 0

#> Bossbar
bossbar set lobbybar players @a
bossbar set lobbybar name ["",{"text":"Vote for a map! ","color":"gold"},{"text":"[","color":"gray"},{"score":{"name":"$countdown","objective":"CmdData"},"bold":true,"color":"yellow"},{"text":"]","color":"gray"}]
execute store result bossbar lobbybar value run scoreboard players get $countdown CmdData

execute as @e[type=armor_stand,tag=map1,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 89 Text4
execute as @e[type=armor_stand,tag=map2,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 94 Text4
execute as @e[type=armor_stand,tag=map3,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 99 Text4
execute as @e[type=armor_stand,tag=map4,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 104 Text4
execute as @e[type=armor_stand,tag=map_random,tag=VoteDisplay] at @s run data modify entity @s CustomName set from block 29 3 83 Text4

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

#> Map voting
# Library
execute as @a[scores={mapvote=1}] run tellraw @s ["",{"text":"You voted for: ","color":"gray"},{"text":"Library","color":"dark_green"}]
execute as @a[scores={mapvote=1}] run scoreboard players add @e[type=marker,tag=MapVote,tag=Library] CmdData 1
execute as @a[scores={mapvote=1}] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.4
execute as @a[scores={mapvote=1}] run tag @s add Voted

# Airship
execute as @a[scores={mapvote=2}] run tellraw @s ["",{"text":"You voted for: ","color":"gray"},{"text":"Floating Islands","color":"dark_green"}]
execute as @a[scores={mapvote=2}] run scoreboard players add @e[type=marker,tag=MapVote,tag=Airship] CmdData 1
execute as @a[scores={mapvote=2}] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.4
execute as @a[scores={mapvote=2}] run tag @s add Voted

# Vineyard
execute as @a[scores={mapvote=3}] run tellraw @s ["",{"text":"You voted for: ","color":"gray"},{"text":"Vineyard","color":"dark_green"}]
execute as @a[scores={mapvote=3}] run scoreboard players add @e[type=marker,tag=MapVote,tag=Vineyard] CmdData 1
execute as @a[scores={mapvote=3}] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.4
execute as @a[scores={mapvote=3}] run tag @s add Voted

# Launch Complex
execute as @a[scores={mapvote=4}] run tellraw @s ["",{"text":"You voted for: ","color":"gray"},{"text":"Launch Complex","color":"dark_green"}]
execute as @a[scores={mapvote=4}] run scoreboard players add @e[type=marker,tag=MapVote,tag=Launchpad] CmdData 1
execute as @a[scores={mapvote=4}] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.4
execute as @a[scores={mapvote=4}] run tag @s add Voted

# Random
execute as @a[scores={mapvote=-1}] run tellraw @s ["",{"text":"You voted for a ","color":"gray"},{"text":"random map","color":"dark_green"}]
execute as @a[scores={mapvote=-1}] run scoreboard players add @e[type=marker,tag=MapVote,tag=Random] CmdData 1
execute as @a[scores={mapvote=-1}] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.4
execute as @a[scores={mapvote=-1}] run tag @s add Voted

#> Place signs
fill 9 -59 16 7 -59 16 glass
setblock 29 3 89 minecraft:oak_wall_sign[facing=west]
setblock 29 3 94 minecraft:oak_wall_sign[facing=west]
setblock 29 3 99 minecraft:oak_wall_sign[facing=west]
setblock 29 3 104 minecraft:oak_wall_sign[facing=west]
setblock 29 3 83 minecraft:oak_wall_sign[facing=west]

data merge block 29 3 89 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 1"}}',Text2:'{"text":"Library","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"text":"Votes: ","extra":[{"score":{"name":"@e[type=marker,tag=MapVote,tag=Library,limit=1]","objective":"CmdData"},"color":"#FFE700"}]}'}
data merge block 29 3 94 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 2"}}',Text2:'{"text":"Airship","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"text":"Votes: ","extra":[{"score":{"name":"@e[type=marker,tag=MapVote,tag=Airship,limit=1]","objective":"CmdData"},"color":"#FFE700"}]}'}
data merge block 29 3 99 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 3"}}',Text2:'{"text":"Vineyard","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"text":"Votes: ","extra":[{"score":{"name":"@e[type=marker,tag=MapVote,tag=Vineyard,limit=1]","objective":"CmdData"},"color":"#FFE700"}]}'}
data merge block 29 3 104 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 4"}}',Text2:'{"text":"Launch Complex","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"text":"Votes: ","extra":[{"score":{"name":"@e[type=marker,tag=MapVote,tag=Launchpad,limit=1]","objective":"CmdData"},"color":"#FFE700"}]}'}

data merge block 29 3 83 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set -1"}}',Text2:'{"text":"Random","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"text":"Votes: ","extra":[{"score":{"name":"@e[type=marker,tag=MapVote,tag=Random,limit=1]","objective":"CmdData"},"color":"#FFE700"}]}'}

scoreboard players reset @a[tag=Voted] mapvote
execute as @a unless entity @s[scores={mapvote=-1..4}] run scoreboard players reset @s mapvote