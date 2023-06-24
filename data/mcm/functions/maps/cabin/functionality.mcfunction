#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/cabin] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=random]

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 9 unless predicate mcm:bounding_boxes/cabin run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 9 unless predicate mcm:bounding_boxes/cabin run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0

#> No longer freezing
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/cabin_patios] run scoreboard players reset @s freezing
execute as @a[tag=freezing,predicate=!mcm:bounding_boxes/cabin_patios] run tag @s remove freezing
execute as @a[tag=freezing,tag=spectating] run tag @s remove freezing
#> Freezing outside
execute unless score $graceperiod CmdData matches 1.. as @a[tag=queued,tag=!spectating,predicate=mcm:bounding_boxes/cabin_patios] run scoreboard players add @s freezing 1
execute as @a[tag=queued,tag=!spectating,scores={freezing=1}] run tag @s add freezing
execute as @a[tag=freezing,scores={freezing=1}] run tellraw @s {"translate":"mcm.cabin.freezing.start","color":"aqua","italic":true}
execute as @a[tag=freezing,scores={freezing=100}] run tellraw @s {"translate":"mcm.cabin.freezing.middle","color":"aqua","italic":true}
execute as @a[tag=freezing,scores={freezing=200}] run tellraw @s {"translate":"mcm.cabin.freezing.death","color":"red","italic":true}
execute as @a[tag=freezing,scores={freezing=200}] run function mcm:game/playerdeath
execute as @a[tag=freezing] run effect give @s slowness 1 2 true 
execute as @a[tag=freezing] at @s anchored eyes run particle snowflake ^ ^-0.1 ^0.5 ^ ^ ^ 0 0 force
execute as @a[tag=freezing,scores={freezing=50..}] at @s anchored eyes run particle snowflake ^ ^-0.1 ^0.5 ^ ^ ^ 0 0 force
execute as @a[tag=freezing,scores={freezing=100..}] at @s anchored eyes run particle snowflake ^ ^-0.1 ^0.5 ^ ^ ^ 0 0 force
execute as @a[tag=freezing,scores={freezing=150..}] at @s anchored eyes run particle snowflake ^ ^-0.1 ^0.5 ^ ^ ^ 0 0 force
