
scoreboard players set $event_type temp 1
function mcm:game/summary/add_event {translate:"mcm.game.events.teleporter",color:"green"}

#> Clicking random teleporter teleports everyone except murderer and spectators
tag @e[type=marker,tag=PlayerSpawn] remove Occupied
execute as @a[tag=queued,tag=!murderer,tag=!spectating] at @s run function mcm:game/items/murderer/teleport_players

execute as @a[tag=queued] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 1 1 1
execute as @a[tag=queued] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 1 2 1 

tag @s add usedTeleport
function mcm:items/retrieve/mainhand
function mcm:util/reset_carrot_on_stick