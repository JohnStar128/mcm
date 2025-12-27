#> Target was hit
execute at @e[type=husk,tag=test_range_target] run summon firework_rocket ~ ~1 ~ { \
    FireworksItem:{ \
        id:firework_rocket, \
        Count:1, \
        components:{ \
            fireworks:{ \
                flight_duration:0, \
                explosions:[{ \
                    shape:"small_ball", \
                    has_trail:false, \
                    has_twinkle:false, \
                    colors:[I;4312372], \
                    fade_colors:[I;14602026] \
                }] \
            } \
        } \
    } \
}
kill @e[type=armor_stand,tag=test_range_target]
tp @e[type=husk,tag=test_range_target] ~ -100 ~
kill @e[type=husk,tag=test_range_target]
advancement revoke @s only mcm:hit_detection/test_range_hit
