#> Remove players who joined for pregame but relogged and didn't get a role
tag @a[tag=queued,tag=!innocent,tag=!murderer] add spectator
team join nametags @a[tag=queued,tag=!innocent,tag=!murderer]
execute as @a[tag=queued,tag=!innocent,tag=!murderer] run gamemode spectator

#> Functionality
$function mcm:maps/$(selected_map)/run

#TODO MAYBE: in-game rebalancing for scrap spawning based on who's still alive

#> Game statistics
scoreboard players add @a[tag=queued,tag=!spectator] time_alive 1

#> Murderers and people who dropped their gun can't pick up guns anymore
execute as @e[type=item] if items entity @s contents *[custom_data~{gun:1b}] at @s run data modify entity @s Owner set from entity @a[tag=innocent,tag=!spectator,tag=!gunner,tag=!shot_innocent,limit=1,sort=nearest] UUID
execute as @e[type=item] if items entity @s contents *[custom_data~{gun:1b}] unless entity @a[tag=innocent,tag=!spectator,tag=!gunner,tag=!shot_innocent] run data merge entity @s {PickupDelay:-1s,Age:32768}
execute as @e[type=item] if items entity @s contents *[custom_data~{gun:1b}] if entity @a[tag=innocent,tag=!spectator,tag=!gunner,tag=!shot_innocent] run data merge entity @s {PickupDelay:0s,Age:32768}

#> Make sure items can't be destroyed by lightning or fire (unless Destroy Guns is on)
execute store result score $temp vars run data get storage mcm:game_state state.rules.destroy_guns
execute if score $temp vars matches 1 as @e[type=item] unless items entity @s contents *[custom_data~{gun:1b}] run data merge entity @s {Fire:-1s,Invulnerable:1b}
execute unless score $temp vars matches 1 as @e[type=item] run data merge entity @s {Fire:-1s,Invulnerable:1b}
scoreboard players reset $temp vars

#> Player tracker is the only item that needs checking in the main loop
execute as @a[tag=murderer,predicate=mcm:items/hold_tracker] at @s positioned as @a[tag=innocent,tag=!spectator,limit=1,sort=nearest] run function mcm:items/use/player_tracker

#> Scrap spawning
execute if score $scrap_spawner timers matches 0 run function mcm:game_loop/scrap/scrap with storage mcm:game_state state
# Tag all items as "key items" to remove them at the end
$execute as @e[type=item,predicate=mcm:map_bounds/$(selected_map)/bounds] run tag @s add key_item

#> Sounds
execute if score $sound timers matches 1 as @e[type=marker,tag=sound_marker,limit=1,sort=random] at @s run function mcm:game_loop/sound with entity @s data

#> Innocents lose murderer items if they somehow pick them up and vice-versa (failsafe)
clear @a[tag=innocent] *[custom_data~{murderer:1b}]
clear @a[tag=murderer] *[custom_data~{gun:1b}]

#> Bounds check and kill players/tp spectators back inbounds
$execute as @a[tag=spectator] unless predicate mcm:map_bounds/$(selected_map)/bounds run tp @s @e[type=marker,tag=spectator_spawn,limit=1]
$execute as @a[tag=queued] unless predicate mcm:map_bounds/$(selected_map)/bounds at @s run function mcm:player_state/death with storage mcm:maps list[{name:"$(selected_map)"}].oob_message

#> Timer/bossbar
scoreboard players operation $temp vars = $game_timer timers
scoreboard players operation $temp vars %= $twenty math
execute unless score $temp vars matches 0 run function mcm:game_state/update_bossbar
scoreboard players reset $temp vars

#> Game win conditions
# All innocents dead (or everyone dead same tick)
execute unless entity @a[tag=queued,tag=innocent,tag=!spectator] run function mcm:game_loop/end {winner:1}
# All murderers dead
execute unless entity @a[tag=queued,tag=murderer,tag=!spectator] unless data storage mcm:game_state state.game_over run function mcm:game_loop/end {winner:0}
# Time's up
execute if score $game_timer timers matches ..0 unless data storage mcm:game_state state.game_over run function mcm:game_loop/end {winner:0}
data remove storage mcm:game_state state.game_over
