#> Runs on each display to update its position

scoreboard players operation $tempuuid playerUUID = @s playerUUID
tp @s @e[type=armor_stand,predicate=mcm:matches_uuid,limit=1]

scoreboard players operation $tempuuid playerUUID = @s targetUUID
rotate @s facing entity @e[type=marker,tag=airship_teleport_beacon,predicate=mcm:matches_uuid,limit=1]
