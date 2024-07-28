#> Windmill
function mcm:maps/canyon/windmill/animate_windmill

#> Kill players that fall in chasms
execute if score $graceperiod CmdData matches 1.. as @a[tag=queued,tag=!spectating,predicate=mcm:bounding_boxes/canyon_kill] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=nearest]
execute unless score $graceperiod CmdData matches 1.. as @a[tag=queued,tag=!spectating,predicate=mcm:bounding_boxes/canyon_kill] run scoreboard players set $event_type temp 1
execute unless score $graceperiod CmdData matches 1.. as @a[tag=queued,tag=!spectating,predicate=mcm:bounding_boxes/canyon_kill] run function mcm:game/summary/add_event {translate:"mcm.game.events.killed_by_chasm", color:"green"}
execute unless score $graceperiod CmdData matches 1.. as @a[tag=queued,tag=!spectating,predicate=mcm:bounding_boxes/canyon_kill] run tellraw @s {"translate":"mcm.canyon.fell","color":"red"}
execute unless score $graceperiod CmdData matches 1.. as @a[tag=queued,tag=!spectating,predicate=mcm:bounding_boxes/canyon_kill] at @s run function mcm:game/playerdeath

#> Give tnt when players click it
execute unless score $graceperiod CmdData matches ..1 as @e[type=interaction,tag=canyon_tnt_interaction] if data entity @s interaction run data remove entity @s interaction
execute if score $graceperiod CmdData matches ..1 as @e[type=interaction,tag=canyon_tnt_interaction] if data entity @s interaction at @s run function mcm:maps/canyon/give_tnt

#> Place tnt
execute as @e[type=interaction,tag=canyon_place_tnt_interaction] if data entity @s interaction at @s run function mcm:maps/canyon/place_tnt

#> Try explosion
execute if block 2972 -27 3045 stone_button[powered=true] run function mcm:maps/canyon/try_explosion
execute if block 2956 -26 3044 stone_button[powered=true] run function mcm:maps/canyon/try_explosion
#> Start
execute if score $canyon_enable_countdown CmdData matches 1 run scoreboard players add $canyon_fuse_timer CmdData 1
execute if score $canyon_fuse_timer CmdData matches 1 if score $canyon_partition CmdData matches 1 run playsound minecraft:entity.tnt.primed block @a 2972 -27 3045 2
execute if score $canyon_fuse_timer CmdData matches 1 if score $canyon_partition CmdData matches 2 run playsound minecraft:entity.tnt.primed block @a 2956 -26 3044 2
#> Boom
execute if score $canyon_fuse_timer CmdData matches 100 if score $canyon_partition CmdData matches 1 run playsound minecraft:entity.generic.explode block @a 2972 -27 3045 1
execute if score $canyon_fuse_timer CmdData matches 100 if score $canyon_partition CmdData matches 2 run playsound minecraft:entity.generic.explode block @a 2956 -26 3044 1
execute if score $canyon_fuse_timer CmdData matches 100 if score $canyon_partition CmdData matches 1 positioned 2971 -28 3045 as @a[distance=..5,tag=!spectating] run playsound minecraft:wilhelm_scream block @a ~ ~ ~ 
execute if score $canyon_fuse_timer CmdData matches 100 if score $canyon_partition CmdData matches 2 positioned 2957 -27 3044 as @a[distance=..5,tag=!spectating] run playsound minecraft:wilhelm_scream block @a ~ ~ ~
execute if score $canyon_fuse_timer CmdData matches 100 if score $canyon_partition CmdData matches 2 positioned 2971 -28 3045 as @a[distance=..5,tag=!spectating] run tellraw @s {"translate":"mcm.canyon.exploded","color":"red"}
execute if score $canyon_fuse_timer CmdData matches 100 if score $canyon_partition CmdData matches 2 positioned 2957 -27 3044 as @a[distance=..5,tag=!spectating] run tellraw @s {"translate":"mcm.canyon.exploded","color":"red"}
scoreboard players set $event_type temp 1
execute if score $canyon_fuse_timer CmdData matches 100 if score $canyon_partition CmdData matches 1 positioned 2971 -28 3045 as @a[distance=..5,tag=!spectating] run function mcm:game/summary/add_event {translate:"mcm.game.events.killed_by_explosion", color:"green"}
execute if score $canyon_fuse_timer CmdData matches 100 if score $canyon_partition CmdData matches 2 positioned 2957 -27 3044 as @a[distance=..5,tag=!spectating] run function mcm:game/summary/add_event {translate:"mcm.game.events.killed_by_explosion", color:"green"}
execute if score $canyon_fuse_timer CmdData matches 100 if score $canyon_partition CmdData matches 1 run place template mcm:canyon_secret_open_p1 2963 -29 3042
execute if score $canyon_fuse_timer CmdData matches 100 if score $canyon_partition CmdData matches 2 run place template mcm:canyon_secret_open_p2 2954 -28 3040
execute if score $canyon_fuse_timer CmdData matches 100 if score $canyon_partition CmdData matches 1 positioned 2971 -28 3045 as @a[distance=..5,tag=!spectating] run function mcm:game/playerdeath
execute if score $canyon_fuse_timer CmdData matches 100 if score $canyon_partition CmdData matches 2 positioned 2957 -27 3044 as @a[distance=..5,tag=!spectating] run function mcm:game/playerdeath
execute if score $canyon_fuse_timer CmdData matches 100 run kill @e[type=block_display,tag=canyon_tnt]


#> Secret activation
execute as @e[type=interaction,tag=canyon_hat_interaction] if data entity @s interaction at @s run function mcm:maps/canyon/give_secret

#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/canyon] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=random]

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 11 unless predicate mcm:bounding_boxes/canyon run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 11 unless predicate mcm:bounding_boxes/canyon run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
