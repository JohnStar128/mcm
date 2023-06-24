scoreboard players add $windmilltimer CmdData 1
execute if score $windmilltimer CmdData matches 1 positioned 3026 14 2974 run kill @e[distance=..2,type=minecraft:block_display]
execute if score $windmilltimer CmdData matches 1 positioned 3026 14 2974 run function mcm:maps/canyon/windmill/windmill0

execute if score $windmilltimer CmdData matches 2 positioned 3026 14 2974 run kill @e[distance=..2,type=minecraft:block_display]
execute if score $windmilltimer CmdData matches 2 positioned 3026 14 2974 run function mcm:maps/canyon/windmill/windmill1

execute if score $windmilltimer CmdData matches 3 positioned 3026 14 2974 run kill @e[distance=..2,type=minecraft:block_display]
execute if score $windmilltimer CmdData matches 3 positioned 3026 14 2974 run function mcm:maps/canyon/windmill/windmill2

execute if score $windmilltimer CmdData matches 4 positioned 3026 14 2974 run kill @e[distance=..2,type=minecraft:block_display]
execute if score $windmilltimer CmdData matches 4 positioned 3026 14 2974 run function mcm:maps/canyon/windmill/windmill3

execute if score $windmilltimer CmdData matches 5 positioned 3026 14 2974 run kill @e[distance=..2,type=minecraft:block_display]
execute if score $windmilltimer CmdData matches 5 positioned 3026 14 2974 run function mcm:maps/canyon/windmill/windmill4

execute if score $windmilltimer CmdData matches 6 positioned 3026 14 2974 run kill @e[distance=..2,type=minecraft:block_display]
execute if score $windmilltimer CmdData matches 6 positioned 3026 14 2974 run function mcm:maps/canyon/windmill/windmill5

execute if score $windmilltimer CmdData matches 6.. run scoreboard players set $windmilltimer CmdData 0

execute positioned 3026 14 2974 run summon minecraft:block_display ~-0.5 ~0.5 ~-0.5 {block_state:{Name:"iron_block"}}
