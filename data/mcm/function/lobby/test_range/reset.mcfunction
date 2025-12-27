#> Reset test range state after everyone leaves
execute as @e[type=husk,tag=test_range_entity] at @s run tp @s ~ ~-100 ~
execute as @e[type=interaction,tag=test_range_entity,tag=interactable] run function mcm:util/interactable/remove
kill @e[tag=test_range_entity]
scoreboard players set $test_range_active vars 0
