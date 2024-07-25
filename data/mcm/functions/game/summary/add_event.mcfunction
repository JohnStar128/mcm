# Needs to be executed as the player the event happens to
# Also requires {translate: string, color: string} in macro and score $event_type temp to be set

# Event type 1: "{time} : {player} {extra text}"
# Event type 2: "{time} : {player 1} {extra text} {player 2}
# Event type 3: Same as 2 but the second player is passed explicitly in `mcm:game_summary.temp.player2_text` and `mcm:game_summary.temp.player2_color`

# These coords are a special chest under the lobby that exists only for this purpose
$data modify storage mcm:game_summary temp merge value {timestamp:-1,player_text:"",player_color:"gold",extra_text:"$(translate)",extra_color:"$(color)",event_type:-1}
execute unless data storage mcm:game_summary temp.player2_text run data merge storage mcm:game_summary {temp:{player2_text:""}}
execute unless data storage mcm:game_summary temp.player2_color run data merge storage mcm:game_summary {temp:{player2_color:"green"}}


function mcm:util/get_player_name {out:"storage mcm:game_summary temp.player_text"}
execute if entity @s[tag=murderer] run data modify storage mcm:game_summary temp.player_color set value "red"
execute if entity @s[tag=gunner_stat] run data modify storage mcm:game_summary temp.player_color set value "dark_aqua"
execute if entity @s[tag=innocent,tag=!gunner_stat] run data modify storage mcm:game_summary temp.player_color set value "light_purple"

execute store result storage mcm:game_summary temp.timestamp int 1 run scoreboard players get @s time_alive
execute store result storage mcm:game_summary temp.event_type int 1 run scoreboard players get $event_type temp


# type 2: get player 2
execute if score $event_type temp matches 2 as @a[advancements={mcm:hit_detection/killed_player=true},sort=nearest,limit=1] run loot replace block -2 -50 72 container.0 loot mcm:playerhead
execute if score $event_type temp matches 2 run data modify storage mcm:game_summary temp.player2_text set from block -2 -50 72 Items[0].components.minecraft:profile.name
execute if score $event_type temp matches 2 if entity @a[advancements={mcm:hit_detection/killed_player=true},sort=nearest,limit=1,tag=murderer] run data modify storage mcm:game_summary temp.player2_color set value "red"
execute if score $event_type temp matches 2 if entity @a[advancements={mcm:hit_detection/killed_player=true},sort=nearest,limit=1,tag=gunner_stat] run data modify storage mcm:game_summary temp.player2_color set value "dark_aqua"
execute if score $event_type temp matches 2 if entity @a[advancements={mcm:hit_detection/killed_player=true},sort=nearest,limit=1,tag=innocent,tag=!gunner_stat] run data modify storage mcm:game_summary temp.player2_color set value "light_purple"

# Type 3: Player 2 is already passed in before this function is called
#           So this doesn't need to do anything



data modify storage mcm:game_summary events append from storage mcm:game_summary temp

