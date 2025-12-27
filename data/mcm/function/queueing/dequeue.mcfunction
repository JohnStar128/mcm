#> Dequeue when a player leaves the theater
scoreboard players remove $queued_players vars 1

tellraw @a { \
        "translate":"mcm.lobby.dequeued", \
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
                } \
        ] \
}

# Give their hat back
function mcm:cosmetic/restore

tag @s remove queued
