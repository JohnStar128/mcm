$data merge storage mcm:args {bullet_timer:{name:"$bullet_$(id)",operation:"remove"}}
$tag @s add $(id)
$execute on passengers run tag @s add $(id)

data modify storage mcm:args bullet_timer.start set from storage mcm:game_state state.rules.gun_range
execute store result score $temp vars run data get storage mcm:game_state state.rules.gun_range
execute store result storage mcm:args bullet_timer.period int 1 run scoreboard players add $temp vars 1

function mcm:util/timer/new with storage mcm:args bullet_timer
$function mcm:util/queue/add_multiple { \
    fn:"execute as @e[type=item_display,tag=bullet,tag=$(id)] at @s run function mcm:items/cleanup/bullet {id:$(id)}", \
    condition:[ \
        "if score $bullet_$(id) timers matches ..0", \
        "if data @e[type=arrow,tag=$(id)] inBlockState", \
        "unless entity @e[type=arrow,tag=$(id)]", \
    ] \
}

data remove storage mcm:args bullet_timer
scoreboard players reset $temp vars
