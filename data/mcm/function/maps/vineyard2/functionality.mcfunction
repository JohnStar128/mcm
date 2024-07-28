#> Chimney levitation
execute as @a[predicate=mcm:bounding_boxes/vineyardchimney2] at @s run effect give @s minecraft:levitation 1 26 true

#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/vineyard2] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=random]

execute as @a[scores={drankPotion=1}] run scoreboard players set $event_type temp 1
execute as @a[scores={drankPotion=1}] run function mcm:game/summary/add_event {translate:"mcm.game.events.vineyard_drank_potion",color:"green"}
execute as @a[scores={drankPotion=1}] run scoreboard players reset @s drankPotion

#> Secret stuff
execute as @e[type=item] if items entity @s contents bone_meal run item modify entity @s contents mcm:vineyard_secret
#execute as @a[tag=queued,tag=!spectating,nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run item modify entity @s weapon.mainhand mcm:vineyard_secret
execute as @a[tag=queued,scores={vineyard_secret=1}] at @s run loot spawn ~ ~ ~ loot mcm:grapes
execute as @a[tag=queued,scores={vineyard_secret=1}] run scoreboard players set $event_type temp 1
execute as @a[tag=queued,scores={vineyard_secret=1}] run function mcm:game/summary/add_event {translate:"mcm.game.events.vineyard_used_fertilizer", color: "green"}
execute as @a[tag=queued,scores={vineyard_secret=1}] run scoreboard players add @s vineyard_secret 1
execute positioned 1690 75 2059 as @a[scores={vineyard_secret=2},sort=nearest,limit=1] unless data block ~ ~ ~ Items[] run scoreboard players set $event_type temp 1
execute positioned 1690 75 2059 as @a[scores={vineyard_secret=2},sort=nearest,limit=1] unless data block ~ ~ ~ Items[] run function mcm:game/summary/add_event {translate:"mcm.game.events.vineyard_brew_wine", color: "green"}
execute positioned 1690 75 2059 as @a[scores={vineyard_secret=2},sort=nearest,limit=1] unless data block ~ ~ ~ Items[] run scoreboard players add @s vineyard_secret 1
execute if entity @a[scores={vineyard_secret=3}] if data block 1754 84 2091 Items[] run place template mcm:vineyard_secret_2_open 1677 72 2070
execute as @a[scores={vineyard_secret=3}] if data block 1754 84 2091 Items[] run scoreboard players add @s vineyard_secret 1
execute positioned 1754 84 2091 as @a[scores={vineyard_secret=4},sort=nearest,limit=1] run scoreboard players set $event_type temp 1
execute positioned 1754 84 2091 as @a[scores={vineyard_secret=4},sort=nearest,limit=1] run function mcm:game/summary/add_event {translate:"mcm.game.events.vineyard_opened_speakeasy", color: "green"}
execute if entity @a[scores={vineyard_secret=4}] run scoreboard players set @a[tag=queued] vineyard_secret 0

execute if block 1700 74 2080 polished_blackstone_button[powered=true] as @a[predicate=mcm:bounding_boxes/vineyard2_secret, advancements={mcm:secrets/vineyard/vineyard=false}] run scoreboard players set $event_type temp 1
execute if block 1700 74 2080 polished_blackstone_button[powered=true] as @a[predicate=mcm:bounding_boxes/vineyard2_secret, advancements={mcm:secrets/vineyard/vineyard=false}] run function mcm:game/summary/add_event {translate:"mcm.game.events.vineyard_speakeasy_secret", color: "green"}
execute if block 1700 74 2080 polished_blackstone_button[powered=true] as @a[predicate=mcm:bounding_boxes/vineyard2_secret, advancements={mcm:secrets/vineyard/vineyard=false}] run advancement grant @s only mcm:secrets/vineyard/vineyard
execute if score $timer vineyard_secret matches ..0 if block 1700 74 2080 polished_blackstone_button[powered=true] as @a[predicate=mcm:bounding_boxes/vineyard2_secret] positioned 1691 76 2082 run stopsound @a block
execute if score $timer vineyard_secret matches ..0 if block 1700 74 2080 polished_blackstone_button[powered=true] as @a[predicate=mcm:bounding_boxes/vineyard2_secret] positioned 1691 76 2082 run playsound minecraft:credits block @s ~ ~ ~ 0.7 0.6
execute if score $timer vineyard_secret matches ..0 if block 1700 74 2080 polished_blackstone_button[powered=true] run scoreboard players set $timer vineyard_secret 100
scoreboard players remove $timer vineyard_secret 1

#> allow key pickup after grace period
execute if score $graceperiod CmdData matches 0 as @e[type=interaction,tag=vineyard_key] run data merge entity @s {response:1b}

#> move truck
execute as @a[advancements={mcm:map_functions/vineyard_truck=true}] run tag @s add vineyard_truck
execute as @a[advancements={mcm:map_functions/vineyard_truck=true}] run scoreboard players set $event_type temp 1
execute as @a[advancements={mcm:map_functions/vineyard_truck=true}] run function mcm:game/summary/add_event {translate:"mcm.game.events.vineyard_truck", color: "green"}
execute as @a[advancements={mcm:map_functions/vineyard_truck=true}] run advancement revoke @s only mcm:map_functions/vineyard_truck
execute if entity @a[tag=vineyard_truck] run scoreboard players add $truck_timer vineyard_secret 1
execute if score $truck_timer vineyard_secret matches 1 as @a[tag=vineyard_truck] positioned 1705 87 2036 run function mcm:maps/vineyard2/truck
execute if score $truck_timer vineyard_secret matches 9 as @a[tag=vineyard_truck] positioned 1705 87 2037 run function mcm:maps/vineyard2/truck
execute if score $truck_timer vineyard_secret matches 17 as @a[tag=vineyard_truck] positioned 1705 87 2038 run function mcm:maps/vineyard2/truck
execute if score $truck_timer vineyard_secret matches 17 as @a[tag=vineyard_truck] run tag @s remove vineyard_truck

#> Make sure Lance stays a baby turtle
execute as @e[type=turtle,tag=lance] run data merge entity @s {Age:-2147483648}
execute at @e[type=turtle,tag=lance] as @a[distance=..3,advancements={mcm:secrets/vineyard/lance=false}] run scoreboard players set $event_type temp 1
execute at @e[type=turtle,tag=lance] as @a[distance=..3,advancements={mcm:secrets/vineyard/lance=false}] run function mcm:game/summary/add_event {translate:"mcm.game.events.vineyard_lance", color: "green"}
execute at @e[type=turtle,tag=lance] as @a[distance=..3,advancements={mcm:secrets/vineyard/lance=false}] run advancement grant @s only mcm:secrets/vineyard/lance

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 3 unless predicate mcm:bounding_boxes/vineyard2 run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 3 unless predicate mcm:bounding_boxes/vineyard2 run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0
