#> Chimney levitation
execute as @a[predicate=mcm:bounding_boxes/vineyardchimney] at @s run effect give @s minecraft:levitation 1 26 true

#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/vineyard] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=random]

#> Make sure Lance stays a baby turtle
execute positioned 2000 100 2000 as @e[type=turtle,limit=1,sort=nearest] run data merge entity @s {Age:-2147483648}