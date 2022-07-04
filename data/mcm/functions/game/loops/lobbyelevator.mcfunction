#> Close door if no one is around
execute unless entity @a[predicate=mcm:bounding_boxes/lobby_elevator_top] if score $elevatordoortop CmdData matches 1.. run scoreboard players remove $elevatordoortop CmdData 1
execute unless entity @a[predicate=mcm:bounding_boxes/lobby_elevator_bottom] if score $elevatordoorbottom CmdData matches 1.. run scoreboard players remove $elevatordoorbottom CmdData 1

#> Top elevator
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_top] at @s if score $elevatordoortop CmdData matches ..15 run scoreboard players add $elevatordoortop CmdData 1 
execute if score $elevatordoortop CmdData matches 1 run clone 25 13 141 23 11 141 22 8 122
execute if score $elevatordoortop CmdData matches 1 run playsound minecraft:block.chain.place block @a 23 7 122 1 0 0
execute if score $elevatordoortop CmdData matches 5 run clone 23 11 143 25 13 143 22 8 122
execute if score $elevatordoortop CmdData matches 5 run playsound minecraft:block.chain.place block @a 23 7 122 1 0 0
execute if score $elevatordoortop CmdData matches 10 run clone 23 11 145 25 13 145 22 8 122
execute if score $elevatordoortop CmdData matches 10 run playsound minecraft:block.chain.place block @a 23 7 122 1 0 0
execute if score $elevatordoortop CmdData matches 15 run fill 24 8 122 24 10 122 air replace waxed_exposed_cut_copper_slab
execute if score $elevatordoortop CmdData matches 15 run playsound minecraft:block.chain.place block @a 23 7 122 1 0 0


#> Bottom elevator
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_bottom] at @s if score $elevatordoorbottom CmdData matches ..15 run scoreboard players add $elevatordoorbottom CmdData 1 
execute if score $elevatordoorbottom CmdData matches 1 run clone 25 13 141 23 11 141 22 1 121
execute if score $elevatordoorbottom CmdData matches 1 run playsound minecraft:block.chain.place block @a 23 7 122 1 0 0
execute if score $elevatordoorbottom CmdData matches 5 run clone 23 11 143 25 13 143 22 1 121
execute if score $elevatordoorbottom CmdData matches 5 run playsound minecraft:block.chain.place block @a 23 7 122 1 0 0
execute if score $elevatordoorbottom CmdData matches 10 run clone 23 11 145 25 13 145 22 1 121
execute if score $elevatordoorbottom CmdData matches 10 run playsound minecraft:block.chain.place block @a 23 7 122 1 0 0
execute if score $elevatordoorbottom CmdData matches 15 run fill 24 1 121 24 3 121 air replace waxed_exposed_cut_copper_slab
execute if score $elevatordoorbottom CmdData matches 15 run playsound minecraft:block.chain.place block @a 23 7 122 1 0 0


#> Actual elevator stuff
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_bottom_inside] at @s if block 24 3 123 stone_button[powered=true] run tp @s ~ ~7 ~1
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_top_inside] at @s if block 24 3 123 stone_button[powered=true] run playsound minecraft:entity.player.levelup block @s ~ ~ ~ 1 0 0
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_top_inside] at @s if block 24 3 123 stone_button[powered=true] run setblock 24 3 123 stone_button[facing=west,face=wall]

execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_top_inside] at @s if block 24 8 124 stone_button[powered=true] run tp @s ~ ~-7 ~-1
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_bottom_inside] at @s if block 24 8 123 stone_button[powered=true] run playsound minecraft:entity.player.levelup block @s ~ ~ ~ 1 0 0
execute as @a[predicate=mcm:bounding_boxes/lobby_elevator_bottom_inside] at @s if block 24 8 124 stone_button[powered=true] run setblock 24 8 124 stone_button[facing=west,face=wall]