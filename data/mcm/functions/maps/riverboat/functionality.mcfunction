#> Turning wheel
scoreboard players add $timer riverboat 1
scoreboard players operation $timer riverboat %= $two_hundred math
execute if score $timer riverboat matches 0 run place template mcm:riverboat/wheel/1 2096 61 -2007
execute if score $timer riverboat matches 50 run place template mcm:riverboat/wheel/2 2096 61 -2007
execute if score $timer riverboat matches 100 run place template mcm:riverboat/wheel/3 2096 61 -2007
execute if score $timer riverboat matches 150 run place template mcm:riverboat/wheel/4 2096 61 -2007

#> Enable card pickup
execute if score $graceperiod CmdData matches 0 as @e[type=interaction,tag=riverboat_card] run data merge entity @s {response:1b}

#> Item frame rotation
execute as @e[type=item_frame,tag=riverboat_secret] run data merge entity @s {ItemRotation:1b,Fixed:0b}

#> Track players holding cards
execute as @a[advancements={mcm:item_counts/card1=true}] store result score @s card1 run clear @s stick{CustomModelData:1116} 0
execute as @a[advancements={mcm:item_counts/card1=true}] run advancement revoke @s only mcm:item_counts/card1
execute as @a[scores={dropped_card=1..}] store result score @s card1 run clear @s stick{CustomModelData:1116} 0 
execute as @a[advancements={mcm:item_counts/card8=true}] store result score @s card8 run clear @s stick{CustomModelData:1117} 0
execute as @a[advancements={mcm:item_counts/card8=true}] run advancement revoke @s only mcm:item_counts/card8
execute as @a[scores={dropped_card=1..}] store result score @s card8 run clear @s stick{CustomModelData:1117} 0 
execute as @a[scores={dropped_card=1..}] run scoreboard players reset @s dropped_card

#> Card table interactions (Ace)
execute as @a[tag=queued,tag=!empty_hand] unless data entity @s SelectedItem run tag @s add empty_hand
execute as @a[tag=queued,tag=!hold_card1,nbt={SelectedItem:{id:"minecraft:stick", Count:1b, tag:{CustomModelData:1116}}}] run tag @s add hold_card1
execute as @a[tag=hold_card1,advancements={mcm:map_functions/riverboat_card_table=true}] run function mcm:maps/riverboat/add_card
#> Card table interactions (8)
execute as @a[tag=queued,tag=!hold_card,nbt={SelectedItem:{id:"minecraft:stick", Count:1b, tag:{CustomModelData:1117}}}] run tag @s add hold_card2
execute as @a[tag=hold_card2,advancements={mcm:map_functions/riverboat_card_table=true}] run function mcm:maps/riverboat/add_card
#> Card table interactions (remove a card)
execute as @a[tag=queued,tag=empty_hand] if data entity @s SelectedItem run tag @s remove empty_hand
execute as @a[tag=empty_hand,advancements={mcm:map_functions/riverboat_card_table=true}] run function mcm:maps/riverboat/remove_card
#> Revoke advancement
execute as @a[advancements={mcm:map_functions/riverboat_card_table=true}] run advancement revoke @s only mcm:map_functions/riverboat_card_table
#> Check the card combination
execute as @a[tag=hold_card1] unless data entity @s SelectedItem{id:"minecraft:stick", Count:1b, tag:{CustomModelData:1116}} run tag @s remove hold_card1
execute as @a[tag=hold_card2] unless data entity @s SelectedItem{id:"minecraft:stick", Count:1b, tag:{CustomModelData:1117}} run tag @s remove hold_card2
execute if score $cards riverboat matches 5 run function mcm:maps/riverboat/check_card_table

#> Boat horn
execute as @a[predicate=mcm:bounding_boxes/riverboat_secret, advancements={mcm:map_functions/riverboat_secret=true}] if score $hornPulled riverboat matches 0 positioned 2019 83 -2001 run playsound minecraft:item.goat_horn.sound.6 block @a[tag=queued] ~ ~ ~ 3 1
execute as @a[predicate=mcm:bounding_boxes/riverboat_secret, advancements={mcm:map_functions/riverboat_secret=true}] if score $hornPulled riverboat matches 0 positioned 2019 83 -2001 run scoreboard players set $hornPulled riverboat 1
execute as @a[predicate=mcm:bounding_boxes/riverboat_secret, advancements={mcm:map_functions/riverboat_secret=true,mcm:secrets/riverboat/riverboat=false}] run advancement grant @s only mcm:secrets/riverboat/riverboat
execute as @a[predicate=mcm:bounding_boxes/riverboat_secret, advancements={mcm:map_functions/riverboat_secret=true}] run advancement revoke @s only mcm:map_functions/riverboat_secret
execute if score $timer riverboat matches 0 run scoreboard players set $hornPulled riverboat 0

#> Kill players in the waterwheel
execute as @a[tag=queued,tag=!spectating,predicate=mcm:bounding_boxes/riverboat_wheel_kill] at @s if score $graceperiod CmdData matches 0 run function mcm:game/playerdeath

#> Kill out of bounds players (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/riverboat] at @s if score $graceperiod CmdData matches 0 run playsound minecraft:entity.evoker_fangs.attack block @a ~ ~ ~ 1 1 0
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/riverboat] at @s if score $graceperiod CmdData matches 0 run tellraw @s {"text":"You were killed by the river shark!","color":"red"}
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/riverboat] at @s if score $graceperiod CmdData matches 0 run function mcm:game/playerdeath

#> Keep spectators inbounds
execute as @a[tag=spectating,predicate=!mcm:bounding_boxes/riverboat] at @s if score $selectedMap CmdData matches 6 unless predicate mcm:bounding_boxes/riverboat run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating,predicate=!mcm:bounding_boxes/riverboat] at @s if score $selectedMap CmdData matches 6 unless predicate mcm:bounding_boxes/riverboat run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0

#> Don't kill people in grace period
execute as @a[tag=queued,predicate=!mcm:bounding_boxes/riverboat,tag=!spectating] at @s if score $graceperiod CmdData matches 1.. run tp @s @e[tag=PlayerSpawn,limit=1,sort=nearest]
execute as @a[tag=queued,predicate=mcm:bounding_boxes/riverboat_wheel_kill,tag=!spectating] at @s if score $graceperiod CmdData matches 1.. run tp @s @e[tag=PlayerSpawn,limit=1,sort=nearest]
