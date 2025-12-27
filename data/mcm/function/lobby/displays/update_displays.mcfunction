#> Use new player information to update display options
# execute as @e[type=item_display,tag=cosmetic_equip] store result score @s display_coord run data get entity @s Pos[0] 100
execute as @e[type=item_display,tag=cosmetic_equip] store result entity @s Pos[0] double 0.01 run scoreboard players operation @s lobby_cosmetic_display -= $temp lobby_cosmetic_display
execute as @e[type=item_display,tag=cosmetic_equip] if score @s lobby_cosmetic_display > $high lobby_cosmetic_display store result entity @s Pos[0] double 0.01 run scoreboard players operation @s lobby_cosmetic_display -= $range lobby_cosmetic_display
execute as @e[type=item_display,tag=cosmetic_equip] if score @s lobby_cosmetic_display < $low lobby_cosmetic_display store result entity @s Pos[0] double 0.01 run scoreboard players operation @s lobby_cosmetic_display += $range lobby_cosmetic_display

execute as @e[type=item_display,tag=cosmetic_equip,x=-3.5,dx=5.5,y=-6,dy=10,z=79,dz=5] at @s run tp @s ~ 2 ~
execute as @e[type=item_display,tag=cosmetic_equip] unless entity @s[x=-3.5,dx=5.5,y=-6,dy=10,z=79,dz=5] at @s run tp @s ~ -5 ~

#> Update scaling
execute as @e[type=item_display,tag=cosmetic_equip] run function mcm:lobby/displays/update_scaling
