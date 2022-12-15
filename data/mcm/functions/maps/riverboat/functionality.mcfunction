
#> Boat horn
#execute as @a[predicate=mcm:bounding_boxes/riverboat_secret, advancements={mcm:riverboat_whistle=true}] positioned 2019 83 -2001 run playsound minecraft:item.goat_horn.sound.6 block @a[tag=queued] ~ ~ ~ 3 1

#> Kill players in the waterwheel
execute as @a[tag=queued,tag=!spectating,predicate=mcm:bounding_boxes/riverboat_wheel_kill] at @s if score $graceperiod CmdData matches 0 run function mcm:game/playerdeath

#> Kill out of bounds players (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/riverboat] at @s if score $graceperiod CmdData matches 0 run playsound minecraft:entity.evoker_fangs.attack block @a ~ ~ ~ 1 1 0
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/riverboat] at @s if score $graceperiod CmdData matches 0 run function mcm:game/playerdeath

#> Keep spectators inbounds
execute as @a[tag=spectating,predicate=!mcm:bounding_boxes/riverboat] at @s if score $selectedMap CmdData matches 6 unless predicate mcm:bounding_boxes/riverboat run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating,predicate=!mcm:bounding_boxes/riverboat] at @s if score $selectedMap CmdData matches 6 unless predicate mcm:bounding_boxes/riverboat run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0

#> Don't kill people in grace period
execute as @a[tag=queued,predicate=!mcm:bounding_boxes/riverboat,tag=!spectating] at @s if score $graceperiod CmdData matches 1.. run tp @s @e[tag=PlayerSpawn,limit=1,sort=nearest]
execute as @a[tag=queued,predicate=mcm:bounding_boxes/riverboat_wheel_kill,tag=!spectating] at @s if score $graceperiod CmdData matches 1.. run tp @s @e[tag=PlayerSpawn,limit=1,sort=nearest]