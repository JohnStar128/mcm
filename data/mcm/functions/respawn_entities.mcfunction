#> Resummon required (persistent) entities if they don't exist


function mcm:util/respawn_map_vote_entities

#execute unless entity @e[type=armor_stand,tag=color_boots] run summon armor_stand 0 -49 70 {Tags:["color_boots"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1b,HideFlags:7},{},{},{}]}

function mcm:lobby/respawn_villagers

# Respawn the hat displays
function mcm:lobby/displays/init

# Respawn lobby chairs
function mcm:util/chair/lobby_chairs

kill @e[type=marker,tag=MapVote]
scoreboard players reset @e MapValues

execute unless entity @e[type=marker,tag=Random] run summon marker 0 -49 70 {Tags:["MapVote","Random"]}
scoreboard players set @e[type=marker,tag=Random] MapValues -1

execute unless entity @e[type=marker,tag=Library] run summon marker 0 -49 70 {Tags:["MapVote","Library"]}
scoreboard players set @e[type=marker,tag=Library] MapValues 1

execute unless entity @e[type=marker,tag=Airship] run summon marker 0 -49 70 {Tags:["MapVote","Airship"]}
scoreboard players set @e[type=marker,tag=Airship] MapValues 2

execute unless entity @e[type=marker,tag=Vineyard] run summon marker 0 -49 70 {Tags:["MapVote","Vineyard"]}
scoreboard players set @e[type=marker,tag=Vineyard] MapValues 3

execute unless entity @e[type=marker,tag=Launchpad] run summon marker 0 -49 70 {Tags:["MapVote","Launchpad"]}
scoreboard players set @e[type=marker,tag=Launchpad] MapValues 4

execute unless entity @e[type=marker,tag=Cyberpunk] run summon marker 0 -49 70 {Tags:["MapVote","Cyberpunk"]}
scoreboard players set @e[type=marker,tag=Cyberpunk] MapValues 5

execute unless entity @e[type=marker,tag=Riverboat] run summon marker 0 -49 70 {Tags:["MapVote","Riverboat"]}
scoreboard players set @e[type=marker,tag=Riverboat] MapValues 6

execute unless entity @e[type=marker,tag=Industry] run summon marker 0 -49 70 {Tags:["MapVote","Industry"]}
scoreboard players set @e[type=marker,tag=Industry] MapValues 7

execute unless entity @e[type=marker,tag=Train] run summon marker 0 -49 70 {Tags:["MapVote","Train"]}
scoreboard players set @e[type=marker,tag=Train] MapValues 8

execute unless entity @e[type=marker,tag=Cabin] run summon marker 0 -49 70 {Tags:["MapVote","Cabin"]}
scoreboard players set @e[type=marker,tag=Cabin] MapValues 9
