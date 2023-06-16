#> Teleport a player to the beacon they're looking at
execute at @e[type=marker,tag=airship_teleport_beacon] run function mcm:maps/airship/crystals/distance_check
execute as @e[type=marker,tag=airship_teleport_beacon,tag=valid,distance=..7] run tag @s remove valid
# does nothing if they weren't looking at a beacon
execute at @e[type=marker,tag=airship_teleport_beacon,tag=valid,limit=1,sort=nearest] rotated as @s run tp @s ~ ~ ~ ~ ~

execute if entity @e[type=marker,tag=airship_teleport_beacon,tag=valid] run playsound minecraft:block.amethyst_block.break block @a ~ ~ ~ 1 0
execute if entity @e[type=marker,tag=airship_teleport_beacon,tag=valid] at @s run playsound minecraft:block.amethyst_block.break block @a ~ ~ ~ 1 0
#> Remove crystal
execute if entity @e[type=marker,tag=airship_teleport_beacon,tag=valid] run clear @s carrot_on_a_stick{CustomModelData:1114}

execute if entity @e[type=marker,tag=airship_teleport_beacon,tag=captains_room,tag=valid] if score captains_room airship matches 0 run function mcm:maps/airship/crystals/captains_room
execute if entity @e[type=marker,tag=airship_teleport_beacon,tag=captains_room,tag=valid] run advancement grant @s only mcm:secrets/airship/captain

execute as @e[type=marker,tag=airship_teleport_beacon,tag=valid] run tag @s remove valid