#> RNG check
execute store result score $scrap_chance vars run data get storage mcm:game_state state.rules.scrap_chance 100
execute store result score $scrap_rng vars run function mcm:util/next_prng
scoreboard players operation $scrap_rng vars %= $one_hundred math

execute if score $scrap_chance vars < $scrap_rng vars run return fail

execute as @e[type=marker,tag=player_spawn,limit=1,sort=random] run tag @s add scrap_chose


#> Choose random spawn marker, spawn a scrap, spread it a little
execute as @e[type=marker,tag=scrap_chose,limit=1] at @s run function mcm:game_loop/scrap/modify_height
execute as @e[type=marker,tag=scrap_chose,limit=1] at @s run function mcm:game_loop/scrap/spawn_scrap with storage mcm:items scrap
execute as @e[type=marker,tag=scrap_chose,limit=1] at @s run function mcm:game_loop/scrap/spread_scrap with storage mcm:args










#Scrap
#item replace block -1 -2 77 container.0 with netherite_scrap
#data modify block -1 -2 77 Items[0].components set from storage mcm:items scrap.components
#execute at @e[type=marker,tag=scrap_spawn,limit=1,sort=random] run summon item ~ ~0.5 ~ {Tags:["temp_drop"],Item:{id:"stick",count:1b},PickupDelay:0s}
#item replace entity @e[type=item,tag=temp_drop] contents from block -1 -2 77 container.0
#execute as @e[type=item,tag=temp_drop] run tag @s remove temp_drop
