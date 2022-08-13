#> Red offset is 65536, green offset is 256, blue offset is 0

#> Update to next color
function mcm:cosmetics/color_boots/rotate_color
function mcm:cosmetics/color_boots/hsv_to_rgb
function mcm:cosmetics/color_boots/reconstruct_rgb
scoreboard players operation $prev player_color = $temp player_color
scoreboard players operation $chroma player_color -= $noise player_color
scoreboard players operation $value player_color -= $noise player_color
function mcm:cosmetics/color_boots/hsv_to_rgb
function mcm:cosmetics/color_boots/reconstruct_rgb

#> Give boots
execute store result entity @e[type=armor_stand,tag=color_boots,limit=1] ArmorItems[0].tag.display.color int 1 run scoreboard players operation @s player_color = $temp player_color
item replace entity @s armor.feet from entity @e[type=armor_stand,tag=color_boots,limit=1] armor.feet
tag @s add colored