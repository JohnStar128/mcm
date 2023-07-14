#> Sounds
execute as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1.2
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.7
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0

#> Finish vote
#scoreboard players add @e[type=marker,tag=MapVote] CmdData 1
#execute if entity @e[type=marker,tag=MapVote,scores={CmdData=1..}] run function mcm:lobby/map_poggercalculation
#tag @e[type=marker,tag=MapVote,scores={CmdData=0},sort=random,limit=1] add SelectedMap
#execute if entity @e[type=marker,tag=SelectedMap,tag=Random] run tag @e[type=marker,tag=MapVote,tag=!SelectedMap,tag=selected,limit=1,sort=random] add SelectedMap
#execute as @e[type=marker,tag=SelectedMap,tag=Random] run tag @s remove SelectedMap
#scoreboard players operation $selectedMap CmdData = @e[type=marker,tag=SelectedMap] MapValues

function mcm:lobby/voting/select_map

#> Teardown interaction entities
execute as @e[type=minecraft:interaction,tag=MapVoteEntity] run data merge entity @s {response:false}

execute as @e[type=text_display,tag=VoteDisplay] run data merge entity @s {text:''}
tag @e[type=text_display,tag=VoteDisplay] remove disabled

#> Load correct map
#Library
execute if entity @e[type=marker,tag=SelectedMap,tag=Library] run forceload add 1023 960 912 1039
execute if entity @e[type=marker,tag=SelectedMap,tag=Library] run forceload add 1023 960 1108 1039
#Airship
execute if entity @e[type=marker,tag=SelectedMap,tag=Airship] run forceload add -555 -56 -744 77
#Vineyard
execute if entity @e[type=marker,tag=SelectedMap,tag=Vineyard] run forceload add 2111 2095 1937 1911
#Launch Complex
execute if entity @e[type=marker,tag=SelectedMap,tag=Launchpad] run forceload add -860 -1100 -1170 -1280
execute if entity @e[type=marker,tag=SelectedMap,tag=Launchpad] run forceload add -860 -1100 -1128 -997
execute if entity @e[type=marker,tag=SelectedMap,tag=Launchpad] run forceload add -961 -881 -1136 -976
#Color Filth
execute if entity @e[type=marker,tag=SelectedMap,tag=Cyberpunk] run forceload add -2178 1968 -1969 2135
#Riverboat
execute if entity @e[type=marker,tag=SelectedMap,tag=Riverboat] run forceload add 2130 -2015 2000 -1975
# Industry
execute if entity @e[type=marker,tag=SelectedMap,tag=Industry] run forceload add -1926 -2938 -2067 -3063
# Train
execute if entity @e[type=marker,tag=SelectedMap,tag=Train] run forceload add 2000 3040 1585 2945
# Cabin
execute if entity @e[type=marker,tag=SelectedMap,tag=Cabin] run forceload add -1938 3000 -2030 3048

#> Map specific activation
#Library
execute if entity @e[type=marker,tag=SelectedMap,tag=Library] run schedule function mcm:maps/library/activate 1s
#Airship
execute if entity @e[type=marker,tag=SelectedMap,tag=Airship] run schedule function mcm:maps/airship/activate 1s
#Vineyard
execute if entity @e[type=marker,tag=SelectedMap,tag=Vineyard] run schedule function mcm:maps/vineyard/activate 1s
#Launch Complex
execute if entity @e[type=marker,tag=SelectedMap,tag=Launchpad] run schedule function mcm:maps/launchpad/activate 1s
#Color Filth
execute if entity @e[type=marker,tag=SelectedMap,tag=Cyberpunk] run schedule function mcm:maps/cyberpunk/activate 1s
#Riverboat
execute if entity @e[type=marker,tag=SelectedMap,tag=Riverboat] run schedule function mcm:maps/riverboat/activate 1s
# Industry
execute if entity @e[type=marker,tag=SelectedMap,tag=Industry] run schedule function mcm:maps/industry/activate 1s
# Train
execute if entity @e[type=marker,tag=SelectedMap,tag=Train] run schedule function mcm:maps/train/activate 1s
# Cabin
execute if entity @e[type=marker,tag=SelectedMap,tag=Cabin] run schedule function mcm:maps/cabin/activate 1s

#> Change gamestate to 0 (Players can now join, game has not started yet)
bossbar remove lobbybar
scoreboard players set $gamestate CmdData 0

scoreboard players set @a current_vote 0

