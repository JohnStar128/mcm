
execute store result score $update vars run data get storage mcm:game_state state.rules.update_player_count
#> Get innocents (unless updating is off)
execute unless score $update vars matches 0 store result score $innocent_count vars if entity @a[tag=innocent,tag=!spectating]
#> Get murderers (unless updating is off)
execute unless score $update vars matches 0 store result score $murderer_count vars if entity @a[tag=murderer,tag=!spectating]

#> calculate remaining minutes and seconds
#Minutes
scoreboard players operation $remainaing_time_minutes vars = $game_timer timers
scoreboard players operation $remainaing_time_minutes vars /= $twenty math
scoreboard players operation $remainaing_time_minutes vars /= $sixty math
scoreboard players operation $remainaing_time_minutes_1 vars = $remainaing_time_minutes vars
scoreboard players operation $remainaing_time_minutes vars /= $ten math
scoreboard players operation $remainaing_time_minutes_1 vars %= $ten math

#Seconds
scoreboard players operation $remainaing_time_seconds vars = $game_timer timers
scoreboard players operation $remainaing_time_seconds vars /= $twenty math
scoreboard players operation $remainaing_time_seconds vars %= $sixty math
scoreboard players operation $remainaing_time_seconds_1 vars = $remainaing_time_seconds vars
scoreboard players operation $remainaing_time_seconds vars /= $ten math
scoreboard players operation $remainaing_time_seconds_1 vars %= $ten math

bossbar set game_display players @a
execute store result bossbar game_display value run scoreboard players get $game_timer timers


#> Update name
bossbar set game_display name \
{ \
    translate:"mcm.game.bossbar", \
    color:"#253b48", \
    with:[ \
    { \
        translate:"mcm.game.bossbar.murderers", \
        color:"#ff5f79", \
        with:[ \
        { \
            score:{ \
                name:"$murderer_count", \
                objective:"vars" \
            }, \
            color:"white" \
        } \
        ] \
    }, \
    { \
        translate:"%s%s:%s%s", \
        color:"#ffcf66", \
        with:[ \
        { \
            score:{ \
                name:"$remainaing_time_minutes", \
                objective:"vars" \
            } \
        }, \
        { \
            score:{ \
                name:"$remainaing_time_minutes_1", \
                objective:"vars" \
            } \
        }, \
        { \
            score:{ \
                name:"$remainaing_time_seconds", \
                objective:"vars" \
            } \
        }, \
        { \
            score:{ \
                name:"$remainaing_time_seconds_1", \
                objective:"vars" \
            } \
        } \
        ] \
    }, \
    { \
        translate:"mcm.game.bossbar.innocents", \
        color:"#6dc6ff", \
        with:[ \
        { \
            score:{ \
                name:"$innocent_count", \
                objective:"vars" \
            }, \
            color:"white" \
        } \
        ] \
    } \
    ] \
}

scoreboard players reset $remainaing_time_minutes vars
scoreboard players reset $remainaing_time_minutes_1 vars
scoreboard players reset $remainaing_time_seconds vars
scoreboard players reset $remainaing_time_seconds_1 vars
