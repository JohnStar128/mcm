#> Needs to be 1 back in the x direction because levers
execute if score $credit_timer CmdData matches 400 run place template mcm:credits_slides/blocky1 ~-1 ~ ~

execute if score $credit_timer CmdData matches 410 run place template mcm:credits_slides/blocky2 ~-1 ~ ~

execute if score $credit_timer CmdData matches 420 run place template mcm:credits_slides/blocky3 ~-1 ~ ~

execute if score $credit_timer CmdData matches 430 run place template mcm:credits_slides/blocky4 ~-1 ~ ~

execute if score $credit_timer CmdData matches 440 run place template mcm:credits_slides/blocky5 ~-1 ~ ~

execute if score $credit_timer CmdData matches 499 as @e[type=glow_item_frame,predicate=mcm:bounding_boxes/credits] run kill @s