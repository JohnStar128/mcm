#> Check that we're in the queueing stage
data merge storage mcm:game_state {desired_stage:"queueing"}
execute store success score $correct_stage vars run data modify storage mcm:game_state desired_stage set from storage mcm:game_state state.current_stage
data remove storage mcm:game_state desired_stage

advancement revoke @s only mcm:lobby/start

#> In case someone tries to start the game early
execute if score $correct_stage vars matches 1 run tellraw @s ["\n", {"translate":"mcm.lobby.usher.say","color":"dark_green", "with":[{"translate":"mcm.lobby.usher.no.movie","color":"green"}]}, "\n"]
execute if score $correct_stage vars matches 1 run playsound entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute store result score $min_players vars run data get storage mcm:game_state state.rules.min_players

#> Not enough players
execute if score $queued_players vars < $min_players vars run tellraw @s ["\n", {"translate":"mcm.lobby.usher.say","color":"dark_green", "with":[{"translate":"mcm.lobby.usher.not.enough.players","color":"green"}]}, "\n"]
execute if score $queued_players vars < $min_players vars run playsound entity.villager.no neutral @s ~ ~ ~ 1 1 0

execute if score $queued_players vars >= $min_players vars if score $correct_stage vars matches 0 run scoreboard players set $countdown_active vars 1

#> If someone repeats this while the countdown is already running,
#> nothing should happen.

scoreboard players reset $correct_stage vars
scoreboard players reset $min_players vars
