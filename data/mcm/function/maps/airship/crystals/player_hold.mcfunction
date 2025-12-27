#> executed as a player holding an amethyst shard
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute anchored eyes run tp @e[type=armor_stand,tag=tp_beacon_display_mount,predicate=mcm:matches_uuid] ^ ^ ^
