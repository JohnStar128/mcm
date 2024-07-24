#> Kill items owned by a player leaving the test range
execute store result score $tempuuid playerUUID run data get entity @s Owner[0]
execute if entity @a[predicate=mcm:matches_uuid,tag=test_range] run kill @s
execute unless entity @s run return 1
execute store result score $tempuuid playerUUID run data get entity @s Thrower[0]
execute if entity @a[predicate=mcm:matches_uuid,tag=test_range] run kill @s
