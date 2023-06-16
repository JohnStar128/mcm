#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/cabin] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=random]

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 9 unless predicate mcm:bounding_boxes/cabin run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 9 unless predicate mcm:bounding_boxes/cabin run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
