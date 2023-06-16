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

#> Map specific activation
#Library
execute if entity @e[type=marker,tag=SelectedMap,tag=Library] run function mcm:maps/library/activate
#Airship
execute if entity @e[type=marker,tag=SelectedMap,tag=Airship] run function mcm:maps/airship/activate
#Vineyard
execute if entity @e[type=marker,tag=SelectedMap,tag=Vineyard] run function mcm:maps/vineyard/activate
#Launch Complex
execute if entity @e[type=marker,tag=SelectedMap,tag=Launchpad] run function mcm:maps/launchpad/activate
#Color Filth
execute if entity @e[type=marker,tag=SelectedMap,tag=Cyberpunk] run function mcm:maps/cyberpunk/activate
#Gumdrop Plains
#execute if entity @e[type=marker,tag=SelectedMap,tag=Gumdrop] run function mcm:maps/gumdrop/activate
#Riverboat
execute if entity @e[type=marker,tag=SelectedMap,tag=Riverboat] run function mcm:maps/riverboat/activate
# Industry
execute if entity @e[type=marker,tag=SelectedMap,tag=Industry] run function mcm:maps/industry/activate
# Train
execute if entity @e[type=marker,tag=SelectedMap,tag=Train] run function mcm:maps/train/activate
# Cabin
execute if entity @e[type=marker,tag=SelectedMap,tag=Cabin] run function mcm:maps/cabin/activate

#> Change gamestate to 0 (Players can now join, game has not started yet)
bossbar remove lobbybar
scoreboard players set $gamestate CmdData 0

scoreboard players set @a current_vote 0

