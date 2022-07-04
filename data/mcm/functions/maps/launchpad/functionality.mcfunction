#> Teleport from bottom to top
execute if block -982 57 -1099 stone_button[powered=true] run fill -983 54 -1098 -983 54 -1098 redstone_block
execute if block -982 57 -1099 stone_button[powered=true] run fill -982 56 -1100 -981 57 -1100 black_wool
execute as @a[predicate=mcm:bounding_boxes/elevator_bottom] at @s if block -982 57 -1099 stone_button[powered=true] run playsound minecraft:entity.zombie_villager.converted block @s -982 147 -1099 1 1.2 0
execute as @a[predicate=mcm:bounding_boxes/elevator_bottom] at @s if block -982 57 -1099 stone_button[powered=true] run tp @s ~ ~90 ~

#> Teleport from top to bottom
execute as @a[predicate=mcm:bounding_boxes/elevator_top] at @s if block -982 147 -1099 stone_button[powered=true] run fill -982 56 -1100 -981 57 -1100 air
execute as @a[predicate=mcm:bounding_boxes/elevator_top] at @s if block -982 147 -1099 stone_button[powered=true] run fill -983 54 -1098 -983 54 -1098 air
execute as @a[predicate=mcm:bounding_boxes/elevator_top] at @s if block -982 147 -1099 stone_button[powered=true] run playsound minecraft:entity.zombie_villager.converted block @s ~ ~ ~ 1 1.2 0
execute as @a[predicate=mcm:bounding_boxes/elevator_top] at @s if block -982 147 -1099 stone_button[powered=true] run tp @s ~ ~-90 ~

#> Call elevator from top to bottom
execute if block -984 57 -1102 stone_button[powered=true] run fill -982 56 -1100 -981 57 -1100 air
execute if block -984 57 -1102 stone_button[powered=true] run fill -983 54 -1098 -983 54 -1098 air