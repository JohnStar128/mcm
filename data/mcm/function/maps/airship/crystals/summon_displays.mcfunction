#> Execute as player

execute at @s anchored eyes run summon armor_stand ~ ~ ~ {Tags:["tp_beacon_display_mount", "spawned"],response:1b,width:0.0,height:0.0,Marker:1b,Invisible:1b,Silent:1b} 
execute store result score @e[type=armor_stand,tag=tp_beacon_display_mount,tag=spawned,limit=1] playerUUID run data get entity @s UUID[0]
tag @s add hold_crystal

execute at @e[type=marker,tag=airship_teleport_beacon] run summon item_display ~ ~ ~ { \
    item:{id:"minecraft:amethyst_block",count:1b}, \
    Tags:["tp_beacon_display", "spawned"], \
    transformation:[0.25, 0.0, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, 0.0, 0.0, 0.25, 1.0, 0.0, 0.0, 0.0, 1.0], \
    teleport_duration:1 \
}
execute as @e[type=item_display,tag=tp_beacon_display,tag=spawned] at @s run scoreboard players operation @s targetUUID = @e[type=marker,tag=airship_teleport_beacon,sort=nearest,limit=1] playerUUID
scoreboard players operation @e[type=item_display,tag=tp_beacon_display,tag=spawned] playerUUID = @s playerUUID

tag @s add player_loc_temp

execute as @e[type=item_display,tag=spawned,tag=tp_beacon_display] run function mcm:maps/airship/crystals/transform_display
execute as @e[type=item_display,tag=spawned,tag=tp_beacon_display] run data modify entity @s Pos[1] set from entity @a[tag=player_loc_temp,limit=1] Pos[1]

tag @s remove player_loc_temp

tag @e[type=item_display,tag=spawned,tag=tp_beacon_display] remove spawned
tag @e[type=armor_stand,tag=tp_beacon_display_mount,tag=spawned] remove spawned
