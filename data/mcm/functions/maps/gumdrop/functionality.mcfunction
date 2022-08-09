#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/gumdrop] at @s run tp @s @e[tag=PlayerSpawn,tag=!available,limit=1,sort=random]

#> Speed on path
execute as @a[tag=queued] at @s if block ~ ~-2 ~ stone run effect give @s speed 1 1
execute as @a[tag=queued] at @s if block ~ ~-3 ~ stone run effect give @s speed 1 1
execute as @a[tag=queued] at @s if block ~ ~-4 ~ stone run effect give @s speed 1 1