#> Reset test range state after everyone leaves
execute as @e[type=zombie,tag=test_range_entity] at @s run tp @s ~ ~-100 ~
kill @e[tag=test_range_entity]
scoreboard players set $active test_range 0
