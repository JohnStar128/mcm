#> End the queueing period and transition to starting the game

function mcm:util/timer/delete {name:"$start_countdown"}
fill -27 -2 93 -25 18 115 air replace black_wool
scoreboard players reset $countdown_active vars

data merge storage mcm:game_state {state:{current_stage:"pregame_loop"}}
data remove storage mcm:game_state state.current_stage_started

tellraw @a [ \
    "", \
    { \
        text:"| ", \
        bold:true, \
        color:"dark_gray" \
    }, \
    { \
        translate:"[Click here to see the rules]", \
        underlined:true, \
        color:"green", \
        bold:false, \
        click_event: { \
            action:"run_command", \
            command:"/trigger print_rules set 1" \
        } \ 
    } \
]
