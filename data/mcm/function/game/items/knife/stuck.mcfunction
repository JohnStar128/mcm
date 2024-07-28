execute store result score @s[tag=!processed] playerUUID run data get entity @s Owner[0]
scoreboard players operation $tempuuid playerUUID = @s playerUUID

execute facing entity @a[predicate=mcm:matches_uuid] eyes run tp ^ ^ ^1
scoreboard players reset $tempuuid playerUUID
