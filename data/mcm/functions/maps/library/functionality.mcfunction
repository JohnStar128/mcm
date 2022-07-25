execute as @e[type=marker,tag=Chandelier] at @s if entity @a[tag=!spectating,limit=3] if entity @a[tag=!spectating,limit=3,distance=..3] run scoreboard players add $chandelierdroptimer CmdData 1
execute as @e[type=marker,tag=Chandelier] at @s unless entity @a[tag=!spectating,limit=3,distance=..3] run scoreboard players set $chandelierdroptimer CmdData 0


execute if score $chandelierdroptimer CmdData matches 100.. run tag @e[type=marker,tag=Chandelier,tag=!canDropChandelier] add canDropChandelier
execute as @e[type=marker,tag=canDropChandelier] at @s run function mcm:game/dropchandelier

#> Track how many books players have
execute as @a[advancements={mcm:item_counts/books=true}] store result score @s books run clear @s book 0
execute as @a[advancements={mcm:item_counts/books=true}] run advancement revoke @s only mcm:item_counts/books
execute as @a[scores={droppedBook=1..}] store result score @s books run clear @s book 0 
execute as @a[scores={droppedBook=1..}] run scoreboard players reset @s droppedBook

#>Book Return Basement Unlock
#execute store result score $books CmdData run data get block 945 104 996 Items[0].Count
#execute if score $books CmdData matches 5 run place template minecraft:library_basementwall_empty 981 110 979 none none
#> ^
execute unless score $stairsopen CmdData matches 1.. if block 945 104 996 chest{Items:[{id:"minecraft:book",Count:2b}]} run place template minecraft:library_basementwall_empty 981 110 979 none none
execute unless score $stairsopen CmdData matches 1.. if block 945 104 996 chest{Items:[{id:"minecraft:book",Count:2b}]} run particle minecraft:explosion 980.52 112.00 980.48 1.5 1 1.5 0 40 force
execute unless score $stairsopen CmdData matches 1.. if block 945 104 996 chest{Items:[{id:"minecraft:book",Count:2b}]} run particle minecraft:explosion 980.56 112.00 1020.61 1.5 1 1.5 0 40 force
execute unless score $stairsopen CmdData matches 1.. if block 945 104 996 chest{Items:[{id:"minecraft:book",Count:2b}]} run playsound minecraft:generic_explosion block @s 979.74 110.00 1000.50 50 1 0
#execute unless score $stairsopen CmdData matches 1.. if block 945 104 996 chest{Items:[{id:"minecraft:book",Count:2b}]} run setblock 945 104 996 minecraft:chest destroy
execute unless score $stairsopen CmdData matches 1.. if block 945 104 996 chest{Items:[{id:"minecraft:book",Count:2b}]} run scoreboard players set $stairsopen CmdData 1

#> When you have all 5 books, open the book in the basement
execute unless score $flipbook CmdData matches 1.. if block 945 104 996 chest{Items:[{id:"minecraft:book",Count:5b}]} run tellraw @a ["\n", {"text":"You hear an evil presence call from the basement...","color":"red","italic":"true"}, "\n"]
execute unless score $flipbook CmdData matches 1.. if block 945 104 996 chest{Items:[{id:"minecraft:book",Count:5b}]} run playsound minecraft:block.end_portal.spawn block @a[tag=queued] ~ ~ ~ 1 0 1
execute unless score $flipbook CmdData matches 1.. if block 945 104 996 chest{Items:[{id:"minecraft:book",Count:5b}]} run place template minecraft:librarysecret 961 100 996
execute unless score $flipbook CmdData matches 1.. if block 945 104 996 chest{Items:[{id:"minecraft:book",Count:5b}]} run scoreboard players set $flipbook CmdData 1
execute if score $flipbook CmdData matches 1.. if block 945 104 996 chest{Items:[{id:"minecraft:book",Count:5b}]} run setblock 945 104 996 minecraft:chest destroy

#> When people interact with the book, flip the map
# Enable the trigger for that
execute if score $flipbook CmdData matches 1.. run scoreboard players enable @a[predicate=mcm:bounding_boxes/flipbook] flipmap
execute if score $flippingmap CmdData matches 1 as @a run trigger flipmap set 0

execute if score $flipbook CmdData matches 1.. if score @a[predicate=mcm:bounding_boxes/flipbook,limit=1] flipmap matches 1.. run scoreboard players set $flippingmap CmdData 1
execute if score $flipbook CmdData matches 1.. if score @a[predicate=mcm:bounding_boxes/flipbook,limit=1] flipmap matches 1.. run scoreboard players set $mapflipeffect CmdData 1
execute if score $mapflipeffect CmdData matches 1 run function mcm:maps/library/mapflipeffect
execute if score $mapflipeffect CmdData matches 1 run scoreboard players set $mapflipeffect CmdData 0
scoreboard players reset @a[scores={flipmap=1..}] flipmap
execute if score $flippingmap CmdData matches 1 run function mcm:maps/library/flipmap

#>Old stuff we probably don't need but keeping just in case [DONT UNCOMMENT]
#execute if block 944 110 996 minecraft:hopper{Items: [{Slot: 0b, id: "minecraft:book", Count: 5b, tag: {display: {Lore: ['[{"text":"You should probably return this","italic":false}]'], Name: '[{"text":"Overdue Book","italic":false,"color":"red"}]'}}}]} run place template minecraft:library_basementwall_empty 981 110 979 none none
#Remove Junk from book return hopper
#execute unless score $books CmdData matches 1..5 run item replace block 944 110 996 container.0 with air{Count:1b}



#> LIBRARY FLIPPING WORLD BORDER VALUE NOTES
#> /worldborder warning distance 950
#> /worldborder set 2210