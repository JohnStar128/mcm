
execute store result storage mcm:args id int 1 run scoreboard players get @s loadout_knife

function mcm:items/id with storage mcm:args
function mcm:items/mc_id with storage mcm:args
function mcm:items/get_item_nbt with storage mcm:args

data merge storage mcm:args {nbt:{loadout:knife}}

execute as @e[type=snowball,sort=nearest,limit=1] at @s run function mcm:game/items/knife/throw_inner with storage mcm:args

scoreboard players reset @s throwKnife
data remove storage mcm:args nbt
data remove storage mcm:args mc_id
data remove storage mcm:args item
data remove storage mcm:args id