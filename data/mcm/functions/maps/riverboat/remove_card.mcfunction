#> Remove a card from the card table
execute if score $cards riverboat matches 1 run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=card1,limit=1] armor.head
execute if score $cards riverboat matches 1 run item replace entity @e[type=armor_stand,tag=card1] armor.head with air
execute if score $cards riverboat matches 2 run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=card2,limit=1] armor.head
execute if score $cards riverboat matches 2 run item replace entity @e[type=armor_stand,tag=card2] armor.head with air
execute if score $cards riverboat matches 3 run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=card3,limit=1] armor.head
execute if score $cards riverboat matches 3 run item replace entity @e[type=armor_stand,tag=card3] armor.head with air
execute if score $cards riverboat matches 4 run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=card4,limit=1] armor.head
execute if score $cards riverboat matches 4 run item replace entity @e[type=armor_stand,tag=card4] armor.head with air
execute if score $cards riverboat matches 5 run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=card5,limit=1] armor.head
execute if score $cards riverboat matches 5 run item replace entity @e[type=armor_stand,tag=card5] armor.head with air

execute if score $cards riverboat matches 1..5 run scoreboard players remove $cards riverboat 1
