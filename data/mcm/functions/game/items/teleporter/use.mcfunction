#> Clicking random teleporter teleports everyone except murderer and spectators
tag @e[type=marker,tag=PlayerSpawn] remove Occupied
execute as @a[tag=innocent,tag=!spectating] at @s run function mcm:game/items/teleporter/teleport_players
tag @s add usedTeleport
clear @s carrot_on_a_stick{CustomModelData:1112}
scoreboard players reset @s teleporterClick
scoreboard players reset @s adrenalineClick
scoreboard players reset @s knifeRetrieval