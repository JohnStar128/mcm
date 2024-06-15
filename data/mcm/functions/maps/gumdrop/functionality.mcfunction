#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/gumdrop,predicate=!mcm:bounding_boxes/gumdrop_cutscene,predicate=!mcm:bounding_boxes/gumdrop_cutscene_trigger] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=random]

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s unless predicate mcm:bounding_boxes/gumdrop run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s unless predicate mcm:bounding_boxes/gumdrop run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0

#> Speed on path
execute as @a[tag=queued,tag=!spectating] at @s if block ~ ~-2 ~ stone run effect give @s speed 1 1
execute as @a[tag=queued,tag=!spectating] at @s if block ~ ~-3 ~ stone run effect give @s speed 1 1
execute as @a[tag=queued,tag=!spectating] at @s if block ~ ~-4 ~ stone run effect give @s speed 1 1

#> Sticky stepping on gumdrops
execute as @a[tag=queued,tag=!spectating,predicate=mcm:gumdrop_cant_jump_on] run effect give @s jump_boost 3 254 true 
execute as @a[tag=queued,tag=!spectating,predicate=mcm:gumdrop_cant_jump_on] run effect give @s slowness 3 4 true 
execute as @a[tag=queued,tag=!spectating,predicate=mcm:gumdrop_cant_jump_on,scores={jump=1..}] at @s run playsound minecraft:block.honey_block.fall block @s ~ ~ ~ 3 0.8 1
execute as @a[tag=queued,tag=!spectating,predicate=mcm:gumdrop_cant_jump_on,scores={jump=1..}] run scoreboard players set @s jump 0

#> Slowness in magenta marshes
execute as @a[tag=queued,tag=innocent,tag=!spectating] at @s if block ~ ~-1 ~ magenta_concrete_powder if block ~ ~-3 ~ diamond_block run effect give @s slowness 1 1 true
execute as @a[tag=queued,tag=innocent,tag=!spectating] at @s if block ~ ~-1 ~ magenta_wool if block ~ ~-3 ~ diamond_block run effect give @s slowness 1 1 true
execute as @a[tag=queued,tag=innocent,tag=!spectating] at @s if block ~ ~-1 ~ bubble_coral_block if block ~ ~-3 ~ diamond_block run effect give @s slowness 1 1 true

#> Levitation Clouds
#Gumdrop Tower
execute as @a[predicate=mcm:bounding_boxes/gumdropcottoncloudtower] run effect give @s levitation 1 13 true
#Large Donut
execute as @a[predicate=mcm:bounding_boxes/gumdropcottonclouddonutbig1] run effect give @s jump_boost 1 17 true
execute as @a[predicate=mcm:bounding_boxes/gumdropcottonclouddonutbig2] run effect give @s jump_boost 1 13 true
#Small Donut
execute as @a[predicate=mcm:bounding_boxes/gumdropcottonclouddonutsmall] run effect give @s jump_boost 1 8 true

#> Set Cutscene Score & Trigger Cutscene [WIP - Brownie, Kur]
execute as @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] run function mcm:maps/gumdrop/gumdropcutscene
execute as @a[predicate=mcm:bounding_boxes/gumdrop_cutscene_trigger] run gamemode spectator @s
execute as @a[predicate=mcm:bounding_boxes/gumdrop_cutscene_trigger] run tp @s 775.5 -19 -3018 0 0
execute if entity @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] run scoreboard players add $gumdropcutscene CmdData 1

#Reset cutscene timer
execute if score $gumdropcutscene CmdData matches 388 run scoreboard players set $gumdropcutscene CmdData 0
execute unless entity @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] run scoreboard players set $gumdropcutscene CmdData 0

#Kill Frames if no one's inside cutscene
execute unless entity @a[predicate=mcm:bounding_boxes/gumdrop_cutscene] run kill @e[type=glow_item_frame,tag=gumdrop_cutscene]
