# Handle queueing and de-queueing players
execute as @a[nbt={RootVehicle:{Entity:{Tags:["queue_chair"]}}},tag=!queued,tag=!autoqueue,sort=random] run function mcm:lobby/queueing/try_queue
execute as @a[predicate=!mcm:bounding_boxes/queue_area,tag=queued,tag=!autoqueue] run function mcm:lobby/queueing/dequeue

# Queue any auto-queued players who clicked their ticket before the queueing period started
execute as @a[scores={deferred_queue=1},sort=random] run function mcm:lobby/queueing/try_queue

#> Make sure no one died in lobby for some reason (cough blocky)
scoreboard players reset @a dead

#> Store the current queued players
# TODO change to @a when we don't need armor stands to test anymore
execute store result score $queued CmdData if entity @e[tag=queued]

execute if score $start CmdData matches 0 run advancement revoke @a[advancements={mcm:lobby/start=true}] only mcm:lobby/start
execute if score $queued CmdData matches 3.. if score $autostart GameRules matches 1.. run scoreboard players set $start CmdData 1
execute if score $start CmdData matches 1.. run function mcm:lobby/start