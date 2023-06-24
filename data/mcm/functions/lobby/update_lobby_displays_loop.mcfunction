
#schedule function mcm:lobby/update_lobby_displays_loop 5s replace

scoreboard players operation $old player_count = $current player_count
scoreboard players set $current player_count 0
execute as @a run scoreboard players add $current player_count 1

execute unless score $current player_count = $old player_count run schedule function mcm:lobby/lobby_text_displays 4s replace