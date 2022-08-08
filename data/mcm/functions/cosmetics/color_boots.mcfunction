execute store result entity @e[tag=color_boots,limit=1] ArmorItems[0].tag.display.color int 1 run scoreboard players operation @s player_color = @s playerUUID
execute store result entity @e[tag=color_boots,limit=1] ArmorItems[0].tag.display.color int 1 run scoreboard players operation @s player_color += @s gameID
item replace entity @s armor.feet from entity @e[tag=color_boots,limit=1] armor.feet