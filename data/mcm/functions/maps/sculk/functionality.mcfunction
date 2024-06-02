#> Kill out of bounds players (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/sculk] at @s if score $graceperiod CmdData matches ..0 run playsound minecraft:entity.evoker_fangs.attack block @a ~ ~ ~ 1 1 0
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/sculk] at @s if score $graceperiod CmdData matches ..0 run tellraw @s {"translate":"mcm.sculk.voidout","color":"red"}
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/sculk] run scoreboard players set $event_type temp 1
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/sculk] if score $graceperiod CmdData matches ..0 run function mcm:game/summary/add_event {translate:"mcm.game.events.killed_by_sculk_void", color:"green"}
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/sculk] at @s if score $graceperiod CmdData matches ..0 run function mcm:game/playerdeath

#> Keep spectators inbounds
#execute as @a[tag=spectating,predicate=!mcm:bounding_boxes/sculk] at @s if entity @e[type=marker,nbt={Tags:["sculk_boundingbox"]},distance=100..] run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
#execute as @a[tag=spectating,predicate=!mcm:bounding_boxes/sculk] at @s if entity @e[type=marker,nbt={Tags:["sculk_boundingbox"]},distance=100..] run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0

execute as @a[tag=spectating] at @s unless entity @e[type=marker,tag=sculk_boundingbox,distance=..99] run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s unless entity @e[type=marker,tag=sculk_boundingbox,distance=..99] run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating,predicate=!mcm:bounding_boxes/sculk_spectator] store result score $temp math run data get entity @s Pos[1]
execute as @a[tag=spectating,predicate=!mcm:bounding_boxes/sculk_spectator] if score $temp math matches ..92 at @s run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating,predicate=!mcm:bounding_boxes/sculk_spectator] if score $temp math matches ..92 run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]

#> Don't kill people in grace period
execute as @a[tag=queued,predicate=!mcm:bounding_boxes/sculk,tag=!spectating] at @s if score $graceperiod CmdData matches 1.. run tp @s @e[tag=PlayerSpawn,limit=1,sort=nearest]

#> Make the secret item frames invulnerable if they're empty
execute positioned 2977 109 979 as @e[type=minecraft:glow_item_frame,distance=..1,limit=1,sort=nearest] unless entity @s[nbt={Item:{id:"minecraft:globe_banner_pattern"}}] run data merge entity @s {Invulnerable:1b}
execute positioned 2978 109 979 as @e[type=minecraft:glow_item_frame,distance=..1,limit=1,sort=nearest] unless entity @s[nbt={Item:{id:"minecraft:glass_bottle"}}] run data merge entity @s {Invulnerable:1b}

#> Craft the secret item
execute positioned 2980 105 979 if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:globe_banner_pattern"}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:glass_bottle"}}] unless entity @e[type=item,distance=..5,nbt={Item:{Count:1b,id:"minecraft:stick",tag:{CustomModelData:1118}}}] run playsound minecraft:item.bottle.fill_dragonbreath block @a[distance=..5]
execute positioned 2980 105 979 if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:globe_banner_pattern"}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:glass_bottle"}}] unless entity @e[type=item,distance=..5,nbt={Item:{Count:1b,id:"minecraft:stick",tag:{CustomModelData:1118}}}] run playsound minecraft:item.book.page_turn block @a[distance=..5]

execute positioned 2980 105 979 if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:globe_banner_pattern"}}] if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:glass_bottle"}}] unless entity @e[type=item,distance=..5,nbt={Item:{Count:1b,id:"minecraft:stick",tag:{CustomModelData:1118}}}] run summon item ~ ~ ~ {Item:{Count:1b,id:"minecraft:stick",tag:{CustomModelData:1118,display:{Name:'[{"translate":"mcm.item.bottle","italic":false,"color":"aqua"}]'}}}}
execute positioned 2980 105 979 if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:stick",tag:{CustomModelData:1118}}}] run kill @e[type=item,distance=..5,nbt={Item:{id:"minecraft:glass_bottle"}}]
execute positioned 2980 105 979 if entity @e[type=item,distance=..1,nbt={Item:{Count:1b,id:"minecraft:stick",tag:{CustomModelData:1118}}}] run kill @e[type=item,distance=..5,nbt={Item:{id:"minecraft:globe_banner_pattern"}}]

#> Grant the advancement to the thrower of the item & register game event
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:stick",tag:{CustomModelData:1118}}}] at @s if block ~ ~-1 ~ minecraft:sculk run execute on origin run advancement grant @s only mcm:secrets/sculk/message
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:stick",tag:{CustomModelData:1118}}}] unless entity @s[tag=Processed] at @s if block ~ ~-1 ~ minecraft:sculk run execute on origin run scoreboard players set $event_type temp 1
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:stick",tag:{CustomModelData:1118}}}] unless entity @s[tag=Processed] at @s if block ~ ~-1 ~ minecraft:sculk run execute on origin run function mcm:game/summary/add_event {translate:"mcm.game.events.sculk.message", color:"green"}
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:stick",tag:{CustomModelData:1118}}}] unless entity @s[tag=Processed] at @s if block ~ ~-1 ~ minecraft:sculk run tag @s add Processed
