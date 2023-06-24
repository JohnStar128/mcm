#> Needs to be called every tick
#> Kills chairs mounts that don't have entities on them

execute as @e[type=interaction,tag=chair_entity] on passengers on vehicle run tag @s add keep

kill @e[type=interaction,tag=chair_entity,tag=!keep]

tag @e[type=interaction,tag=chair_entity] remove keep

execute as @a on vehicle on passengers run tag @s add still_on

execute as @a[tag=on_chair,tag=!still_on] at @s run tp @s ~ ~1 ~
execute as @a[tag=on_chair,tag=!still_on] run tag @s remove on_chair

tag @a remove still_on