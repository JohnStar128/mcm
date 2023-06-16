#> Update score - this can cause one crystal to get updated over 3 but oh well doesn't really matter
scoreboard players add @s airship_crystal_growth 1

#> first stage
execute if score @s airship_crystal_growth matches 1 if block ~1 ~ ~ budding_amethyst run setblock ~ ~ ~ small_amethyst_bud[facing=west]
execute if score @s airship_crystal_growth matches 1 if block ~-1 ~ ~ budding_amethyst run setblock ~ ~ ~ small_amethyst_bud[facing=east]
execute if score @s airship_crystal_growth matches 1 if block ~ ~ ~1 budding_amethyst run setblock ~ ~ ~ small_amethyst_bud[facing=north]
execute if score @s airship_crystal_growth matches 1 if block ~ ~ ~-1 budding_amethyst run setblock ~ ~ ~ small_amethyst_bud[facing=south]

#> second stage
execute if score @s airship_crystal_growth matches 2 if block ~1 ~ ~ budding_amethyst run setblock ~ ~ ~ medium_amethyst_bud[facing=west]
execute if score @s airship_crystal_growth matches 2 if block ~-1 ~ ~ budding_amethyst run setblock ~ ~ ~ medium_amethyst_bud[facing=east]
execute if score @s airship_crystal_growth matches 2 if block ~ ~ ~1 budding_amethyst run setblock ~ ~ ~ medium_amethyst_bud[facing=north]
execute if score @s airship_crystal_growth matches 2 if block ~ ~ ~-1 budding_amethyst run setblock ~ ~ ~ medium_amethyst_bud[facing=south]

#> third stage
execute if score @s airship_crystal_growth matches 3 if block ~1 ~ ~ budding_amethyst run setblock ~ ~ ~ large_amethyst_bud[facing=west]
execute if score @s airship_crystal_growth matches 3 if block ~-1 ~ ~ budding_amethyst run setblock ~ ~ ~ large_amethyst_bud[facing=east]
execute if score @s airship_crystal_growth matches 3 if block ~ ~ ~1 budding_amethyst run setblock ~ ~ ~ large_amethyst_bud[facing=north]
execute if score @s airship_crystal_growth matches 3 if block ~ ~ ~-1 budding_amethyst run setblock ~ ~ ~ large_amethyst_bud[facing=south]
