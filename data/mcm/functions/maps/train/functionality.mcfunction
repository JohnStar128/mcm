#> Doors
scoreboard players add $trainsound CmdData 1
execute if score $trainsound CmdData matches 35 run scoreboard players set $trainsound CmdData 0
execute as @e[type=marker,tag=train_door] at @s if entity @a[distance=..4] run function mcm:maps/train/door_state

#> Secret
scoreboard players set $seated_players CmdData 0
execute as @e[type=horse,tag=dinner_seat] on passengers run scoreboard players add $seated_players CmdData 1
execute if score $seated_players CmdData matches 2 run function mcm:maps/train/dinner
execute unless score $seated_players CmdData matches 2 run scoreboard players set $dinner_timer CmdData 600
execute unless score $seated_players CmdData matches 2 run scoreboard players set $diners CmdData 0
execute unless score $seated_players CmdData matches 2 as @e[type=interaction,tag=dinner_plate] run data merge entity @s {interaction:{player:[0,0,0,0],timestamp:0}}

#> Don't let the seats walk away
execute positioned 1845 112.1 3003 as @e[type=horse,sort=nearest,limit=1] run tp @s ~ ~ ~
execute positioned 1839 112.1 3003 as @e[type=horse,sort=nearest,limit=1] run tp @s ~ ~ ~

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 8 unless predicate mcm:bounding_boxes/train_spectate run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 8 unless predicate mcm:bounding_boxes/train_spectate run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0

#> Teleport players out of bounds back inbounds during grace period
execute as @a[tag=queued,predicate=!mcm:bounding_boxes/train,tag=!spectating] at @s if score $selectedMap CmdData matches 8 if score $graceperiod CmdData matches 1.. run tp @s @e[tag=PlayerSpawn,limit=1,sort=nearest]

#> Kill players that jump off train after grace period
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/train] at @s if score $selectedMap CmdData matches 8 if score $graceperiod CmdData matches 0 run tellraw @s {"text":"You fell off the train!","color":"red"}
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/train] at @s if score $selectedMap CmdData matches 8 if score $graceperiod CmdData matches 0 run function mcm:game/playerdeath

#> Bell sounds
execute if score $trainsound CmdData matches 1 run playsound minecraft:block.note_block.chime record @a 1987 118 3000 1 0.1