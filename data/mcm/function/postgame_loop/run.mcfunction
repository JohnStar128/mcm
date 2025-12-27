#> Functionality
$function mcm:maps/$(selected_map)/run

#> Bounds check and tp players back inbounds
$execute as @a[tag=spectator] unless predicate mcm:map_bounds/$(selected_map)/bounds run tp @s @e[type=marker,tag=spectator_spawn,limit=1]
$execute as @a[tag=queued] unless predicate mcm:map_bounds/$(selected_map)/bounds at @s run tp @s @e[type=marker,tag=player_spawn,sort=random,limit=1]

#> End of postgame
execute if score $postgame timers matches 0 run function mcm:postgame_loop/end with storage mcm:game_state state
