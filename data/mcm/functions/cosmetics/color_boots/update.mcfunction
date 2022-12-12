execute store result score $online player_color if entity @a
scoreboard players operation $angle player_color = $max_angle player_color
scoreboard players operation $angle player_color /= $online player_color
scoreboard players set $sin_step player_color 180
scoreboard players set $temp math 1
scoreboard players operation $temp math = $online player_color
scoreboard players operation $sin_step player_color /= $temp math
scoreboard players set $temp math 1
scoreboard players operation $sin_step player_color += $temp math
scoreboard players set $sin_coord player_color -30
scoreboard players set $hue player_color 120
scoreboard players set $saturation player_color 224

scoreboard players set $a pseudorandom 1103515245
scoreboard players set $c pseudorandom 12345
scoreboard players set $x pseudorandom 1234567

execute as @a[tag=!colored] run function mcm:cosmetics/color_boots/generate
execute as @e[type=armor_stand, tag=fakeplayer] run function mcm:cosmetics/color_boots/generate

scoreboard players set $change_color CmdData 0