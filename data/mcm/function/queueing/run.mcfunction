execute store result score $max_players vars run data get storage mcm:game_state state.rules.max_players
execute store result score $min_players vars run data get storage mcm:game_state state.rules.min_players
execute store result score $autostart vars run data get storage mcm:game_state state.rules.auto_start
execute store result score $queued_players vars if entity @a[tag=queued]

# Handle queueing and de-queueing players
execute as @e[tag=autoqueue,tag=!deferred_queue] run tag @s add deferred_queue
execute as @a[tag=deferred_queue,sort=random] if score $max_players vars >= $queued_players vars run function mcm:queueing/queue
execute as @a[tag=queued,tag=!autoqueue,predicate=!mcm:bounding_boxes/queue_area] run function mcm:queueing/dequeue
execute as @a[tag=deferred_queue,tag=!autoqueue,predicate=!mcm:bounding_boxes/queue_area] run tag @s remove deferred_queue

# If autostart is enabled, start the countdown if there's enough players
# (normal start is triggered by clicking the usher which runs start_countdown if the right conditions are met)
execute if score $queued_players vars >= $min_players vars if score $autostart vars matches 1 run scoreboard players set $countdown_active vars 1

#TODO (maybe) bossbar that shows either countdown or queued players?

execute if score $countdown_active vars matches 1 unless score $start_countdown timers matches -1.. run function mcm:queueing/start_countdown
execute if score $countdown_active vars matches 1 if score $start_countdown timers matches ..0 run function mcm:queueing/end

# Check for too many players logging out/dequeueing while the game is starting
execute if score $countdown_active vars matches 1 if score $queued_players vars < $min_players vars run function mcm:queueing/restart

scoreboard players reset $max_players vars
scoreboard players reset $min_players vars
scoreboard players reset $autostart vars
