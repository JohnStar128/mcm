
scoreboard players set $event_type temp 1

execute if entity @s[tag=free_knife] run tag @s add temp_free_knife
$execute if entity @s[tag=temp_free_knife] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{knife_retrieve:1}] run function mcm:items/give_mainhand {item:$(retrieve)}
$execute if entity @s[tag=temp_free_knife] if items entity @s weapon.offhand carrot_on_a_stick[custom_data~{knife_retrieve:1}] run function mcm:items/give_offhand {item:$(retrieve)}
execute if entity @s[tag=temp_free_knife] as @e[type=arrow,tag=knife] run function mcm:game/items/knife/kill_owned_entity
execute if entity @s[tag=temp_free_knife] as @e[type=item] if items entity @s contents snowball[custom_data~{knife:1b}] run function mcm:game/items/knife/kill_owned_entity
execute if entity @s[tag=temp_free_knife] run function mcm:game/summary/add_event {translate:"mcm.game.events.recalled_knife",color:"green"}

tag @s[tag=temp_free_knife] remove free_knife
execute at @s[tag=temp_free_knife] run summon lightning_bolt
execute if entity @s[tag=temp_free_knife] run return run tag @s remove temp_free_knife

# Scrap count
execute store result score scrap temp run clear @s netherite_scrap 0
$execute if score scrap temp matches $(cost).. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{knife_retrieve:1}] run function mcm:items/give_mainhand {item:$(retrieve)}
$execute if score scrap temp matches $(cost).. if items entity @s weapon.offhand carrot_on_a_stick[custom_data~{knife_retrieve:1}] run function mcm:items/give_offhand {item:$(retrieve)}
$execute if score scrap temp matches $(cost).. as @e[type=arrow,tag=knife] run function mcm:game/items/knife/kill_owned_entity
$execute if score scrap temp matches $(cost).. as @e[type=item] if items entity @s contents snowball[custom_data~{knife:1b}] run function mcm:game/items/knife/kill_owned_entity
$execute if score scrap temp matches $(cost).. run function mcm:game/summary/add_event {translate:"mcm.game.events.recalled_knife",color:"green"}
$execute if score scrap temp matches $(cost).. at @s run summon lightning_bolt
$execute if score scrap temp matches $(cost).. run clear @s netherite_scrap $(cost)

execute unless score @s throw_delay matches 1.. run scoreboard players set @s throw_delay 20

execute store result score scrap temp run clear @s netherite_scrap 0

execute unless score scrap temp matches 1.. run function mcm:items/retrieve/all_loadout_retrieves
