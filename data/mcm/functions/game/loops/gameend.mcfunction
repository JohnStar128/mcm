#> When the game is over, have a moment of respite before teleporting back to lobby

scoreboard players set $didGameEnd CmdData 1

execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches 200 run title @a clear
execute as @e[tag=KeyItem] at @s if score $didGameEnd CmdData matches 1 run data merge entity @s {PickupDelay:-1s}
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches 200 run tellraw @a ["", {"text":"Returning to lobby in 10 seconds...","color":"yellow"}]
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches 200 if score $innocentWin CmdData matches 1 run title @a title ["", {"text":"Innocents win!","color":"green"}]
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches 200 if score $murderWin CmdData matches 1 run title @a title ["", {"text":"Murderer wins!","color":"red"}]
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches 200 if score $innocentWin CmdData matches 1 run playsound minecraft:ui.toast.challenge_complete ambient @a ~ ~ ~ 1 1 1
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches 200 if score $murderWin CmdData matches 1 run playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 1 2 1

execute if score $didGameEnd CmdData matches 1 run scoreboard players remove $gameEndTimer CmdData 1

# teleport
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run tp @a[team=!test4,tag=queued] -1 1 69

execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run time set 6000

# gamemode
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run gamemode adventure @a[team=!test4,tag=queued]

# kill player skulls
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}}]

execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run effect clear @a

# kill spawnpoints
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run kill @e[tag=MapEntity]
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run kill @e[tag=KeyItem]

# clear old tags
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run tag @e remove murderer
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run tag @e remove innocent
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run tag @e remove gunner
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run tag @e remove spectating
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run tag @e remove usedAdrenaline
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run tag @e remove usedTeleport
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run tag @a remove queued
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run tag @a remove retrieved
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run tag @a remove shotGun

# remove death related scores
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a dead
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a canGetRetrieval
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run scoreboard players set $gametimer CmdData 0
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run scoreboard players set $scrapclock CmdData 0
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run scoreboard players set $pickedroles CmdData 0
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run scoreboard players set $start CmdData 0
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run scoreboard players set $startcountdown CmdData 200
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a knifeRetrieval 
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a throwKnife
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run scoreboard players reset @a canPickupGun

# remove items
clear @a snowball
clear @a carrot_on_a_stick
clear @a netherite_scrap
clear @a warped_fungus_on_a_stick
clear @a spyglass

# reset map specific stuff that changes during the game
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run execute if score $selectedMap CmdData matches 1 run setblock 977 110 992 structure_block{mode:"LOAD",name:"minecraft:chandelier_frame0",posX:-6,posY:-10,posZ:5} destroy
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run execute if score $selectedMap CmdData matches 1 run setblock 977 111 992 air destroy
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run execute if score $selectedMap CmdData matches 1 run setblock 977 111 992 redstone_block destroy
#execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 1 run function mcm:maps/library/reset
#execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 2 run function mcm:maps/airship/reset
#execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/reset

# disable friendly fire
team modify nametags friendlyFire false

# set $gamestate to 0 (pregame, post vote)
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run scoreboard players set $gamestate CmdData -1
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run function mcm:lobby/startvote
execute if score $didGameEnd CmdData matches 1 if score $gameEndTimer CmdData matches ..1 run scoreboard players set $gameEndTimer CmdData 200
execute if score $didGameEnd CmdData matches 1 if score $gamestate CmdData matches -1 run scoreboard players set $murderWin CmdData 0
execute if score $didGameEnd CmdData matches 1 if score $gamestate CmdData matches -1 run scoreboard players set $innocentWin CmdData 0
execute if score $didGameEnd CmdData matches 1 if score $gamestate CmdData matches -1 run scoreboard players set $didGameEnd CmdData 0