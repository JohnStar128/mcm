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
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 run scoreboard players add @e[tag=MapVote] CmdData 1
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 if entity @e[tag=MapVote,scores={CmdData=1..}] run function mcm:lobby/map_poggercalculation
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 run tag @e[tag=MapVote,scores={CmdData=0},sort=random,limit=1] add SelectedMap
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 run scoreboard players operation $selectedMap CmdData = @e[tag=SelectedMap] MapValues

#> Map specific activation
#Library
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 if entity @e[tag=SelectedMap,tag=Library] run function mcm:maps/library/activate
#Airship
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 if entity @e[tag=SelectedMap,tag=Airship] run function mcm:maps/airship/activate
#Vineyard
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 if entity @e[tag=SelectedMap,tag=Vineyard] run function mcm:maps/vineyard/activate

#> Change gamestate to 0 (Players can now join, game has not started yet)
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 run kill @e[tag=MapVote]
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 run bossbar remove lobbybar
execute if score $countSec CmdData matches 20.. if score $countdown CmdData matches 1 run scoreboard players set $gamestate CmdData 0

#> Remove 1 from countdown, reset countSec
execute if score $countSec CmdData matches 20.. run scoreboard players remove $countdown CmdData 1
execute if score $countSec CmdData matches 20.. run scoreboard players set $countSec CmdData 0

#> Bossbar
bossbar set lobbybar players @a
bossbar set lobbybar name ["",{"text":"Vote for a map! ","color":"gold"},{"text":"[","color":"gray"},{"score":{"name":"$countdown","objective":"CmdData"},"bold":true,"color":"yellow"},{"text":"]","color":"gray"}]
execute store result bossbar lobbybar value run scoreboard players get $countdown CmdData

#> Map voting
# Library
execute as @a[scores={mapvote=1}] run tellraw @s ["",{"text":"You voted for: ","color":"gray"},{"text":"Library","color":"dark_green"}]
execute as @a[scores={mapvote=1}] run scoreboard players add @e[tag=MapVote,tag=Library] CmdData 1
execute as @a[scores={mapvote=1}] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.4
execute as @a[scores={mapvote=1}] run tag @s add Voted

# Airship
execute as @a[scores={mapvote=2}] run tellraw @s ["",{"text":"You voted for: ","color":"gray"},{"text":"Airship","color":"dark_green"}]
execute as @a[scores={mapvote=2}] run scoreboard players add @e[tag=MapVote,tag=Airship] CmdData 1
execute as @a[scores={mapvote=2}] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.4
execute as @a[scores={mapvote=2}] run tag @s add Voted

# Vineyard
execute as @a[scores={mapvote=3}] run tellraw @s ["",{"text":"You voted for: ","color":"gray"},{"text":"Vineyard","color":"dark_green"}]
execute as @a[scores={mapvote=3}] run scoreboard players add @e[tag=MapVote,tag=Vineyard] CmdData 1
execute as @a[scores={mapvote=3}] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.4
execute as @a[scores={mapvote=3}] run tag @s add Voted

#> Place signs
fill 9 -59 16 7 -59 16 glass
setblock 8 -59 15 minecraft:oak_wall_sign[facing=north]
setblock 7 -59 15 minecraft:oak_wall_sign[facing=north]
setblock 9 -59 15 minecraft:oak_wall_sign[facing=north]

data merge block 8 -59 15 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 1"}}',Text2:'{"text":"Library","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"score":{"name":"@e[tag=MapVote,tag=Library,limit=1]","objective":"CmdData"},"color":"#FFE700"}'}
data merge block 7 -59 15 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 2"}}',Text2:'{"text":"Airship","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"score":{"name":"@e[tag=MapVote,tag=Airship,limit=1]","objective":"CmdData"},"color":"#FFE700"}'}
data merge block 9 -59 15 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger mapvote set 3"}}',Text2:'{"text":"Vineyard","underlined":true,"color":"dark_green"}',Text3:'{"text":""}',Text4:'{"score":{"name":"@e[tag=MapVote,tag=Vineyard,limit=1]","objective":"CmdData"},"color":"#FFE700"}'}

scoreboard players reset @a[tag=Voted] mapvote
execute as @a unless entity @s[scores={mapvote=0..3}] run scoreboard players reset @s mapvote