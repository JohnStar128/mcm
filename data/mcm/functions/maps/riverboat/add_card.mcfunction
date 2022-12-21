#> Add a card to the card table
execute if score $cards riverboat matches 0 run item replace entity @e[type=armor_stand,tag=card1] armor.head from entity @s weapon.mainhand
execute if score $cards riverboat matches 1 run item replace entity @e[type=armor_stand,tag=card2] armor.head from entity @s weapon.mainhand
execute if score $cards riverboat matches 2 run item replace entity @e[type=armor_stand,tag=card3] armor.head from entity @s weapon.mainhand
execute if score $cards riverboat matches 3 run item replace entity @e[type=armor_stand,tag=card4] armor.head from entity @s weapon.mainhand
execute if score $cards riverboat matches 4 run item replace entity @e[type=armor_stand,tag=card5] armor.head from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with air
scoreboard players add $cards riverboat 1
