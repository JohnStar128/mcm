#> Summon test range entities and activate state
execute positioned 23 1 1 run summon marker ~ ~ ~ {Tags:["test_range_entity","test_range_target_spawn"]}
execute positioned 23 1 -14 run summon marker ~ ~ ~ {Tags:["test_range_entity","test_range_target_spawn"]}
execute positioned 34 1 -11 run summon marker ~ ~ ~ {Tags:["test_range_entity","test_range_target_spawn"]}
execute positioned 51 1 -20 run summon marker ~ ~ ~ {Tags:["test_range_entity","test_range_target_spawn"]}
execute positioned 52 1 -8 run summon marker ~ ~ ~ {Tags:["test_range_entity","test_range_target_spawn"]}
execute positioned 38 1 -6 run summon marker ~ ~ ~ {Tags:["test_range_entity","test_range_target_spawn"]}

#TODO: Add scrap to this
function mcm:props/summon {map:"test_range"}
execute as @e[type=interaction,tag=barrier,tag=interactable] on passengers run data modify entity @s data.fn set value "mcm:items/loadouts/lobby"
execute as @e[type=item_display,tag=barrier,tag=wall_equip] run data modify entity @s item_display set value "none"
tag @e[type=item_display,tag=wall_equip,predicate=mcm:map_bounds/lobby/test_range] add test_range_entity
tag @e[type=interaction,tag=interactable,predicate=mcm:map_bounds/lobby/test_range] add test_range_entity

execute positioned 34.0 1 -17 run summon text_display ~ ~ ~ { \
    Tags:["test_range_entity","test_range_text_back"], \
    alignment:"center", \
    text:{ \
        translate:"mcm.lobby.test_range.back", \
        color:"gold", \
        bold:false, \
        italic:false \
    } \
}
execute positioned 38.0 3 -17 run summon text_display ~ ~ ~ { \
    Tags:["test_range_entity","test_range_text_select"], \
    alignment:"center", \
    text:{ \
        translate:"mcm.lobby.test_range.select_item", \
        color:"gold", \
        bold:false, \
        italic:false \
    } \
}

scoreboard players set $test_range_active vars 1
