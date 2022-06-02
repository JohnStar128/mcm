#> Entity collision detection. When the ray collides with an entity hitbox, run kill commands and whatnot
scoreboard players reset @s gunclick
tag @s add shotGun
execute as @e[dx=0,tag=!shotGun] positioned ~-0.77 ~-0.77 ~-0.77 if entity @s[dx=0] run function mcm:game/items/gunhit
#> Raycasting
execute positioned ^ ^ ^1 if block ~ ~ ~ air run function mcm:game/loops/gunray
execute positioned ^ ^ ^1 unless block ~ ~ ~ air run tag @s remove shotGun
execute positioned ^ ^ ^1 unless block ~ ~ ~ air run scoreboard players reset @s gunclick

#> Test particles, to be replaced with actual cosmetics eventually
particle minecraft:crit ~ ~ ~ 0 0 0 0 1