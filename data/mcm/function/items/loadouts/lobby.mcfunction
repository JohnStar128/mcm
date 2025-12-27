# If they clicked an interactable for this
execute if entity @s[type=marker] on vehicle on target run return run function mcm:items/loadouts/lobby

clear @s
function mcm:cosmetics/restore
execute as @s[tag=winner] run function mcm:items/give {item:"popcorn"} 
execute as @s[tag=autoqueue] run function mcm:items/give {item:"autoqueue"}
execute as @s[tag=!autoqueue] run function mcm:items/give {item:"deautoqueue"}
item replace entity @s hotbar.4 with written_book[custom_data={HowToPlay:1b,NoDrop:1b}]
item modify entity @s hotbar.4 mcm:refresh_book

#> Only get a spyglass when a game is running
data merge storage mcm:game_state {desired_stage:"pregame_loop"}
execute store success score $pregame vars run data modify storage mcm:game_state desired_stage set from storage mcm:game_state state.current_stage
data merge storage mcm:game_state {desired_stage:"game_loop"}
execute store success score $ingame vars run data modify storage mcm:game_state desired_stage set from storage mcm:game_state state.current_stage

execute unless score $pregame vars matches 1 run function mcm:items/give {item:"latejoin_spyglass"}
execute unless score $ingame vars matches 1 run function mcm:items/give {item:"spectate_spyglass"}

scoreboard players reset $pregame vars
scoreboard players reset $ingame vars
data remove storage mcm:game_state desired_stage
