#> called when player stops holding amethyst shard
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute as @e[type=armor_stand,tag=tp_beacon_display_mount,predicate=mcm:matches_uuid] run kill @s
execute as @e[type=item_display,tag=tp_beacon_display,predicate=mcm:matches_uuid] run kill @s
tag @s remove hold_crystal
