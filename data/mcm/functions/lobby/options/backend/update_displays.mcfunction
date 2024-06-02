
execute as @e[type=text_display,tag=option,tag=updatable] run function mcm:lobby/options/backend/call with entity @s Passengers[0].data

execute as @e[type=interaction,tag=option,tag=updatable] run function mcm:lobby/options/backend/update_interactions with entity @s Passengers[0].data