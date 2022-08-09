#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/cyberpunk] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=random]
