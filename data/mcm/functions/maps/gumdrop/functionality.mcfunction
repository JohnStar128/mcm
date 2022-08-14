#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/gumdrop,predicate=!mcm:bounding_boxes/gumdrop_cutscene,predicate=!mcm:bounding_boxes/gumdrop_cutscene_trigger] at @s run tp @s @e[tag=PlayerSpawn,tag=!available,limit=1,sort=random]

#> Speed on path
execute as @a[tag=queued] at @s if block ~ ~-2 ~ stone run effect give @s speed 1 1
execute as @a[tag=queued] at @s if block ~ ~-3 ~ stone run effect give @s speed 1 1
execute as @a[tag=queued] at @s if block ~ ~-4 ~ stone run effect give @s speed 1 1

#> Levitation on blue cloud in tower
execute as @a[predicate=mcm:bounding_boxes/gumdropcottoncloud] run effect give @s levitation 1 13 true

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
