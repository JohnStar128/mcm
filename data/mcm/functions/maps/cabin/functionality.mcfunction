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
execute as @a[tag=freezing,scores={freezing=200}] run scoreboard players set $event_type temp 1
execute as @a[tag=freezing,scores={freezing=200}] run function mcm:game/summary/add_event {translate:"mcm.game.events.killed_by_freezing", color:"aqua"}
execute as @a[tag=freezing,scores={freezing=200}] run function mcm:game/playerdeath
execute as @a[tag=freezing] run effect give @s slowness 1 2 true 
execute as @a[tag=freezing] at @s anchored eyes run particle snowflake ^ ^-0.1 ^0.5 ^ ^ ^ 0 0 force
execute as @a[tag=freezing,scores={freezing=50..}] at @s anchored eyes run particle snowflake ^ ^-0.1 ^0.5 ^ ^ ^ 0 0 force
execute as @a[tag=freezing,scores={freezing=100..}] at @s anchored eyes run particle snowflake ^ ^-0.1 ^0.5 ^ ^ ^ 0 0 force
execute as @a[tag=freezing,scores={freezing=150..}] at @s anchored eyes run particle snowflake ^ ^-0.1 ^0.5 ^ ^ ^ 0 0 force

#> Enable Flint after Grace Period
execute if score $graceperiod CmdData matches 0 as @e[type=interaction,tag=cabin_flint] run data merge entity @s {response:1b}

#> Generator room
execute as @a[scores={cabin_secret=1}] run scoreboard players set $generator cabin_secret 1
execute as @a[scores={cabin_secret=1}] run schedule function mcm:maps/cabin/remove_lights 19t
execute as @a[scores={cabin_secret=1}] run schedule function mcm:maps/cabin/lights 1s
execute as @a[scores={cabin_secret=1}] run setblock -2020 95 3036 minecraft:blast_furnace[lit=true,facing=east]
execute as @a[scores={cabin_secret=1}] run setblock -2020 95 3029 minecraft:blast_furnace[lit=true,facing=east]
execute as @a[scores={cabin_secret=1}] run playsound minecraft:item.firecharge.use block @a -2020 97 3032 3 0.5 1
execute as @a[scores={cabin_secret=1}] run scoreboard players set $event_type temp 1
execute as @a[scores={cabin_secret=1}] run function mcm:game/summary/add_event {translate:"mcm.game.events.cabin_generator",color:"green"}
execute as @a[scores={cabin_secret=1},advancements={mcm:secrets/cabin/generator=false}] run advancement grant @s only mcm:secrets/cabin/generator
execute as @a[scores={cabin_secret=1}] run scoreboard players add @s cabin_secret 1


#> Dumbwaiters

