# "1 for Murderer win, 0 for Innocent win"
$scoreboard players set $winner vars $(winner)

tellraw @a {translate:"mcm.game.lobby.return",color:"yellow"}
execute if score $winner vars matches 0 run tag @a[tag=innocent,tag=!spectator] add winner
execute if score $winner vars matches 1 run tag @a[tag=murderer,tag=!spectator] add winner

execute if score $winner vars matches 0 run title @a[tag=queued] title {translate:"mcm.game.innocent.win",color:"green"}
execute if score $winner vars matches 1 run title @a[tag=queued] title {translate:"mcm.game.murderer.win",color:"red"}

execute if score $winner vars matches 0 run playsound ui.toast.challenge_complete ambient @a[tag=innocent] ~ ~ ~ 1 1 1
execute if score $winner vars matches 0 run playsound entity.wither.spawn ambient @a[tag=murderer] ~ ~ ~ 1 2 1
execute if score $winner vars matches 1 run playsound ui.toast.challenge_complete ambient @a[tag=murderer] ~ ~ ~ 1 1 1
execute if score $winner vars matches 1 run playsound entity.wither.spawn ambient @a[tag=innocent] ~ ~ ~ 1 2 1

bossbar remove minecraft:game_display
scoreboard players reset $update vars
scoreboard players reset $innocent_count vars
scoreboard players reset $murderer_count vars

#> Game stats
# Header with winning team - innocent
execute if score $winner vars matches 0 run tellraw @a [\ 
    {text:"|",color:"gray",bold:true}, \
    {text:" ----- ",color:"green"}, \
    {translate:"mcm.game.stats.won",color:"gold",bold:false,with:[ \
        {translate:"mcm.game.stats.won.innocents",color:"dark_aqua"} \
    ]}, \
    {text:" ----- ",color:"green"} \
]
# Header with winning team - murderer
execute if score $winner vars matches 1 run tellraw @a [\ 
    {text:"|",color:"gray",bold:true}, \
    {text:" ----- ",color:"green"}, \
    {translate:"mcm.game.stats.won",color:"gold",bold:false,with:[ \
        {translate:"mcm.game.stats.won.murderers",color:"red"} \
    ]}, \
    {text:" ----- ",color:"green"} \
]

# Murderers with kill count
tellraw @a [\ 
    {text:"| ",color:"gray",bold:true}, \
    {translate:"mcm.game.stats.murderers",color:"red",bold:false} \
]
execute as @a[tag=murderer] run tellraw @a [ \
    {text:"| ",color:"gray",bold:true}, \
    {translate:"mcm.game.stats.kills",color:"gold",bold:false,with:[ \
        {selector:"@s",color:"red"}, \
        {score:{objective:"game_stats", name:"@s"}, color:"gold"} \
    ]} \
]

# Gunners with kill count
tellraw @a [ \
    {text:"|\n| ",color:"gray",bold:true}, \
    {translate:"mcm.game.stats.gunners",color:"dark_aqua",bold:false} \
]
execute as @a[tag=gunner] run tellraw @a [ \
    {text:"| ",color:"gray",bold:true}, \
    {translate:"mcm.game.stats.kills",color:"gold",bold:false,with:[ \
        {selector:"@s",color:"dark_aqua"}, \
        {score:{objective:"game_stats", name:"@s"}, color:"gold"} \
    ]} \
]

# Survivors
tellraw @a [ \
    {text:"|\n| ",color:"gray",bold:true}, \
    {translate:"mcm.game.stats.survivors",color:"green",bold:false} \
]
execute as @a[tag=queued,tag=!spectator] run function mcm:game_loop/display_time_alive

# Dead guys
tellraw @a [ \
    {text:"|\n| ",color:"gray",bold:true}, \
    {translate:"mcm.game.stats.timealive",color:"dark_purple",bold:false} \
]
execute as @a[tag=queued,tag=spectator] run function mcm:game_loop/display_time_alive

# Footer with event log
tellraw @a [ \
    {text:"|\n| ",color:"gray",bold:true}, \
    {translate:"mcm.game.events.clickhere",color:"green",bold:false,click_event:{ \
        action:"run_command",command:"trigger print_events"} \
    }, \
    {text:"|",color:"gray",bold:true}, \
    {text:" ----------------------------- ",color:"green"} \
]

data modify storage mcm:scoreboards active_triggers append value {objective:"print_events", fn:"function mcm:summary/print_events"}

#> Kill scrap spawner timer
function mcm:util/timer/delete {name:"$scrap_spawner"}

#> Transition to postgame
tag @a remove innocent
tag @a remove gunner
tag @a remove murderer
tag @a remove free_recall
tag @a remove spectator

clear @a[tag=queued]
kill @e[type=item,tag=key_item]
execute as @a[tag=queued] run function mcm:cosmetic/restore

#> Reset stats for next game
scoreboard players reset $winner vars
scoreboard players reset @a[tag=queued,tag=!spectator] game_stats
scoreboard players reset @a[tag=queued,tag=!spectator] time_alive

function mcm:util/timer/new {name:"$postgame",start:200,period:201,operation:"remove"}
function mcm:util/timer/delete {name:"$game_timer"}
data merge storage mcm:game_state {state:{current_stage:"postgame_loop"}}
# "game_over" is just a flag so this function can't be called multiple times if multiple win
# conditions happen on the same tick. Tie resolution is handled by the order in which
# this function gets called.
data merge storage mcm:game_state {state:{game_over:true}}
