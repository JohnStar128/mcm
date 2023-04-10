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
execute as @e[type=item_display,tag=lobby_cosmetic_displays] run scoreboard players operation @s display_scaling = @s display_scrolling
execute as @e[type=item_display,tag=lobby_cosmetic_displays] run scoreboard players operation @s display_scaling -= $low display_scrolling
scoreboard players operation $temp display_scaling = $range display_scrolling
scoreboard players operation $temp display_scaling /= $two math
execute as @e[type=item_display,tag=lobby_cosmetic_displays] run scoreboard players operation @s display_scaling -= $temp display_scaling
execute as @e[type=item_display,tag=lobby_cosmetic_displays] if score @s display_scaling matches 0.. run scoreboard players operation @s display_scaling *= $minus_one math
execute as @e[type=item_display,tag=lobby_cosmetic_displays] run scoreboard players operation @s display_scaling += $range display_scrolling
scoreboard players operation $temp display_scaling = $range display_scrolling
scoreboard players operation $temp display_scaling /= $one_hundred math

execute as @e[type=item_display,tag=lobby_cosmetic_displays] store result entity @s transformation.scale[0] float 0.01 run scoreboard players operation @s display_scaling /= $temp display_scaling
execute as @e[type=item_display,tag=lobby_cosmetic_displays] store result entity @s transformation.scale[1] float 0.01 run scoreboard players get @s display_scaling 
execute as @e[type=item_display,tag=lobby_cosmetic_displays] store result entity @s transformation.scale[2] float 0.01 run scoreboard players get @s display_scaling
