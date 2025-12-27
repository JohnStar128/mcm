#> Update score - this can cause one crystal to get updated over 3 but oh well doesn't really matter
$scoreboard players set $growth_stage vars $(stage)

#> first stage
execute if score $growth_stage vars matches 1 if block ~1 ~ ~ budding_amethyst run setblock ~ ~ ~ small_amethyst_bud[facing=west]
execute if score $growth_stage vars matches 1 if block ~-1 ~ ~ budding_amethyst run setblock ~ ~ ~ small_amethyst_bud[facing=east]
execute if score $growth_stage vars matches 1 if block ~ ~ ~1 budding_amethyst run setblock ~ ~ ~ small_amethyst_bud[facing=north]
execute if score $growth_stage vars matches 1 if block ~ ~ ~-1 budding_amethyst run setblock ~ ~ ~ small_amethyst_bud[facing=south]

#> second stage
execute if score $growth_stage vars matches 2 if block ~1 ~ ~ budding_amethyst run setblock ~ ~ ~ medium_amethyst_bud[facing=west]
execute if score $growth_stage vars matches 2 if block ~-1 ~ ~ budding_amethyst run setblock ~ ~ ~ medium_amethyst_bud[facing=east]
execute if score $growth_stage vars matches 2 if block ~ ~ ~1 budding_amethyst run setblock ~ ~ ~ medium_amethyst_bud[facing=north]
execute if score $growth_stage vars matches 2 if block ~ ~ ~-1 budding_amethyst run setblock ~ ~ ~ medium_amethyst_bud[facing=south]

#> third stage
execute if score $growth_stage vars matches 3 if block ~1 ~ ~ budding_amethyst run setblock ~ ~ ~ large_amethyst_bud[facing=west]
execute if score $growth_stage vars matches 3 if block ~-1 ~ ~ budding_amethyst run setblock ~ ~ ~ large_amethyst_bud[facing=east]
execute if score $growth_stage vars matches 3 if block ~ ~ ~1 budding_amethyst run setblock ~ ~ ~ large_amethyst_bud[facing=north]
execute if score $growth_stage vars matches 3 if block ~ ~ ~-1 budding_amethyst run setblock ~ ~ ~ large_amethyst_bud[facing=south]

execute if score $growth_stage vars matches 3 run data modify entity @s data merge value {grown:1}
execute store result entity @s data.stage int 1 run scoreboard players add $growth_stage vars 1
scoreboard players reset $growth_stage vars 
