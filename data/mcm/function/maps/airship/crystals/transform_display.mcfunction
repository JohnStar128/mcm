
scoreboard players operation $tempuuid playerUUID = @s targetUUID

execute at @e[type=marker,tag=airship_teleport_beacon,predicate=mcm:matches_uuid] as @a[tag=player_loc_temp] run function mcm:math/dist

# Algorithm scale = (1 - dist/200)*0.25

scoreboard players set $temp vars 200
scoreboard players operation $temp vars -= $distance vars

execute if score $distance vars matches ..5 run kill @s


data merge storage mcm:transformation {transformation:[0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0.75f,0f,0f,0f,1f]}

execute store result storage mcm:transformation transformation[0] float 0.0009375 run scoreboard players get $temp vars
execute store result storage mcm:transformation transformation[5] float 0.0009375 run scoreboard players get $temp vars
execute store result storage mcm:transformation transformation[10] float 0.0009375 run scoreboard players get $temp vars 

data modify entity @s transformation set from storage mcm:transformation transformation

scoreboard players reset $temp vars
