#> Run with storage mcm:game_state state.rules
#TODO: Technically, I added a bunch more costomizable things under game rules that *could* be printed, 
#      even though they can't be changed without commands

#> Title message
tellraw @s ["", \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules","underlined":true,color:"green", bold:false} \
]
#> Number of murderers
$tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.murderers", color:"gray",bold:false, with:[ \
        {text:"$(murderer_count)", color:"green"}\
    ]} \
]
#> Game length
$tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.length", color:"gray", bold:false, with:[ \
        {translate:"mcm.game.rules.length.minutes", color:"green", with:[ \
            {text:"$(time_minutes)",color:"green"} \
        ]} \
    ]} \
]

#> Animated game features
$scoreboard players set $temp vars $(animate) 
execute if score $temp vars matches 1 run tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.animated", color:"gray", bold:false, with:[ \
        {translate:"mcm.game.rules.on", color:"green"} \
    ]} \
]
execute if score $temp vars matches 0 run tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.animated", color:"gray", bold:false, with:[ \
        {translate:"mcm.game.rules.off", color:"green"} \
    ]} \
]

#> Autostart
$scoreboard players set $temp vars $(auto_start) 
execute if score $temp vars matches 1 run tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.auto", color:"gray", bold:false, with:[ \
        {translate:"mcm.game.rules.on", color:"green"} \
    ]} \
]
execute if score $temp vars matches 0 run tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.auto", color:"gray", bold:false, with:[ \
        {translate:"mcm.game.rules.off", color:"green"} \
    ]} \
]

#> Start with scrap
$tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.scrap", color:"gray",bold:false, with:[ \
        {text:"$(starting_scrap)", color:"green"} \
    ]} \
]

#> Murderer friendly fire
$scoreboard players set $temp vars $(murderer_friendly_fire) 
execute if score $temp vars matches 1 run tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.friendly.fire", color:"gray", bold:false, with:[ \
        {translate:"mcm.game.rules.on", color:"green"} \
    ]} \
]
execute if score $temp vars matches 0 run tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.friendly.fire", color:"gray", bold:false, with:[ \
        {translate:"mcm.game.rules.off", color:"green"} \
    ]} \
]

#> Darkness
$scoreboard players set $temp vars $(darkness) 
execute if score $temp vars matches 1 run tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.darkness", color:"gray", bold:false, with:[ \
        {translate:"mcm.game.rules.on", color:"green"} \
    ]} \
]
execute if score $temp vars matches 0 run tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.darkness", color:"gray", bold:false, with:[ \
        {translate:"mcm.game.rules.off", color:"green"} \
    ]} \
]

#> Knife recall destroys guns
$scoreboard players set $temp vars $(destroy_guns) 
execute if score $temp vars matches 1 run tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.destroyguns", color:"gray", bold:false, with:[ \
        {translate:"mcm.game.rules.on", color:"green"} \
    ]} \
]
execute if score $temp vars matches 0 run tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.destroyguns", color:"gray", bold:false, with:[ \
        {translate:"mcm.game.rules.off", color:"green"} \
    ]} \
]

#> Update bossbar player count
$scoreboard players set $temp vars $(update_player_count) 
execute if score $temp vars matches 1 run tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.update.bossbar", color:"gray", bold:false, with:[ \
        {translate:"mcm.game.rules.on", color:"green"} \
    ]} \
]
execute if score $temp vars matches 0 run tellraw @s [ \
    {text:"| ",bold:true,color:"dark_gray"}, \
    {translate:"mcm.game.rules.update.bossbar", color:"gray", bold:false, with:[ \
        {translate:"mcm.game.rules.off", color:"green"} \
    ]} \
]

scoreboard players reset $temp vars
