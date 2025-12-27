#> Controls the stuff in the test range portion of the lobby

#> Activate the test range if someone just entered
execute if score $test_range_active vars matches 0 run function mcm:lobby/test_range/activate

#> Summon target if none exist
execute unless entity @e[type=armor_stand,tag=test_range_target] as @e[type=marker,tag=test_range_target_spawn,sort=random,limit=1] run tag @s add active_target_spawn
execute at @e[type=marker,tag=active_target_spawn] run summon husk ~ ~ ~ { \
    Tags:["test_range_entity","test_range_target"], \
    NoAI:1b, \
    Silent:1b, \
    PersistenceRequired:1b \
}
effect give @e[type=husk,tag=test_range_target] invisibility infinite 100 true
effect give @e[type=husk,tag=test_range_target] resistance infinite 100 true
execute at @e[type=marker,tag=active_target_spawn] run summon armor_stand ~ ~ ~ { \
    Tags:["test_range_entity","test_range_target"], \
    ShowArms:1b, \
    NoBasePlate:1b, \
    DisabledSlots:4144896, \
    equipment:{ \
        head:{ \
            id:"target" \
        } \
    } \
}
execute as @e[type=marker,tag=active_target_spawn] run tag @s remove active_target_spawn

# tracker
execute as @s[predicate=mcm:items/hold_tracker] positioned as @e[type=armor_stand,tag=test_range_target,limit=1,sort=nearest] run function mcm:items/use/player_tracker

#> Return to main lobby
execute as @a[predicate=mcm:map_bounds/lobby/test_range_grate,tag=!came_from_grate] run tp @s -25.5 1 79.5 90 0
execute as @a[predicate=mcm:map_bounds/lobby/test_range_grate,tag=came_from_grate] run tp @s -17 1 64 90 45

#> Tag players in the test range
tag @s add test_range
