# Needs to be executed as the player the event happens to (@s is player 1)
# Also requires {translate: string, color: string, type: int}

# Event type 1: "{time} : {player} {extra text}"
# Event type 2: "{time} : {player 1} {extra text} {player 2}
# Event type 3: Same as 2 but the second player is passed explicitly in `mcm:game_summary.temp.player2_text` and `mcm:game_summary.temp.player2_color`

$scoreboard players set $type vars $(type)

# These coords are a special chest under the lobby that exists only for this purpose
$data merge storage mcm:game_summary {temp:{timestamp:-1,player_text:"",player_color:"gold",extra_text:"$(translate)",extra_color:"$(color)",type:$(type)}}
execute unless data storage mcm:game_summary temp.player2_text run data merge storage mcm:game_summary {temp:{player2_text:""}}
execute unless data storage mcm:game_summary temp.player2_color run data merge storage mcm:game_summary {temp:{player2_color:"green"}}

data merge storage mcm:args {name:{out:"storage mcm:game_summary temp.player_text"}}
data modify storage mcm:args name.uuid set from entity @s UUID[0] 
function mcm:util/get_player_name with storage mcm:args name

execute if entity @s[tag=murderer] run data modify storage mcm:game_summary temp.player_color set value "red"
execute if entity @s[tag=gunner] run data modify storage mcm:game_summary temp.player_color set value "dark_aqua"
execute if entity @s[tag=innocent,tag=!gunner] run data modify storage mcm:game_summary temp.player_color set value "light_purple"

execute store result storage mcm:game_summary temp.timestamp int 1 run scoreboard players get @s time_alive


# Type 2: get player 2
data merge storage mcm:args {name:{out:"storage mcm:game_summary temp.player2_text"}}
execute if score $type vars matches 2 on attacker run data modify storage mcm:args name.uuid set from entity @s UUID[0] 
execute if score $type vars matches 2 run function mcm:util/get_player_name with storage mcm:args name

execute if score $type vars matches 2 on attacker if entity @s[tag=murderer] run data modify storage mcm:game_summary temp.player2_color set value "red"
execute if score $type vars matches 2 on attacker if entity @s[tag=gunner] run data modify storage mcm:game_summary temp.player2_color set value "dark_aqua"
# Is this possible? :thonk:
execute if score $type vars matches 2 on attacker if entity @s[tag=innocent,tag=!gunner] run data modify storage mcm:game_summary temp.player2_color set value "light_purple"

# Type 3: Player 2 is already passed in before this function is called
#           So this doesn't need to do anything

data modify storage mcm:game_summary events append from storage mcm:game_summary temp

data remove storage mcm:game_summary temp
scoreboard players reset $type vars
