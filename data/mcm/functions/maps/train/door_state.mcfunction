#> Execute as door marker as sender at the marker's position
execute as @a[tag=!spectating,limit=1,sort=nearest] run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @a[predicate=mcm:matches_uuid,distance=..1.5] positioned ~ ~ ~-1 run place template mcm:train_door_open ~ ~ ~
execute if entity @a[predicate=mcm:matches_uuid,distance=1.5..2.5] positioned ~ ~ ~-1 run place template mcm:train_door_half_open ~ ~ ~
execute if entity @a[predicate=mcm:matches_uuid,distance=2.5..4] positioned ~ ~ ~-1 run place template mcm:train_door_closed ~ ~ ~
execute if score $trainsound CmdData matches 0 run playsound minecraft:entity.minecart.riding block @a ~ ~ ~ 0.5 0.8