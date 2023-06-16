#> Runs on each display to update its position

scoreboard players operation $tempuuid playerUUID = @s targetUUID

tp @s ~ ~ ~ facing entity @e[type=marker,tag=airship_teleport_beacon,predicate=mcm:matches_uuid,limit=1]
