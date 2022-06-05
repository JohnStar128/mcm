#> TEMPORARY COMMANDS REMOVE LATER

# teleport
tp @a[team=!test4,tag=queued] 0 -59 0

time set 6000

# gamemode
gamemode adventure @a[team=!test4,tag=queued]

# kill player skulls
kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}}]

effect clear @a

# kill spawnpoints
kill @e[tag=MapEntity]
kill @e[tag=KeyItem]

# clear old tags
tag @e remove murderer
tag @e remove innocent
tag @e remove gunner
tag @e remove spectating
tag @a remove queued
tag @a remove retrieved
tag @a remove shotGun

# remove death related scores
scoreboard players reset @a dead
scoreboard players set $gametimer CmdData 0
scoreboard players set $scrapclock CmdData 0
scoreboard players set $pickedroles CmdData 0
scoreboard players set $start CmdData 0
scoreboard players set $startcountdown CmdData 200
scoreboard players reset @a knifeRetrieve 
scoreboard players reset @a throwKnife
scoreboard players reset @a canPickupGun

# remove items
clear @a snowball
clear @a carrot_on_a_stick
clear @a netherite_scrap
clear @a warped_fungus_on_a_stick
clear @a spyglass

# reset map specific stuff that changes during the game
execute if score $selectedMap CmdData matches 1 run setblock 977 110 992 structure_block{mode:"LOAD",name:"minecraft:chandelier_frame0",posX:-6,posY:-10,posZ:5} destroy
execute if score $selectedMap CmdData matches 1 run setblock 977 111 992 air destroy
execute if score $selectedMap CmdData matches 1 run setblock 977 111 992 redstone_block destroy
#execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 1 run function mcm:maps/library/reset
#execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 2 run function mcm:maps/airship/reset
#execute if score $gameEndTimer CmdData matches ..1 if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/reset

# disable friendly fire
team modify nametags friendlyFire false

# set $gamestate to 0 (pregame, post vote) //TODO change to -1
scoreboard players set $gamestate CmdData -1
function mcm:lobby/startvote