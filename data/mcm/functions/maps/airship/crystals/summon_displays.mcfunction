#> Execute as player

execute at @s anchored eyes run summon armor_stand ~ ~ ~ {Tags:["tp_beacon_display_mount", "spawned"],response:1b,width:0.0,height:0.0,Marker:1b,Invisible:1b} 
execute at @s store result score @e[type=armor_stand,tag=tp_beacon_display_mount,tag=spawned,limit=1] playerUUID run data get entity @s UUID[0]
tag @s add hold_crystal

execute at @e[type=marker,tag=airship_teleport_beacon] run summon item_display ~ ~ ~ {item:{id:"minecraft:amethyst_block",Count:1b,tag:{}},Tags:["tp_beacon_display", "spawned"],transformation:[0.25, 0.0, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, 0.0, 0.0, 0.25, 1.0, 0.0, 0.0, 0.0, 1.0]}
execute as @e[type=item_display,tag=tp_beacon_display,tag=spawned] at @s run scoreboard players operation @s targetUUID = @e[type=marker,tag=airship_teleport_beacon,sort=nearest,limit=1] playerUUID
scoreboard players operation @e[type=item_display,tag=tp_beacon_display,tag=spawned] playerUUID = @s playerUUID

tag @s add player_loc_temp

execute as @e[type=item_display,tag=spawned,tag=tp_beacon_display] run ride @s mount @e[type=armor_stand,tag=spawned,tag=tp_beacon_display_mount,limit=1]
execute as @e[type=item_display,tag=spawned,tag=tp_beacon_display] run function mcm:maps/airship/crystals/transform_display

tag @s remove player_loc_temp

tag @e[type=item_display,tag=spawned,tag=tp_beacon_display] remove spawned
tag @e[type=armor_stand,tag=tp_beacon_display_mount,tag=spawned] remove spawned
