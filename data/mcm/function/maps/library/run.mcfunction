data merge storage mcm:args {temp:{stage:"game_loop"}}
execute store success score $temp vars run data modify storage mcm:temp stage set from storage mcm:game_state state.current_stage
data remove storage mcm:args temp

execute if score $temp vars matches 0 positioned as @e[type=marker,tag=chandelier] as @a[tag=!spectator,limit=3,distance=..3] run scoreboard players add $chandelierdroptimer vars 1
execute as @e[type=marker,tag=chandelier] at @s unless entity @a[tag=!spectator,limit=3,distance=..3] run scoreboard players set $chandelierdroptimer vars 0

#> Enable taking books
execute if score $temp vars matches 0 as @e[type=armor_stand,tag=bookspawn,tag=has_book] run data modify entity @s DisabledSlots set value 0

execute if score $chandelierdroptimer vars matches 100.. run tag @e[type=marker,tag=chandelier,tag=!canDropChandelier] add canDropChandelier
execute if score $chandelierdroptimer vars matches 100.. at @e[type=marker,tag=chandelier] as @a[tag=!spectator,distance=..3] run function mcm:game/summary/add_event {translate:"mcm.game.events.library_chandelier", color:"green",type:1}
execute as @e[type=marker,tag=canDropChandelier] at @s run function mcm:maps/library/dropchandelier

#> Book Return Basement Unlock
execute unless score $stairsopen vars matches 1.. if items block 945 104 996 container.0 *[count=2] run place template minecraft:library_basementwall_empty 981 110 979 none none
execute unless score $stairsopen vars matches 1.. if items block 945 104 996 container.0 *[count=2] run particle electric_spark 980.52 112.00 980.48 1.5 1 1.5 0 40 force
execute unless score $stairsopen vars matches 1.. if items block 945 104 996 container.0 *[count=2] run particle electric_spark 980.56 112.00 1020.61 1.5 1 1.5 0 40 force
execute unless score $stairsopen vars matches 1.. if items block 945 104 996 container.0 *[count=2] run playsound block.wooden_door.open block @a[tag=queued] 980 110 1020 3 1 0.0
execute unless score $stairsopen vars matches 1.. if items block 945 104 996 container.0 *[count=2] run playsound block.chest.open block @a[tag=queued] 980 110 1020 3 0.8 0.0
execute unless score $stairsopen vars matches 1.. if items block 945 104 996 container.0 *[count=2] run playsound block.wooden_door.open block @a[tag=queued] 980 110 980 3 1 0.0
execute unless score $stairsopen vars matches 1.. if items block 945 104 996 container.0 *[count=2] run playsound block.chest.open block @a[tag=queued] 980 110 980 3 0.8 0.0
execute unless score $stairsopen vars matches 1.. if items block 945 104 996 container.0 *[count=2] run scoreboard players set $stairsopen vars 1

#> When you have all 5 books, open the book in the basement
execute unless score $flipbook vars matches 1.. if items block 945 104 996 container.0 *[count=5] run tellraw @a[tag=queued] ["\n", {"translate":"mcm.library.evil","color":"red","italic":true}, "\n"]
execute unless score $flipbook vars matches 1.. if items block 945 104 996 container.0 *[count=5] run playsound block.end_portal.spawn block @a[tag=queued] ~ ~ ~ 1 0 1
execute unless score $flipbook vars matches 1.. if items block 945 104 996 container.0 *[count=5] run place template minecraft:librarysecret 961 100 996
execute unless score $flipbook vars matches 1.. if items block 945 104 996 container.0 *[count=5] run scoreboard players set $flipbook vars 1

#> When people interact with the book, flip the map
execute unless score $mapflipeffect vars matches 1 if score $flipbook vars matches 1.. if score @a[tag=!spectator,predicate=mcm:map_bounds/library/flipbook,limit=1] map_trigger matches 1 run function mcm:maps/library/mapflipeffect

execute unless score $flippingmap vars matches 1 as @a[tag=!spectator,predicate=mcm:map_bounds/library/flipbook,scores={map_trigger=1}] run function mcm:summary/add_event {translate:"mcm.game.events.library_flip", color:"green",type:1}
execute unless score $flippingmap vars matches 1 if score $flipbook vars matches 1.. if score @a[tag=!spectator,predicate=mcm:map_bounds/library/flipbook,limit=1] map_trigger matches 1 run scoreboard players set $flippingmap vars 1
execute unless score $fliptimer vars matches 156.. if score $flippingmap vars matches 1 run function mcm:maps/library/flipmap

# Enable and run trigger if player chooses not to flip map
execute if score $flipbook vars matches 1.. as @a[predicate=mcm:map_bounds/library/flipbook,limit=1,scores={map_trigger=2}] run tellraw @s {"translate":"mcm.library.coward","italic":true,"color":"yellow"}

#> LIBRARY FLIPPING WORLD BORDER VALUE NOTES
#> /worldborder warning distance 950
#> /worldborder set 2210