execute if score $generator cabin_secret matches 1 if score $button_timer_1 cabin_secret matches ..0 positioned -2013 97 3038 if block ~ ~ ~ warped_button[powered=true] as @a[predicate=mcm:bounding_boxes/cabin_dumbwaiter_1] at @s run playsound minecraft:entity.minecart.riding block @s ~ ~ ~ 2 1 1
execute if score $generator cabin_secret matches 1 if score $button_timer_1 cabin_secret matches ..0 positioned -2013 97 3038 if block ~ ~ ~ warped_button[powered=true] run tp @a[predicate=mcm:bounding_boxes/cabin_dumbwaiter_1] -2013 115 3038
execute if score $generator cabin_secret matches 1 positioned -2013 97 3038 if block ~ ~ ~ warped_button[powered=true] run scoreboard players set $button_timer_1 cabin_secret 5
execute if score $generator cabin_secret matches 1 positioned -2013 97 3038 if block ~ ~ ~ warped_button[powered=true] run setblock ~ ~ ~ warped_button[face=wall,facing=west,powered=false]
execute if score $generator cabin_secret matches 1 if score $button_timer_1 cabin_secret matches ..0 positioned -2013 117 3038 if block ~ ~ ~ warped_button[powered=true] as @a[predicate=mcm:bounding_boxes/cabin_dumbwaiter_2] at @s run playsound minecraft:entity.minecart.riding block @s ~ ~ ~ 2 1 1
execute if score $generator cabin_secret matches 1 if score $button_timer_2 cabin_secret matches ..0 positioned -2013 117 3038 if block ~ ~ ~ warped_button[powered=true] run tp @a[predicate=mcm:bounding_boxes/cabin_dumbwaiter_2] -2014 122 3035
execute if score $generator cabin_secret matches 1 positioned -2013 117 3038 if block ~ ~ ~ warped_button[powered=true] run scoreboard players set $button_timer_2 cabin_secret 5
execute if score $generator cabin_secret matches 1 positioned -2013 117 3038 if block ~ ~ ~ warped_button[powered=true] run setblock ~ ~ ~ warped_button[face=wall,facing=west,powered=false]
execute if score $generator cabin_secret matches 1 if score $button_timer_3 cabin_secret matches ..0 positioned -2013 116 3038 if block ~ ~ ~ warped_button[powered=true] as @a[predicate=mcm:bounding_boxes/cabin_dumbwaiter_2] at @s run playsound minecraft:entity.minecart.riding block @s ~ ~ ~ 2 1 1
execute if score $generator cabin_secret matches 1 if score $button_timer_3 cabin_secret matches ..0 positioned -2013 116 3038 if block ~ ~ ~ warped_button[powered=true] run tp @a[predicate=mcm:bounding_boxes/cabin_dumbwaiter_2] -2013 95 3038
execute if score $generator cabin_secret matches 1 positioned -2013 116 3038 if block ~ ~ ~ warped_button[powered=true] run scoreboard players set $button_timer_3 cabin_secret 5
execute if score $generator cabin_secret matches 1 positioned -2013 116 3038 if block ~ ~ ~ warped_button[powered=true] run setblock ~ ~ ~ warped_button[face=wall,facing=west,powered=false]
execute if score $generator cabin_secret matches 1 if score $button_timer_4 cabin_secret matches ..0 positioned -2014 123 3035 if block ~ ~ ~ warped_button[powered=true] as @a[predicate=mcm:bounding_boxes/cabin_dumbwaiter_3] at @s run playsound minecraft:entity.minecart.riding block @s ~ ~ ~ 2 1 1
execute if score $generator cabin_secret matches 1 if score $button_timer_4 cabin_secret matches ..0 positioned -2014 123 3035 if block ~ ~ ~ warped_button[powered=true] run tp @a[predicate=mcm:bounding_boxes/cabin_dumbwaiter_3] -2013 115 3038
execute if score $generator cabin_secret matches 1 positioned -2014 123 3035 if block ~ ~ ~ warped_button[powered=true] run scoreboard players set $button_timer_4 cabin_secret 5
execute if score $generator cabin_secret matches 1 positioned -2014 123 3035 if block ~ ~ ~ warped_button[powered=true] run setblock ~ ~ ~ warped_button[face=wall,facing=west,powered=false]

execute if score $generator cabin_secret matches 1 if score $button_timer_5 cabin_secret matches ..0 positioned -1982 97 3038 if block ~ ~ ~ warped_button[powered=true] as @a[predicate=mcm:bounding_boxes/cabin_dumbwaiter_4] at @s run playsound minecraft:entity.minecart.riding block @s ~ ~ ~ 2 1 1
execute if score $generator cabin_secret matches 1 if score $button_timer_5 cabin_secret matches ..0 positioned -1982 97 3038 if block ~ ~ ~ warped_button[powered=true] run tp @a[predicate=mcm:bounding_boxes/cabin_dumbwaiter_4] -1981 105 3037
execute if score $generator cabin_secret matches 1 positioned -1982 97 3038 if block ~ ~ ~ warped_button[powered=true] run scoreboard players set $button_timer_5 cabin_secret 5
execute if score $generator cabin_secret matches 1 positioned -1982 97 3038 if block ~ ~ ~ warped_button[powered=true] run setblock ~ ~ ~ warped_button[face=wall,facing=north,powered=false]
execute if score $generator cabin_secret matches 1 if score $button_timer_6 cabin_secret matches ..0 positioned -1981 106 3037 if block ~ ~ ~ warped_button[powered=true] as @a[predicate=mcm:bounding_boxes/cabin_dumbwaiter_5] at @s run playsound minecraft:entity.minecart.riding block @s ~ ~ ~ 2 1 1
execute if score $generator cabin_secret matches 1 if score $button_timer_6 cabin_secret matches ..0 positioned -1981 106 3037 if block ~ ~ ~ warped_button[powered=true] run tp @a[predicate=mcm:bounding_boxes/cabin_dumbwaiter_5] -1982 96 3038
execute if score $generator cabin_secret matches 1 positioned -1981 106 3037 if block ~ ~ ~ warped_button[powered=true] run scoreboard players set $button_timer_6 cabin_secret 5
execute if score $generator cabin_secret matches 1 positioned -1981 106 3037 if block ~ ~ ~ warped_button[powered=true] run setblock ~ ~ ~ warped_button[face=wall,facing=west,powered=false]

#> Button timers 
scoreboard players remove $button_timer_1 cabin_secret 1
scoreboard players remove $button_timer_2 cabin_secret 1
scoreboard players remove $button_timer_3 cabin_secret 1
scoreboard players remove $button_timer_4 cabin_secret 1
scoreboard players remove $button_timer_5 cabin_secret 1
scoreboard players remove $button_timer_6 cabin_secret 1
