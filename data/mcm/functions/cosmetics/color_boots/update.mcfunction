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
scoreboard players set $chroma player_color 128
scoreboard players set $value player_color 128
execute as @a[tag=!colored] run function mcm:cosmetics/color_boots/generate

scoreboard players set $change_color CmdData 0