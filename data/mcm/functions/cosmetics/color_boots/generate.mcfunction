#> Red offset is 65536, green offset is 256, blue offset is 0
#> Colors cycles from 0xfc77__, 0xfc__77, 0x__fc77, 0x77fc__, 0x77__fc, 0x__77fc, in that order
execute if score $color_cycle player_color matches 0 run scoreboard players operation $color_extra player_color = $color_const_1 player_color
execute if score $color_cycle player_color matches 0 run scoreboard players operation $color_extra player_color *= $red_offset player_color
execute if score $color_cycle player_color matches 0 run scoreboard players operation @s player_color = $color_const_2 player_color
execute if score $color_cycle player_color matches 0 run scoreboard players operation @s player_color *= $green_offset player_color
execute if score $color_cycle player_color matches 0 run scoreboard players operation @s player_color += $color_variable player_color

execute if score $color_cycle player_color matches 1 run scoreboard players operation $color_extra player_color = $color_const_1 player_color
execute if score $color_cycle player_color matches 1 run scoreboard players operation $color_extra player_color *= $red_offset player_color
execute if score $color_cycle player_color matches 1 run scoreboard players operation @s player_color = $color_variable player_color
execute if score $color_cycle player_color matches 1 run scoreboard players operation @s player_color *= $green_offset player_color
execute if score $color_cycle player_color matches 1 run scoreboard players operation @s player_color += $color_const_2 player_color

execute if score $color_cycle player_color matches 2 run scoreboard players operation $color_extra player_color = $color_variable player_color
execute if score $color_cycle player_color matches 2 run scoreboard players operation $color_extra player_color *= $red_offset player_color
execute if score $color_cycle player_color matches 2 run scoreboard players operation @s player_color = $color_const_1 player_color
execute if score $color_cycle player_color matches 2 run scoreboard players operation @s player_color *= $green_offset player_color
execute if score $color_cycle player_color matches 2 run scoreboard players operation @s player_color += $color_const_2 player_color

execute if score $color_cycle player_color matches 3 run scoreboard players operation $color_extra player_color = $color_const_2 player_color
execute if score $color_cycle player_color matches 3 run scoreboard players operation $color_extra player_color *= $red_offset player_color
execute if score $color_cycle player_color matches 3 run scoreboard players operation @s player_color = $color_const_1 player_color
execute if score $color_cycle player_color matches 3 run scoreboard players operation @s player_color *= $green_offset player_color
execute if score $color_cycle player_color matches 3 run scoreboard players operation @s player_color += $color_variable player_color

execute if score $color_cycle player_color matches 4 run scoreboard players operation $color_extra player_color = $color_const_2 player_color
execute if score $color_cycle player_color matches 4 run scoreboard players operation $color_extra player_color *= $red_offset player_color
execute if score $color_cycle player_color matches 4 run scoreboard players operation @s player_color = $color_variable player_color
execute if score $color_cycle player_color matches 4 run scoreboard players operation @s player_color *= $green_offset player_color
execute if score $color_cycle player_color matches 4 run scoreboard players operation @s player_color += $color_const_1 player_color

execute if score $color_cycle player_color matches 5 run scoreboard players operation $color_extra player_color = $color_variable player_color
execute if score $color_cycle player_color matches 5 run scoreboard players operation $color_extra player_color *= $red_offset player_color
execute if score $color_cycle player_color matches 5 run scoreboard players operation @s player_color = $color_const_2 player_color
execute if score $color_cycle player_color matches 5 run scoreboard players operation @s player_color *= $green_offset player_color
execute if score $color_cycle player_color matches 5 run scoreboard players operation @s player_color += $color_const_1 player_color

#> Add the red component
scoreboard players operation @s player_color += $color_extra player_color

#> Update cycle
scoreboard players add $color_cycle player_color 1
execute if score $color_cycle player_color matches 6 run scoreboard players add $color_variable player_color 119
scoreboard players operation $color_variable player_color %= $green_offset player_color
execute if score $color_cycle player_color matches 6 run scoreboard players operation $color_variable player_color %= $green_offset player_color
execute if score $color_cycle player_color matches 6 run scoreboard players operation $color_variable player_color %= $green_offset player_color
execute if score $color_cycle player_color matches 6 run scoreboard players operation $color_variable player_color %= $green_offset player_color
execute if score $color_cycle player_color matches 6 run scoreboard players operation $color_variable player_color %= $green_offset player_color
scoreboard players operation $color_cycle player_color %= $six math

execute store result entity @e[tag=color_boots,limit=1] ArmorItems[0].tag.display.color int 1 run scoreboard players add @s player_color 0
item replace entity @s armor.feet from entity @e[type=armor_stand,tag=color_boots,limit=1] armor.feet

#> If the boots are too close to another player's color, re-attempt to create them, up to 10 times (not yet implemented)
#function mcm:color_boots/uniqueness
#scoreboard players add $attempts player_color 1
#execute if score $attempts player_color matches ..10 if score $diff player_color matches ..10 run function mcm:color_boots/generate
#scoreboard players reset $attempts player_color
