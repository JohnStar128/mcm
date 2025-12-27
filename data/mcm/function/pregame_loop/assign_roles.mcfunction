#> Assign murderers, innocents, and gunner
$tag @a[tag=queued,tag=!spectator,limit=$(murderer_count),sort=random] add murderer
tag @a[tag=queued,tag=!spectator,tag=!murderer] add innocent
tag @a[tag=innocent,limit=1,sort=random] add gunner

#> Tell players their role and show tips
# Murderers
$scoreboard players set $murderers vars $(murderer_count)
execute if score $murderers vars matches 1 run tellraw @a[tag=murderer] { \
    "translate":"mcm.game.role", \
    "color":"gold", \
    "with":[{ \
        "translate":"mcm.game.murderer", \
        "color":"red" \
    }] \
}
execute if score $murderers vars matches 2 as @a[tag=murderer] at @s run tellraw @s { \
    "translate":"mcm.game.murderer2.msg", \
    "color":"gold", \
    "with":[{ \
        "selector":"@p[tag=murderer,distance=0.01..]", \
        "color":"green"\
    }, \
    { \
        "selector":"@s",\ 
        "color":"green" \
    }, \
    { \
        "translate":"mcm.game.murderers", \
        "color":"gold" \
    }] \
}
execute if score $murderers vars matches 3 as @a[tag=murderer] at @s run tellraw @s { \
    "translate":"mcm.game.murderer3.msg", \
    "color":"gold", \
    "with":[{ \
        "selector":"@p[tag=murderer,distance=0.01..]", \
        "color":"green" \
    }, \
    { \
        "selector":"@p[tag=murderer,distance=0.01..,sort=furthest]", \
        "color":"green" \
    }, \
    { \
        "selector":"@s", \
        "color":"green" \
    }, \
    { \
        "translate":"mcm.game.murderers", \
        "color":"gold" \
    }] \
}

title @a[tag=murderer] title { \
    "translate":"mcm.game.role", \
    "color":"gold", \
    "with":[{ \
        "translate":"mcm.game.murderer", \
        "color":"red" \
    }] \
}

execute if score $murderers vars matches ..1 run title @a[tag=murderer] subtitle { \
    "translate":"mcm.game.murderer.subtitle", \
    "color":"gold" \
}
execute if score $murderers vars matches 2 as @a[tag=murderer] at @s run title @s subtitle { \
    "translate":"mcm.game.murderer2.subtitle", \
    "color":"gold", \
    "with":[{ \
        "selector":"@p[tag=murderer,distance=0.01..]", \
        "color":"green" \
    }] \
}
execute if score $murderers vars matches 3 as @a[tag=murderer] at @s run title @s subtitle { \
    "translate":"mcm.game.murderer3.subtitle", \
    "color":"gold", \
    "with":[{ \
        "selector":"@p[tag=murderer,distance=0.01..]", \
        "color":"green" \
    }, \
    { \
        "selector":"@p[tag=murderer,distance=0.01..,sort=furthest]", \
        "color":"green" \
    }] \
}

scoreboard players reset $murderers vars
schedule function mcm:game/murderertip 6s

# Gunner
tellraw @a[tag=gunner] { \
    "translate":"mcm.game.role", \
    "color":"gold", \
    "with":[{ \
        "translate":"mcm.game.gunner", \
        "color":"dark_aqua" \
    }] \
}
title @a[tag=gunner] title { \
    "translate":"mcm.game.role", \
    "color":"gold", \
    "with":[{ \
        "translate":"mcm.game.gunner", \
        "color":"dark_aqua" \
    }] \
}
title @a[tag=gunner] subtitle { \
    "translate":"mcm.game.gunner.subtitle", \
    "color":"dark_gray" \
}
schedule function mcm:game/gunnertip 6s

# Innocent
tellraw @a[tag=innocent,tag=!gunner] { \
    "translate":"mcm.game.role", \
    "color":"gold", \
    "with":[{ \
        "translate":"mcm.game.innocent", \
        "color":"light_purple" \
    }] \
}
title @a[tag=innocent,tag=!gunner] title { \
    "translate":"mcm.game.role", \
    "color":"gold", \
    "with":[{ \
        "translate":"mcm.game.innocent", \
        "color":"light_purple" \
    }] \
}
title @a[tag=innocent,tag=!gunner] subtitle { \
    "translate":"mcm.game.innocent.subtitle", \
    "color":"gold" \
}
schedule function mcm:game/innocenttip 6s

#> Give players their kit
clear @a[tag=queued]

execute as @a[tag=murderer] run function mcm:items/loadouts/murderer
execute as @a[tag=gunner] run function mcm:items/give {item:"gun"}
execute as @a[tag=queued] run function mcm:items/give {item:"spyglass"}
execute as @a[tag=queued] run function mcm:items/give {item:"scrap"}

execute as @a[tag=queued] run function mcm:cosmetic/restore

# Tag murderers to give them their first knife recall for free
tag @a[tag=murderer] add free_recall
