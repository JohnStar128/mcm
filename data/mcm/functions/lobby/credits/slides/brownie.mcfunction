execute if score $credit_timer CmdData matches 200 run place template mcm:credits_slides/brownie1 ~ ~ ~

execute if score $credit_timer CmdData matches 210 run place template mcm:credits_slides/brownie2 ~ ~ ~

execute if score $credit_timer CmdData matches 220 run place template mcm:credits_slides/brownie3 ~ ~ ~

execute if score $credit_timer CmdData matches 230 run place template mcm:credits_slides/brownie4 ~ ~ ~

execute if score $credit_timer CmdData matches 240 run place template mcm:credits_slides/brownie5 ~ ~ ~

execute if score $credit_timer CmdData matches 250 run place template mcm:credits_slides/brownie6 ~ ~ ~

execute if score $credit_timer CmdData matches 299 as @e[type=glow_item_frame,predicate=mcm:bounding_boxes/credits] run kill @s