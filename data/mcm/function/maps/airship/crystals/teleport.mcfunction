advancement revoke @s only mcm:items/crystal

#> Teleport a player to the beacon they're looking at
execute at @e[type=marker,tag=airship_teleport_beacon] run function mcm:maps/airship/crystals/distance_check
execute as @e[type=marker,tag=airship_teleport_beacon,tag=valid,distance=..7] run tag @s remove valid

#> Wasn't looking at a beacon
execute unless entity @e[type=marker,tag=airship_teleport_beacon,tag=valid] at @s run summon item ~ ~ ~ {Item:{id:"stick"},PickupDelay:1,Tags:["new"]}
execute unless entity @e[type=marker,tag=airship_teleport_beacon,tag=valid] as @e[type=item,tag=new] run data modify entity @s Item set from storage mcm:items crystal
execute unless entity @e[type=marker,tag=airship_teleport_beacon,tag=valid] run data modify entity @e[type=item,tag=new,limit=1] Owner set from entity @s UUID
execute unless entity @e[type=marker,tag=airship_teleport_beacon,tag=valid] run data modify entity @e[type=item,tag=new,limit=1] Thrower set from entity @s UUID
execute unless entity @e[type=marker,tag=airship_teleport_beacon,tag=valid] as @e[type=item,tag=new] run tag @s remove new
execute unless entity @e[type=marker,tag=airship_teleport_beacon,tag=valid] run return fail


execute at @e[type=marker,tag=airship_teleport_beacon,tag=valid,limit=1,sort=nearest] rotated as @s run tp @s ~ ~ ~ ~ ~
execute at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0

function mcm:summary/add_event {translate:"mcm.game.events.airship_used_tp_crystal", color: "green",type:1}

# secret stuff
execute if entity @e[type=marker,tag=airship_teleport_beacon,tag=captains_room,tag=valid] as @e[type=interaction,tag=captain_door] run function mcm:util/interactable/remove
execute if entity @e[type=marker,tag=airship_teleport_beacon,tag=captains_room,tag=valid] run title @s actionbar {"translate":"mcm.airship.captain.unlock"}
execute if entity @e[type=marker,tag=airship_teleport_beacon,tag=captains_room,tag=valid] run function mcm:summary/add_event {translate:"mcm.game.events.airship_captain_room",color:"green",type:1}
execute if entity @e[type=marker,tag=airship_teleport_beacon,tag=captains_room,tag=valid] run advancement grant @s only mcm:secrets/airship/captain

execute as @e[type=marker,tag=airship_teleport_beacon,tag=valid] run tag @s remove valid
