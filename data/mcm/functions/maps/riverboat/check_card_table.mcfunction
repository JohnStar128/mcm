#> Check that the cards are in the right order
scoreboard players set $verify riverboat 0
execute as @e[type=armor_stand,tag=card1,nbt={ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1116}}]}] run scoreboard players add $verify riverboat 1
execute as @e[type=armor_stand,tag=card2,nbt={ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1117}}]}] run scoreboard players add $verify riverboat 1
execute as @e[type=armor_stand,tag=card3,nbt={ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1116}}]}] run scoreboard players add $verify riverboat 1
execute as @e[type=armor_stand,tag=card4,nbt={ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1116}}]}] run scoreboard players add $verify riverboat 1
execute as @e[type=armor_stand,tag=card5,nbt={ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1117}}]}] run scoreboard players add $verify riverboat 1

execute if score $verify riverboat matches 5 run fill 2035 79 -1997 2036 81 -1997 air
