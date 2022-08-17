scoreboard players operation $hue player_color += $angle player_color
scoreboard players operation $hue player_color %= $max_angle player_color

scoreboard players operation $sin_coord player_color += $sin_step player_color
scoreboard players operation $temp math = $sin_coord player_color
execute if score $sin_coord player_color matches 30.. run scoreboard players remove $sin_coord player_color 60
function mcm:math/sin
scoreboard players operation $noise player_color = $out math

