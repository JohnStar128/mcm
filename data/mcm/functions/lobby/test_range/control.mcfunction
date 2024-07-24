#> Controls the stuff in the test range portion of the lobby

#> Activate the test range if someone just entered
execute if score $active test_range matches 0 run function mcm:lobby/test_range/activate

effect clear @a[predicate=mcm:bounding_boxes/test_range] weakness
#tag @a[predicate=mcm:bounding_boxes/test_range,nbt={SelectedItem:{id:"minecraft:snowball",Count:1b}}] add HoldKnife

#> Summon target if none exist
execute unless entity @e[type=armor_stand,tag=test_range_target] as @e[type=marker,tag=test_range_target_spawn,sort=random,limit=1] run tag @s add active_target_spawn
execute at @e[type=marker,tag=active_target_spawn] run summon husk ~ ~ ~ {Tags:["test_range_entity","test_range_target"],NoAI:1b,Silent:1b,PersistenceRequired:1b}
effect give @e[type=husk,tag=test_range_target] invisibility infinite 100 true
effect give @e[type=husk,tag=test_range_target] resistance infinite 100 true
execute at @e[type=marker,tag=active_target_spawn] run summon armor_stand ~ ~ ~ {Tags:["test_range_entity","test_range_target"],ShowArms:1b,NoBasePlate:1b,DisabledSlots:4144896,ArmorItems:[{},{},{},{id:"target",Count:1}]}
execute as @e[type=marker,tag=active_target_spawn] run tag @s remove active_target_spawn

#> Target was hit
execute if entity @a[advancements={mcm:hit_detection/test_range_hit=true}] at @e[type=husk,tag=test_range_target] run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,components:{fireworks:{flight_duration:0,explosions:[{shape:"small_ball",has_trail:false,has_twinkle:false,colors:[I;4312372],fade_colors:[I;14602026]}]}}}}
execute if entity @a[advancements={mcm:hit_detection/test_range_hit=true}] run kill @e[type=armor_stand,tag=test_range_target]
execute if entity @a[advancements={mcm:hit_detection/test_range_hit=true}] run kill @e[type=husk,tag=test_range_target]
execute as @a[advancements={mcm:hit_detection/test_range_hit=true}] run advancement revoke @s only mcm:hit_detection/test_range_hit

#> Test range items
execute as @e[type=interaction,tag=test_range_clear_interaction] if data entity @s interaction on target run function mcm:lobby/give_lobby_items
execute as @e[type=interaction,tag=test_range_interaction] if data entity @s interaction at @s on target run function mcm:lobby/test_range/give with entity @e[type=item_display,limit=1,sort=nearest] item.components.minecraft:custom_data
execute as @e[type=interaction,tag=test_range_entity] if data entity @s interaction run data remove entity @s interaction

# tracker
execute as @a[predicate=mcm:bounding_boxes/test_range,predicate=mcm:items/hold_tracker] at @s positioned as @e[type=armor_stand,tag=test_range_target,limit=1,sort=nearest] run function mcm:game/items/player_tracker/find_player
# teleporter
execute as @a[predicate=mcm:bounding_boxes/test_range,scores={carrot=1..}] if items entity @s weapon.* carrot_on_a_stick[custom_data~{teleporter:1b}] at @s run function mcm:lobby/test_range/tp_target
# adrenaline
execute as @a[predicate=mcm:bounding_boxes/test_range,scores={carrot=1..}] if items entity @s weapon.* carrot_on_a_stick[custom_data~{adrenaline:1b}] at @s run effect give @s speed 5 3 true
execute as @a[predicate=mcm:bounding_boxes/test_range,scores={carrot=1..}] if items entity @s weapon.* carrot_on_a_stick[custom_data~{adrenaline:1b}] at @s run effect give @s jump_boost 5 2 true
execute as @a[predicate=mcm:bounding_boxes/test_range,scores={carrot=1..}] if items entity @s weapon.* carrot_on_a_stick[custom_data~{adrenaline:1b}] at @s run playsound minecraft:entity.generic.drink block @a ~ ~ ~ 1 1 0

execute as @a[predicate=mcm:bounding_boxes/test_range,scores={carrot=1..}] if items entity @s weapon.mainhand carrot_on_a_stick run item replace entity @s weapon.mainhand with air
execute as @a[predicate=mcm:bounding_boxes/test_range,scores={carrot=1..}] if items entity @s weapon.offhand carrot_on_a_stick run item replace entity @s weapon.offhand with air
execute as @a[predicate=mcm:bounding_boxes/test_range,scores={carrot=1..}] at @s run function mcm:util/reset_carrot_on_stick

#> Return to main lobby
execute as @a[predicate=mcm:bounding_boxes/test_range_grate,tag=!came_from_grate] run tp @s -25.5 1 79.5 90 0
execute as @a[predicate=mcm:bounding_boxes/test_range_grate,tag=came_from_grate] run tp @s -17 1 64 90 45

#> Tag players in the test range
tag @s add test_range

function mcm:items/set_loadout_defaults