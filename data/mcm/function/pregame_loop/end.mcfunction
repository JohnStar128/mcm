#> Delete pregame timer
function mcm:util/timer/delete {name:"$pregame"}

#> Murderer count logic
function mcm:pregame_loop/murderer_count with storage mcm:game_state state.rules

#> Select Roles
function mcm:pregame_loop/assign_roles with storage mcm:game_state state.rules

# No more rules
function mcm:util/trigger/disable_trigger {objective:"print_rules"}
data modify storage mcm:scoreboards active_triggers append value {objective:"map_trigger",fn:"function mcm:util/no_op"}

#> Game stats
scoreboard players set @a[tag=queued,tag=!spectator] game_stats 0
scoreboard players set @a[tag=queued,tag=!spectator] time_alive 0

#> Start scrap spawner timer
data merge storage mcm:args {scrap_timer:{name:"$scrap_spawner",start:0,period:0,operation:"remove"}}
execute store result storage mcm:args scrap_timer.start double 1 run data get storage mcm:game_state state.rules.scrap_frequency 20
execute store result score $temp vars run data get storage mcm:game_state state.rules.scrap_frequency 20
execute store result storage mcm:args scrap_timer.period int 1 run scoreboard players add $temp vars 1
function mcm:util/timer/new with storage mcm:args scrap_timer 
data remove storage mcm:args scrap_timer
scoreboard players reset $temp vars

#> Transition to normal game loop
team join ingame_players @a[tag=queued,tag=!spectator] 
data merge storage mcm:game_state {state:{current_stage:"game_loop"}}
playsound block.beehive.enter ambient @a[tag=queued] ~ ~ ~ 1 0 1

data remove storage mcm:game_state state.current_stage_started

#> Give lobby players quick spectate
execute as @a[tag=!queued] run clear @s *[custom_data~{latejoin_spyglass:1b}]
execute as @a[tag=!queued] run function mcm:items/give {item:"spectate_spyglass"}
