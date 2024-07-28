scoreboard players set $credit_timer CmdData -1
stopsound @a record minecraft:credits
clone 29 -35 117 26 -55 95 ~ ~ ~
execute as @e[type=glow_item_frame,predicate=mcm:bounding_boxes/credits] run kill @s