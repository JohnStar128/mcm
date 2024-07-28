execute if score $graceperiod CmdData matches ..1 positioned as @e[type=marker,tag=Chandelier] as @a[tag=!spectating,limit=3,distance=..3] run scoreboard players add $chandelierdroptimer CmdData 1
execute as @e[type=marker,tag=Chandelier] at @s unless entity @a[tag=!spectating,limit=3,distance=..3] run scoreboard players set $chandelierdroptimer CmdData 0

execute if score $chandelierdroptimer CmdData matches 100.. run tag @e[type=marker,tag=Chandelier,tag=!canDropChandelier] add canDropChandelier
execute if score $chandelierdroptimer CmdData matches 100 run scoreboard players set $event_type temp 1
execute if score $chandelierdroptimer CmdData matches 100 positioned as @e[type=marker,tag=Chandelier] as @a[tag=!spectating,distance=..3] run function mcm:game/summary/add_event {translate:"mcm.game.events.library_chandelier", color:"green"}
execute as @e[type=marker,tag=canDropChandelier] at @s run function mcm:maps/library2/dropchandelier

#> Give books when players click them
execute unless score $graceperiod CmdData matches ..1 as @e[type=interaction,tag=book_interaction] if data entity @s interaction run data remove entity @s interaction
execute if score $graceperiod CmdData matches ..1 as @e[type=interaction,tag=book_interaction] if data entity @s interaction at @s run function mcm:maps/library2/give_book

#> Book Return Basement Unlock
execute unless score $stairsopen CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:2}]} run fill 940 140 1083 940 142 1085 air replace
execute unless score $stairsopen CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:2}]} run fill 940 140 1123 940 142 1125 air replace
execute unless score $stairsopen CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:2}]} run particle electric_spark 940 141 1084 1.5 1 1.5 0 40 force
execute unless score $stairsopen CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:2}]} run particle electric_spark 940 141 1123 1.5 1 1.5 0 40 force
execute unless score $stairsopen CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:2}]} run playsound minecraft:block.wooden_door.open block @a 940 141 1084 3 1 0.0
execute unless score $stairsopen CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:2}]} run playsound minecraft:block.chest.open block @a 940 141 1084 3 0.8 0.0
execute unless score $stairsopen CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:2}]} run playsound minecraft:block.wooden_door.open block @a 940 141 1123 3 1 0.0
execute unless score $stairsopen CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:2}]} run playsound minecraft:block.chest.open block @a 940 141 1123 3 0.8 0.0
execute unless score $stairsopen CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:2}]} run scoreboard players set $stairsopen CmdData 1

#> When you have all 5 books, open the book in the basement
execute unless score $flipbook CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:5}]} run tellraw @a[tag=queued] ["\n", {"translate":"mcm.library.evil","color":"red","italic":true}, "\n"]
execute unless score $flipbook CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:5}]} run playsound minecraft:block.end_portal.spawn block @a[tag=queued] ~ ~ ~ 1 0 1
execute unless score $flipbook CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:5}]} run fill 922 130 1107 920 130 1101 air
execute unless score $flipbook CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:5}]} run fill 922 130 1108 920 130 1108 dark_oak_stairs[facing=south,half=bottom,shape=straight]
execute unless score $flipbook CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:5}]} run fill 922 130 1100 920 130 1100 dark_oak_stairs[facing=north,half=bottom,shape=straight]
execute unless score $flipbook CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:5}]} run scoreboard players set $flipbook CmdData 1
execute if score $flipbook CmdData matches 1.. if block 976 134 1099 chest{Items:[{id:"minecraft:book",count:5}]} run setblock 976 134 1099 minecraft:chest destroy

#> When people interact with the book, flip the map
# Enable the trigger for that
execute if score $flipbook CmdData matches 1.. run scoreboard players enable @a[tag=!spectating,predicate=mcm:bounding_boxes/flipbook] flipmap
execute if score $flippingmap CmdData matches 1 as @a run trigger flipmap set 0

execute if score $flipbook CmdData matches 1.. if score @a[tag=!spectating,predicate=mcm:bounding_boxes/flipbook,limit=1] flipmap matches 1.. run scoreboard players set $flippingmap CmdData 1
execute if score $flipbook CmdData matches 1.. if score @a[tag=!spectating,predicate=mcm:bounding_boxes/flipbook,limit=1] flipmap matches 1.. run scoreboard players set $mapflipeffect CmdData 1
execute if score $mapflipeffect CmdData matches 1 run function mcm:maps/library2/mapflipeffect
execute if score $mapflipeffect CmdData matches 1 run scoreboard players set $mapflipeffect CmdData 0
execute as @a[scores={flipmap=1..}] run scoreboard players set $event_type temp 1
execute as @a[scores={flipmap=1..}] run function mcm:game/summary/add_event {translate:"mcm.game.events.library_flip", color:"green"}
scoreboard players reset @a[scores={flipmap=1..}] flipmap
execute if score $flippingmap CmdData matches 1 run function mcm:maps/library2/flipmap

# Enable and run trigger if player chooses not to flip map
execute if score $flipbook CmdData matches 1.. run scoreboard players enable @a[predicate=mcm:bounding_boxes/flipbook] dontfliplibrary
execute if score $flipbook CmdData matches 1.. if score @a[predicate=mcm:bounding_boxes/flipbook,limit=1] dontfliplibrary matches 1.. run tellraw @p {"translate":"mcm.library.coward","italic":true,"color":"yellow"}
scoreboard players reset @a[scores={dontfliplibrary=1..}] dontfliplibrary

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 if score $library_flip CmdData matches 0 unless predicate mcm:bounding_boxes/library2 run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 if score $library_flip CmdData matches 0 unless predicate mcm:bounding_boxes/library2 run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 if score $library_flip CmdData matches 1 unless predicate mcm:bounding_boxes/library2_flipped run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 1 if score $library_flip CmdData matches 1 unless predicate mcm:bounding_boxes/library2_flipped run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0

#> LIBRARY FLIPPING WORLD BORDER VALUE NOTES
#> /worldborder warning distance 950
#> /worldborder set 2210
