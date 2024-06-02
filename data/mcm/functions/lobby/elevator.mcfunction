#> Close door if no one is around
execute unless entity @a[predicate=mcm:bounding_boxes/lobby_elevator_top] if score $elevatordoortop CmdData matches 1.. run scoreboard players remove $elevatordoortop CmdData 1
execute unless entity @a[predicate=mcm:bounding_boxes/lobby_elevator_bottom] if score $elevatordoorbottom CmdData matches 1.. run scoreboard players remove $elevatordoorbottom CmdData 1

#> Top elevator
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_top,limit=1] at @s if score $elevatordoortop CmdData matches ..15 run scoreboard players add $elevatordoortop CmdData 1 
execute if score $elevatordoortop CmdData matches 1 run clone 24 -3 131 26 -1 131 23 8 145
execute if score $elevatordoortop CmdData matches 1 run playsound minecraft:block.chain.place block @a 24 7 145 1 0 0
execute if score $elevatordoortop CmdData matches 5 run clone 24 -3 133 26 -1 133 23 8 145
execute if score $elevatordoortop CmdData matches 5 run playsound minecraft:block.chain.place block @a 24 7 145 1 0 0
execute if score $elevatordoortop CmdData matches 10 run clone 24 -3 135 26 -1 135 23 8 145
execute if score $elevatordoortop CmdData matches 10 run playsound minecraft:block.chain.place block @a 24 7 145 1 0 0
execute if score $elevatordoortop CmdData matches 15 run fill 25 8 145 25 10 145 air replace waxed_exposed_cut_copper_slab
execute if score $elevatordoortop CmdData matches 15 run playsound minecraft:block.chain.place block @a 24 7 145 1 0 0


#> Bottom elevator
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_bottom,limit=1] at @s if score $elevatordoorbottom CmdData matches ..15 run scoreboard players add $elevatordoorbottom CmdData 1 
execute if score $elevatordoorbottom CmdData matches 1 run clone 24 -3 131 26 -1 131 23 1 144
execute if score $elevatordoorbottom CmdData matches 1 run playsound minecraft:block.chain.place block @a 24 7 144 1 0 0
execute if score $elevatordoorbottom CmdData matches 5 run clone 24 -3 133 26 -1 133 23 1 144
execute if score $elevatordoorbottom CmdData matches 5 run playsound minecraft:block.chain.place block @a 24 7 144 1 0 0
execute if score $elevatordoorbottom CmdData matches 10 run clone 24 -3 135 26 -1 135 23 1 144
execute if score $elevatordoorbottom CmdData matches 10 run playsound minecraft:block.chain.place block @a 24 7 144 1 0 0
execute if score $elevatordoorbottom CmdData matches 15 run fill 25 1 144 25 3 144 air replace waxed_exposed_cut_copper_slab
execute if score $elevatordoorbottom CmdData matches 15 run playsound minecraft:block.chain.place block @a 24 7 14 1 0 0


#> Actual elevator stuff
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_bottom_inside] at @s if block 25 3 146 stone_button[powered=true] run tp @s ~ ~7 ~1
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_top_inside] at @s if block 25 3 146 stone_button[powered=true] run playsound minecraft:entity.player.levelup block @s ~ ~ ~ 1 0 0
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_top_inside] at @s if block 25 3 146 stone_button[powered=true] run setblock 25 3 146 stone_button[facing=west,face=wall]

execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_top_inside] at @s if block 25 8 147 stone_button[powered=true] run tp @s ~ ~-7 ~-1
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_bottom_inside] at @s if block 25 8 147 stone_button[powered=true] run playsound minecraft:entity.player.levelup block @s ~ ~ ~ 1 0 0
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_bottom_inside] at @s if block 25 8 147 stone_button[powered=true] run setblock 25 8 147 stone_button[facing=west,face=wall]