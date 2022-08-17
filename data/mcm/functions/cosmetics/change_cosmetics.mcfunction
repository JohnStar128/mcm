execute if score @s hatchange matches -1 run scoreboard players set @s selected_hat 0
execute if score @s hatchange matches 1 run scoreboard players set @s selected_hat 1
execute if score @s hatchange matches 2 run scoreboard players set @s selected_hat 2
execute if score @s hatchange matches 3 run scoreboard players set @s selected_hat 3
execute if score @s hatchange matches 4 run scoreboard players set @s selected_hat 4

scoreboard players reset @s hatchange

execute if score @s selected_hat matches 0 run function mcm:cosmetics/removehat
execute if score @s selected_hat matches 1 run function mcm:cosmetics/rainbowhat
execute if score @s selected_hat matches 2 run function mcm:cosmetics/lance
execute if score @s selected_hat matches 3 run function mcm:cosmetics/spacehelmet
execute if score @s selected_hat matches 4 run function mcm:cosmetics/3dglasses

#> Give boots
execute store result entity @e[type=armor_stand,tag=color_boots,limit=1] ArmorItems[0].tag.display.color int 1 run scoreboard players add @s player_color 0
item replace entity @s armor.feet from entity @e[type=armor_stand,tag=color_boots,limit=1] armor.feet
tag @s add colored