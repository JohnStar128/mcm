#> Check that the cards are in the right order
scoreboard players set $verify riverboat 0
execute as @e[type=item_display,tag=card1,tag=ace] run scoreboard players add $verify riverboat 1
execute as @e[type=item_display,tag=card2,tag=eight] run scoreboard players add $verify riverboat 1
execute as @e[type=item_display,tag=card3,tag=ace] run scoreboard players add $verify riverboat 1
execute as @e[type=item_display,tag=card4,tag=ace] run scoreboard players add $verify riverboat 1
execute as @e[type=item_display,tag=card5,tag=eight] run scoreboard players add $verify riverboat 1

execute unless score $verify riverboat matches 5 run return fail

fill 2035 79 -1997 2036 81 -1997 air

execute unless score $verify_sound riverboat matches 1 as @a unless entity @s[tag=!hold_card1,tag=!old_card2] run scoreboard players set $event_type temp 1 
execute unless score $verify_sound riverboat matches 1 as @a unless entity @s[tag=!hold_card1,tag=!old_card2] run function mcm:game/summary/add_event {translate:"mcm.game.events.riverboat_full_hand",color:"green"}

execute unless score $verify_sound riverboat matches 1 positioned 2048.0 67 -1994 run playsound minecraft:block.wooden_door.open block @a ~ ~ ~ 2 0.5 1
execute unless score $verify_sound riverboat matches 1 run scoreboard players set $verify_sound riverboat 1
