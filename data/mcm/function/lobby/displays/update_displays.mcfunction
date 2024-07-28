#> Use new player information to update display options
execute as @e[type=item_display,tag=lobby_cosmetic_displays] store result score @s display_coord run data get entity @s Pos[0] 100
execute as @e[type=item_display,tag=lobby_cosmetic_displays] store result entity @s Pos[0] double 0.01 run scoreboard players operation @s display_scrolling -= $temp display_scrolling
execute as @e[type=item_display,tag=lobby_cosmetic_displays] if score @s display_scrolling > $high display_scrolling store result entity @s Pos[0] double 0.01 run scoreboard players operation @s display_scrolling -= $range display_scrolling
execute as @e[type=item_display,tag=lobby_cosmetic_displays] if score @s display_scrolling < $low display_scrolling store result entity @s Pos[0] double 0.01 run scoreboard players operation @s display_scrolling += $range display_scrolling

#> Display goes from visible to invisible
execute as @e[type=item_display,tag=lobby_cosmetic_displays] if score @s display_scrolling > $vis_high display_scrolling if score @s display_coord <= $vis_high display_scrolling at @s run tp @s ~ ~-5 ~
execute as @e[type=item_display,tag=lobby_cosmetic_displays] if score @s display_scrolling < $vis_low display_scrolling if score @s display_coord >= $vis_low display_scrolling at @s run tp @s ~ ~-5 ~
#> Display goes from invisible to visible
execute as @e[type=item_display,tag=lobby_cosmetic_displays] if score @s display_scrolling <= $vis_high display_scrolling if score @s display_coord > $vis_high display_scrolling at @s run tp @s ~ ~5 ~
execute as @e[type=item_display,tag=lobby_cosmetic_displays] if score @s display_scrolling >= $vis_low display_scrolling if score @s display_coord < $vis_low display_scrolling at @s run tp @s ~ ~5 ~

#> Update scaling
execute as @e[type=item_display,tag=lobby_cosmetic_displays] run function mcm:lobby/displays/update_scaling

