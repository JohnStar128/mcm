#> One-time start function
execute unless data storage mcm:game_state state.current_stage_started run function mcm:pregame_loop/start with storage mcm:game_state state.rules

#> Timer/bossbar
scoreboard players operation $temp vars = $game_timer timers
scoreboard players operation $temp vars %= $twenty math
execute unless score $temp vars matches 0 run function mcm:game_state/update_bossbar
scoreboard players reset $temp vars

#> Functionality
$function mcm:maps/$(selected_map)/run

#> Bounds check and tp players back inbounds
$execute as @a[tag=spectator] unless predicate mcm:map_bounds/$(selected_map)/bounds run tp @s @e[type=marker,tag=spectator_spawn,limit=1]
$execute as @a[tag=queued] unless predicate mcm:map_bounds/$(selected_map)/bounds at @s run tp @s @e[type=marker,tag=player_spawn,sort=random,limit=1]

#> End of pregame
execute if score $pregame timers matches 0 run function mcm:pregame_loop/end

