
#> Kill players in the waterwheel
execute as @a[tag=queued,tag=!spectating,predicate=mcm:bounding_boxes/riverboat_wheel_kill] at @s run function mcm:game/playerdeath

#> Kill out of bounds players (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/riverboat] at @s run function mcm:game/playerdeath

#> Keep spectators inbounds
execute as @a[tag=spectating,predicate=!mcm:bounding_boxes/riverboat] at @s if score $selectedMap CmdData matches 6 unless predicate mcm:bounding_boxes/riverboat run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating,predicate=!mcm:bounding_boxes/riverboat] at @s if score $selectedMap CmdData matches 6 unless predicate mcm:bounding_boxes/riverboat run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0