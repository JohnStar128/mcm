#> Teleport the target to a new spawn
execute at @e[type=husk,tag=test_range_target] run tag @e[type=marker,tag=test_range_target_spawn,limit=1,sort=nearest] add occupied
execute as @e[type=marker,tag=test_range_target_spawn,tag=!occupied,limit=1,sort=random] run tag @s add new_location
tp @e[type=husk,tag=test_range_target] @e[type=marker,tag=new_location,limit=1]
tp @e[type=armor_stand,tag=test_range_target] @e[type=marker,tag=new_location,limit=1]
execute as @e[type=husk,tag=test_range_target] at @s run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1 1 1
execute as @e[type=husk,tag=test_range_target] at @s run playsound minecraft:block.beacon.deactivate ambient @a ~ ~ ~ 1 2 1 
tag @e[type=marker,tag=test_range_target_spawn] remove occupied
tag @e[type=marker,tag=test_range_target_spawn] remove new_location
