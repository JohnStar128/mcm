# Event log
execute if entity @s[tag=queued] run function mcm:summary/add_event {translate:"mcm.game.events.teleporter",color:"green",type:1}

#> Special behavior for the test range
execute if predicate mcm:map_bounds/lobby/test_range run tp @e[type=husk,tag=test_range_target] @e[type=marker,tag=test_range_target_spawn,limit=1,sort=random]
execute if predicate mcm:map_bounds/lobby/test_range run tp @e[type=armor_stand,tag=test_range_target] @e[type=husk,tag=test_range_target,limit=1]
execute if predicate mcm:map_bounds/lobby/test_range at @e[type=husk,tag=test_range_target] run playsound entity.enderman.teleport ambient @a ~ ~ ~ 1 1
execute if predicate mcm:map_bounds/lobby/test_range at @e[type=husk,tag=test_range_target] run playsound block.beacon.deactivate ambient @a ~ ~ ~ 1 2

#> Normal behavior
execute unless predicate mcm:map_bounds/lobby/test_range as @a[tag=queued,tag=innocent,tag=!spectator] run tp @s @e[type=marker,tag=player_spawn,limit=1,sort=random]
execute unless predicate mcm:map_bounds/lobby/test_range as @a[tag=queued] at @s run playsound entity.enderman.teleport ambient @s ~ ~ ~ 1 1 1
execute unless predicate mcm:map_bounds/lobby/test_range as @a[tag=queued] at @s run playsound block.beacon.deactivate ambient @s ~ ~ ~ 1 2 1 

advancement revoke @s only mcm:items/teleporter
