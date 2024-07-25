#> Grant secret
execute store result score $tempuuid playerUUID run data get entity @s interaction.player[0]
scoreboard players set $event_type temp 1
execute as @a[predicate=mcm:matches_uuid,advancements={mcm:secrets/canyon/mines=false}] run function mcm:game/summary/add_event {translate:"mcm.game.events.canyon_miner_secret", color:"green"}
execute as @a[predicate=mcm:matches_uuid,advancements={mcm:secrets/canyon/mines=false}] run advancement grant @s only mcm:secrets/canyon/mines
data remove entity @s interaction
