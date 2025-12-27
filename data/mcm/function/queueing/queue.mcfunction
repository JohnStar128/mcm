execute if entity @s[tag=queued] run return fail

# Queue this player
tag @s add queued
tag @s remove deferred_queue
scoreboard players add $queued_players vars 1

# Give them the right items and notify players they've joined
tellraw @a { \
        "translate":"mcm.lobby.queued", \
        "with":[{ \
                "selector":"@s","color":"green" \
        }, \
        { \
                "translate":"mcm.lobby.queued.brackets", \
                "color":"yellow", \
                "with":[{ \
                        "translate":"mcm.lobby.queued.ratio", \
                        "color":"dark_green", \
                        "with":[{ \
                                "score":{"name":"$queued_players","objective":"vars"}, \
                                "color":"green" \
                        }, \
                        { \
                                "score":{"name":"$max_players","objective":"vars"}, \
                                "color":"green" \
                        }] \
                }] \
        }] \
}

scoreboard players reset $temp vars
function mcm:cosmetic/equip with storage mcm:cosmetics list[{model:"3dglasses"}]

# Notify pending players if there's too many people trying to join
# execute if score $queued_players vars = $max_players vars run tellraw @a[tag=deferred_queue] {"translate":"mcm.lobby.sold.out","color":"red"}
