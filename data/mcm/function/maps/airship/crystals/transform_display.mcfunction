
scoreboard players operation $tempuuid playerUUID = @s targetUUID

execute at @e[type=marker,tag=airship_teleport_beacon,predicate=mcm:matches_uuid] run function mcm:maps/airship/crystals/transform_display_inner

# Algorithm scale = (1 - dist/200)*0.25

#scoreboard players operation $out temp *= $2 math
scoreboard players set $temp temp 200
scoreboard players operation $temp temp -= $out temp

execute if score $out temp matches ..5 run kill @s


data merge storage mcm:transformation {transformation:[0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0.75f,0f,0f,0f,1f]}

execute store result storage mcm:transformation transformation[0] float 0.0009375 run scoreboard players get $temp temp
execute store result storage mcm:transformation transformation[5] float 0.0009375 run scoreboard players get $temp temp
execute store result storage mcm:transformation transformation[10] float 0.0009375 run scoreboard players get $temp temp

data modify entity @s transformation set from storage mcm:transformation transformation
