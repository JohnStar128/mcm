#> Set the game timer as (minutes * sec/min * ticks/sec) + 15 seconds for pregame
$scoreboard players set $time vars $(time_minutes)
scoreboard players operation $time vars *= $sixty math
scoreboard players operation $time vars *= $twenty math

data merge storage mcm:args {timer:{start:0, period:1, name:"$game_timer", operation:"remove"}}
execute store result storage mcm:args timer.start int 1 run scoreboard players operation $time vars += $three_hundred math
execute store result storage mcm:args timer.period int 1 run scoreboard players add $time vars 1
function mcm:util/timer/new with storage mcm:args timer
scoreboard players reset $time vars

#> Pregame end timer
tellraw @a ["\n",{translate:"mcm.game.role.assign",color:"yellow"},"\n"]
function mcm:util/timer/new {start:300, period:301, name:"$pregame", operation:"remove"}
#> Sound timer
data merge storage mcm:args {sound:{start:200, period:201, name:"$sound", operation:"remove"}}
execute store result storage mcm:args sound.start double 1 run data get storage mcm:game_state state.rules.sound_frequency 20
execute store result score $temp vars run data get storage mcm:game_state state.rules.sound_frequency 20
execute store result storage mcm:args sound.period int 1 run scoreboard players add $temp vars 1
function mcm:util/timer/new with storage mcm:args sound 
data remove storage mcm:args sound
scoreboard players reset $temp vars

#> Create the bossbar
bossbar add game_display ""
bossbar set game_display color green
execute store result bossbar game_display max run scoreboard players get $game_timer timers
execute store result bossbar game_display value run scoreboard players get $game_timer timers

data merge storage mcm:game_state {state:{current_stage_started:true}}

#> Give lobby players spyglass for joining or spectating
execute as @a[tag=!queued] run function mcm:items/give {item:"latejoin_spyglass"}

#> Let players see the rules
data modify storage mcm:scoreboards active_triggers append value {objective:"print_rules", fn:"function mcm:pregame_loop/print_rules with storage mcm:game_state state.rules"}

#> Pregame kit
clear @a[tag=queued]
execute as @a[tag=queued] run function mcm:cosmetic/restore
execute as @a[tag=queued] run function mcm:items/give {item:"respawn_ticket"}

#> Put queued players on ingame team
team join ingame_players @a[tag=queued]

#> Remove last game's winners
tag @a remove winner
