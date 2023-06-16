kill @e[type=marker,tag=airship_teleport_beacon]

# Water Wheel Island
summon marker -693 77 51 {Tags:["airship_teleport_beacon"]}

#Heart Island
summon marker -586 79 2 {Tags:["airship_teleport_beacon"]}

#Record Shop
summon marker -593 59 5 {Tags:["airship_teleport_beacon"]}

# Ship
summon marker -636 52 43 {Tags:["airship_teleport_beacon"]}

# Lower Mine
summon marker -705 31 28 {Tags:["airship_teleport_beacon"]}

execute as @e[type=marker,tag=airship_teleport_beacon] store result score @s playerUUID run data get entity @s UUID[0]