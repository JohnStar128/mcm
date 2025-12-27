#> One-time function that runs when the lobby loads for the first time
function mcm:props/summon {map:"lobby"}
function mcm:lobby/displays/init
execute as @e[type=item_display,tag=cosmetic_equip,tag=unequip_head] run data merge entity @s {item:{id:'minecraft:barrier'}}

function mcm:util/timer/new {name:"$cosmetic_display_rotate",start:0,period:360,operation:"add"}

return 1
